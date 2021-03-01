/*

*/

// —————— Callbacks y ALS
public OnPlayerConnect(playerid)
{

	// —— Limpieza de variables
	new clean_player[player_info];
	PlayerInfo[playerid] = clean_player;

	new clean_player_temp[temp_player_info];
	PlayerTemp[playerid] = clean_player_temp;

	// —— Limpieza específica
	GetPlayerIp(playerid, PlayerInfo[playerid][pIP], 16);
	GetPlayerName(playerid, PlayerInfo[playerid][pUsername], MAX_PLAYER_NAME);

	// —— Cámara
	for(new i = 0; i < sizeof PublicTD; i++)
		TextDrawShowForPlayer(playerid, PublicTD[i]);
	    
	SpawnPlayer(playerid);
	SetCameraIntro(playerid);
	
	for(new i = 0; i < 20; i++)
	    SendClientMessage(playerid, -1, " ");

	if (VerifyUsername(PlayerInfo[playerid][pUsername]))
	{
		cache_get_value_int(0, "ID", PlayerInfo[playerid][pID]);
		cache_get_value_name(0, "Username", PlayerInfo[playerid][pUsername], MAX_PLAYER_NAME);
		cache_get_value_name(0, "Password", PlayerInfo[playerid][pPassword], 64);
		cache_get_value_int(0, "DBCon", PlayerInfo[playerid][pAutoconection]);
		cache_unset_active();

		if (PlayerInfo[playerid][pAutoconection])
		{
			VerifyAutoConnect(playerid);
			return 1;
		}

		Dialog_Show(playerid, PasswordLogin, 
			DIALOG_STYLE_PASSWORD, 
			"Ingresa tu contraseña", 
			"{"BASE_COLOR"}Usa el siguiente espacio para ingresar tu {"MAIN_COLOR"}contraseña{"BASE_COLOR"}.\n\
			'Salir' te expulsará del servidor.", 
			"Aceptar", 
			"Salir"
		);

		return 1;
	}

	Dialog_Show(playerid, PasswordRegister, 
		DIALOG_STYLE_PASSWORD, 
		"Ingresa una contraseña", 
		"{"BASE_COLOR"}Usa el siguiente espacio para ingresar una {"MAIN_COLOR"}contraseña{"BASE_COLOR"}.\n\
		'Salir' te expulsará del servidor.", 
		"Aceptar", 
		"Salir"
	);

	return 1;
}

// ———————— Diálogos —————— //
Dialog:PasswordLogin(playerid, response, listitem, inputtext[])
{
	if (!response) return Kick(playerid);

	bcrypt_check(inputtext, PlayerInfo[playerid][pPassword], "CheckPassword", "i", playerid);
	return 1;
}

Dialog:PasswordRegister(playerid, response, listitem, inputtext[])
{
	if (!response) return Kick(playerid);

	if (strlen(inputtext) > 16)
	{
		SendClientMessage(playerid, 0xBEBEBEFF, "La {"MAIN_COLOR"}contraseña {"BASE_COLOR"}no puede tener más de 32 caracteres.");
		Dialog_Show(playerid, PasswordRegister, 
			DIALOG_STYLE_PASSWORD, 
			"Ingresa una contraseña", 
			"{"BASE_COLOR"}Usa el siguiente espacio para ingresar una {"MAIN_COLOR"}contraseña{"BASE_COLOR"}.\n\
			'Salir' te expulsará del servidor.", 
			"Aceptar", 
			"Salir"
		);
		return 1;
	}

	if (strlen(inputtext) < 5)
	{
		SendClientMessage(playerid, 0xBEBEBEFF, "La {"MAIN_COLOR"}contraseña {"BASE_COLOR"}no puede tener menos de 5 caracteres.");
		Dialog_Show(playerid, PasswordRegister, 
			DIALOG_STYLE_PASSWORD, 
			"Ingresa una contraseña", 
			"{"BASE_COLOR"}Usa el siguiente espacio para ingresar una {"MAIN_COLOR"}contraseña{"BASE_COLOR"}.\n\
			'Salir' te expulsará del servidor.", 
			"Aceptar", 
			"Salir"
		);
		return 1;
	}

	bcrypt_hash(inputtext, BCRYPT_COST, "HashPassword", "i", playerid);
	return 1;
}

// ————3—— Callbacks —————3//

forward HashPassword(playerid);
public HashPassword(playerid)
{
	new hash[BCRYPT_HASH_LENGTH + 1];

	bcrypt_get_hash(hash);

	// —— Admiinistracion 
	PlayerInfo[playerid][pAdmin] = 0;
	PlayerInfo[playerid][pRealAdmin] = 0;
	PlayerInfo[playerid][pAdminDuty] = 0;
	// —— Estadístic
	PlayerInfo[playerid][pMoney] = 500;
	PlayerInfo[playerid][pRank] = 0;

	new query[512];
	mysql_format(
		Database, 
		query, sizeof query, 
		"INSERT INTO Users (Username, Password, DBCon, Money, Rank) VALUES ('%e', '%e', 0, %d, %d)"
	, PlayerInfo[playerid][pUsername], hash, PlayerInfo[playerid][pMoney], PlayerInfo[playerid][pRank]);
	mysql_tquery(Database, query, "OnPlayerRegister", "i", playerid);
	return 1;
}

forward OnPlayerRegister(playerid);
public OnPlayerRegister(playerid)
{
	PlayerInfo[playerid][pID] = cache_insert_id();
	cache_unset_active();

	ShowMainMenuForPlayer(playerid);
	return 1;
}

forward CheckPassword(playerid);
public CheckPassword(playerid)
{
	if (bcrypt_is_equal())
	{
		new query[128];
		mysql_format(Database, query, sizeof query, "SELECT * FROM Users WHERE ID = '%d' LIMIT 1;", PlayerInfo[playerid][pID]);
		mysql_tquery(Database, query, "OnPlayerLoadAccount", "i", playerid);
		return 1;
	}

	PlayerTemp[playerid][pLoginAttemps]++;
	if (PlayerTemp[playerid][pLoginAttemps] >= 3) return Kick(playerid);

	Dialog_Show(playerid, PasswordLogin, 
		DIALOG_STYLE_PASSWORD, 
		"Ingresa tu contraseña", 
		"{"BASE_COLOR"}Usa el siguiente espacio para ingresar tu {"MAIN_COLOR"}contraseña{"BASE_COLOR"}.\n\
		'Salir' te expulsará del servidor.", 
		"Aceptar", 
		"Salir"
	);
	return 1;
}
