/*
	Módulo con la configuración de MYSQL, funciones y macros.
*/


#define MYSQL_HOST	"localhost"
#define MYSQL_USER 	"root"
#define MYSQL_PASS	""
#define MYSQL_DB 	"siege"

// —— Handle
new MySQL: Database;

// ————————— Conexión SQL —————————//
OnMySQLConnect()
{
	Database = mysql_connect(MYSQL_HOST, MYSQL_USER, MYSQL_PASS, MYSQL_DB);
	if(mysql_errno() != 0)
	{
		printf("Error al conectar la base de datos proporcionada. (%s)", MYSQL_DB);
		SendRconCommand("exit");
		return 1;
	}
	else
		print("Conexión con la base de datos establecida.");

	mysql_log(ERROR | WARNING);
	return 1;
}

// ——————————— Errores SQL ————————— //
public OnQueryError(errorid, const error[], const callback[], const query[], MySQL:handle)
{
	printf("ERROR %d: %s on %s, query: %s", errorid, error, callback, query);
	return 1;
}

// ——————— Funciones mysql
// Global
/*
GuardarInt(tabla[], columna[], id_sql[], cantidad)
{
	new query[128];
	mysql_format(Database, query, sizeof query, "UPDATE %s SET %s = '%d' WHERE id = '%d';", tabla, columna, cantidad, id_sql);
	mysql_tquery(Database, query);
	return 1;
}

GuardarString(tabla[], columna[], id_sql[], string[])
{
	new query[128];
	mysql_format(Database, query, sizeof query, "UPDATE %s SET %s = '%e' WHERE id = '%d';", tabla, columna, string, id_sql);
	mysql_tquery(Database, query);
	return 1;
}

GuardarFloat(tabla[], columna[], id_sql[], float)
{
	new query[128];
	mysql_format(Database, query, sizeof query, "UPDATE %s SET %s = '%f' WHERE id = '%d';", tabla, columna, float, id_sql);
	mysql_tquery(Database, query);
	return 1;
}*/