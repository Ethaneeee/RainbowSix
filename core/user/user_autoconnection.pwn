/*

	Módulo autoconectado según la IP.
	Funcionamiento:

		Se utiliza la IP para buscar en las base de datos, la tabla de usuarios y si está habilitado su uso se cargará la cuenta.

*/

VerifyAutoConnect(playerid)
{
	new query[128];
	mysql_format(Database, query, sizeof query, "SELECT * FROM Users WHERE IP = '%e' AND ID = '%d' LIMIT 1;", PlayerInfo[playerid][pIP], PlayerInfo[playerid][pID]);
	mysql_tquery(Database, query, "OnPlayerLoadAccount", "i", playerid);
	return 1;
}