/*

	PaySamp, desarrollo por Artic.
	24/02/2021

	Idea por SengiOp el veneco owo

*/	


// 覧覧覧覧 Includes 覧覧覧覧 //
#include <a_samp>
#include <a_mysql>
#include <bcrypt>
#include <Pawn.CMD>
#include <sscanf2>
#include <easyDialog>
#include <YSF>

// 覧覧覧覧 Configuraci�n 覧覧覧覧 //
// 覧 Undef	
#undef MAX_PLAYERS
// 覧 Constantes	
const
	MAX_PLAYERS 		= 50,
	MAX_MATCHES 		= 20,
	MAX_PLAYERS_MATCH 	= 6,
	BCRYPT_COST			= 12;
		
// 覧覧覧覧 M�dulos 覧覧覧覧 //
#include "../core/server/main_server.pwn"
#include "../core/server/textdraws/main_textdraws.pwn"	
#include "../core/user/main_user.pwn"

main(){}

// 覧覧覧覧 Callbacks 覧覧覧覧 //
public OnGameModeInit()
{
	OnMySQLConnect();
	SendRconCommand("hostname "SERVER_NAME"");
	SendRconCommand("gamemodetext "SERVER_MODE" "SERVER_VERSION"");
	return 1;
}

public OnPlayerCommandReceived(playerid, cmd[], params[], flags)
{
	if (flags)
	{
		if (PlayerInfo[playerid][pAdmin] < flags)
		{
			if (strlen(params))
				SendClientMessagef(playerid, -1, "El comando ingresado (/%s %s) no existe en la base de datos, usa /ayuda.", cmd, params);
			else
				SendClientMessagef(playerid, -1, "El comando ingresado (/%s) no existe en la base de datos, usa /ayuda.", cmd);
			return 0;
		}
	}
	return 1;
}	

public OnPlayerCommandPerformed(playerid, cmd[], params[], result, flags)
{
	if (!result)
	{
		if (strlen(params))
			SendClientMessagef(playerid, -1, "El comando ingresado (/%s %s) no existe en la base de datos, usa /ayuda.", cmd, params);
		else
			SendClientMessagef(playerid, -1, "El comando ingresado (/%s) no existe en la base de datos, usa /ayuda.", cmd);
	}
	return 1;
}
