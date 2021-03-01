/*

	Módulo principal del usuario.
	Artic, 24/ febrero 2021

*/

// —————————— Datos del Jugador —————————— //
// —— Guardados	
enum player_info
{
	// —— Cuenta
	pID,							// — ID SQL
	pUsername[MAX_PLAYER_NAME],		// — Nombre de usuario
	pPassword[64],					// — Clave encriptada
	pIP[16],						// — IP
	pAutoconection,					// — Loguear automáticamente por IP 					
	// —— Administración
	pAdmin,							// — Nivel Administrativo
	pRealAdmin,						// — Rango adminsitrativo otorgado
	pNameAdmin[12],					// — Apodo administrativo
	pAdminDuty,						// — Servicio admin.
	// —— Estadísticas
	pMoney,							// — Dinero
	pRank							// — Rango battle pass :flushed:
}
new PlayerInfo[MAX_PLAYERS][player_info];

// —— No guardados
enum temp_player_info
{
	// —— Por partida
	bool:pLogged,					// — En Match
	pPasswordType,					// — Tipo de diálogo
	pLoginAttemps,					// — Intentos de logueo
	pKills,							// — Asesinatos cometidos
	pDeaths,						// — Muertes
	Float: pHealth,					// — Vida
	Float: pArmour,					// — Chaleco
	pScore,							// — Puntos
	pTeam,							// — Equipo
	pClass,							// — Clase escogida
	pDrones,						// — Drones, hace falta explicar????????????????????????
	pWalls,							// — Paredes metálicas
	pWeaponOne,						// — Arma uno
	pWeaponTwo,						// — Arma dos
	pMatch,							// — ID de la partida
	bool:pDead 						// — muerto
}
new PlayerTemp[MAX_PLAYERS][temp_player_info];

#include "../core/user/user_functions.pwn"
#include "../core/user/user_connect.pwn"
#include "../core/user/user_autoconnection.pwn"