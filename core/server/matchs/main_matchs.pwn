/*

*/

enum match_info
{
	mID,							// — ID de la partida
	bool:mValid,					// — Partida Válida
	bool:mStarted,					// — Iniciado
	mType,							// — Tipo de partida: bomba, rehenes, etc
	mPlayers[MAX_PLAYERS_MATCH],	// — Jugadores totales
	mTime,							// — Tiempo de la partida
	mRated,							// — Clasficicatoria
	bool:mPrivate,					// — Partida privada
	mPassword[12],					// — Contraseña privada
	mOwner,							// — dbid del owner
}
new MatchInfo[MAX_MATCHES][match_info];


SearchFreeMatch()
{
	new freeid = -1;
	for (new i = 0; i < MAX_MATCHES; i++) if (MatchInfo[i][mValid])
	{
		freeid = i;
		break;
	}
	return freeid;
}

CountPlayersInMatch(matchid)
{
	new count = 0;
	for (new playerid = 0, j = GetPlayerPoolSize(); playerid <= j ; playerid++) if (IsPlayerConnected(playerid))
	{
		if (!PlayerTemp[playerid][pLogged]) continue;
		if (PlayerTemp[playerid][pMatch] == matchid)
			count++;
	}
	return count;
}

StartMatch(matchid)
{
	if (!MatchInfo[matchid][mValid]) return 0;

	return 1;
}