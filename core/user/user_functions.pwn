/*

*/

// ——— Funciones MySQL
VerifyUsername(const username[])
{
	new query[128];
	mysql_format(Database, query, sizeof query, "SELECT * FROM Users WHERE Username = '%e' LIMIT 1;", username);
	mysql_query(Database, query);

	if (cache_num_rows()) return 1;
	return 0;
}

// ——— Mostrar menú inicial
ShowMainMenuForPlayer(playerid)
{
	for(new i = 0; i < 20; i++)
	    SendClientMessage(playerid, -1, " ");

	SpawnPlayer(playerid);
	SetCameraIntro(playerid);
	    
	TextDrawShowForPlayer(playerid, main_box);
	TextDrawShowForPlayer(playerid, play_button);
	TextDrawShowForPlayer(playerid, shop_button);
	TextDrawShowForPlayer(playerid, account_button);
	TextDrawShowForPlayer(playerid, box_line_separator);
	TextDrawShowForPlayer(playerid, text_match);
	TextDrawShowForPlayer(playerid, text_multiplayer);
	TextDrawShowForPlayer(playerid, mj_start_button);
	TextDrawShowForPlayer(playerid, mj_line);
	TextDrawShowForPlayer(playerid, mode_text_mj);
	TextDrawShowForPlayer(playerid, mj_create_button);
	TextDrawShowForPlayer(playerid, text_individual);
	TextDrawShowForPlayer(playerid, ind_line);
	TextDrawShowForPlayer(playerid, text_trainment);
	TextDrawShowForPlayer(playerid, textdraw_14);
	TextDrawShowForPlayer(playerid, ind_start_button);

	SelectTextDraw(playerid, 0xC0C0C0FF);
	return 1;
}

SetCameraIntro(playerid)
{
/*
	new camara = random(10);
	switch (camara)
	{
		case 0: //
		{
			SetPlayerCameraPos(playerid, 1322.852661, -842.557189, 81.878723);
			SetPlayerCameraLookAt(playerid, 1327.063598, -844.889587, 80.526657);
		}
		case 1: //
		{
			SetPlayerCameraPos(playerid, 1330.970214, -1229.751464, 20.602609);
			SetPlayerCameraLookAt(playerid, 1335.280761, -1232.175903, 19.866525);
		}
		case 2: //
		{
			SetPlayerCameraPos(playerid, 1414.551391, -1580.584960, 26.634227);
			SetPlayerCameraLookAt(playerid, 1418.559326, -1583.465209, 25.833747);
		}
		case 3: //
		{
			SetPlayerCameraPos(playerid, 1833.015380, -1602.153076, 15.430989);
			SetPlayerCameraLookAt(playerid, 1829.866821, -1606.034179, 15.278766);
		}
		case 4: //
		{
			SetPlayerCameraPos(playerid, 2153.022949, -1434.292358, 30.550901);
			SetPlayerCameraLookAt(playerid, 2149.823974, -1438.081542, 29.911640);
		}
		case 5: //
		{
			SetPlayerCameraPos(playerid, 2376.590332, -1395.556884, 30.739677);
			SetPlayerCameraLookAt(playerid, 2374.607910, -1391.196777, 29.304519);
		}
		case 6: //
		{
			SetPlayerCameraPos(playerid, 2464.403808, -1640.082153, 30.688730);
			SetPlayerCameraLookAt(playerid, 2467.600830, -1643.635864, 29.222391);
		}
		case 7: //
		{
			SetPlayerCameraPos(playerid, 2807.403564, -2039.742919, 20.450368);
			SetPlayerCameraLookAt(playerid, 2803.776123, -2036.468017, 19.393779);
		}
		case 8: //
		{
			SetPlayerCameraPos(playerid, 2191.009277, -2014.393920, 29.303335);
			SetPlayerCameraLookAt(playerid, 2193.639160, -2010.309570, 28.119724);
		}
		case 9: //
		{
			SetPlayerCameraPos(playerid, 1676.916259, -2094.672851, 24.600112);
			SetPlayerCameraLookAt(playerid, 1681.483398, -2096.203369, 23.258865);
		}
		default:
		{
			SetPlayerCameraPos(playerid, 1676.916259, -2094.672851, 24.600112);
			SetPlayerCameraLookAt(playerid, 1681.483398, -2096.203369, 23.258865);
		}
	}*/
	

	InterpolateCameraPos(playerid, 1665.473144, -219.551849, 71.844100, 1669.530273, -917.312927, 98.991363, 10000);
	InterpolateCameraLookAt(playerid, 1666.023437, -224.485168, 71.244415, 1670.177490, -912.526794, 97.697601, 10000);
	return 1;
}

// —— Callbacks
forward OnPlayerLoadAccount(playerid);
public OnPlayerLoadAccount(playerid)
{
	if (cache_num_rows())
	{
		// —— Admiinistracion 
		cache_get_value_int(0, "Administrator", PlayerInfo[playerid][pAdmin]);
		cache_get_value_int(0, "RandomValue", PlayerInfo[playerid][pRealAdmin]);
		cache_get_value_int(0, "AdminDuty", PlayerInfo[playerid][pAdminDuty]);
		// —— Estadísticas
		cache_get_value_int(0, "Money", PlayerInfo[playerid][pMoney]);
		cache_get_value_int(0, "Rank", PlayerInfo[playerid][pRank]);

		// —— Seguridad x si un payaso OWO
		if (!PlayerInfo[playerid][pRealAdmin] && PlayerInfo[playerid][pAdmin])
				PlayerInfo[playerid][pAdmin] = 0;

		// —— Inicia el menú
		printf("%s (DBID %d) logueado correctamente, mostrando menú...", PlayerInfo[playerid][pUsername], PlayerInfo[playerid][pID]);
		ShowMainMenuForPlayer(playerid);
		return 1;
	}

	if (PlayerInfo[playerid][pAutoconection])
		SendClientMessage(playerid, 0xBEBEBEFF, "Tu {"MAIN_COLOR"}dirección IP{"BASE_COLOR"} no concuerda en el logueo automático, ingresa normalmente.");

	Dialog_Show(playerid, PasswordLogin, DIALOG_STYLE_PASSWORD, "Ingresa tu contraseña", 
		"{"BASE_COLOR"}Usa el siguiente espacio para ingresar tu {"MAIN_COLOR"}contraseña{"BASE_COLOR"}.\n\
		'Salir' te expulsará del servidor.", "Aceptar", "Salir");
	return 1;
}
