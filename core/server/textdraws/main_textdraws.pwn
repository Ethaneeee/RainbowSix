/*

*/

new Text:main_box;
new Text:play_button;
new Text:shop_button;
new Text:account_button;
new Text:box_line_separator;
new Text:text_match;
new Text:text_multiplayer;
new Text:mj_start_button;
new Text:mj_line;
new Text:mode_text_mj;
new Text:mj_create_button;
new Text:text_individual;
new Text:ind_line;
new Text:text_trainment;
new Text:textdraw_14;
new Text:ind_start_button;


new Text:PublicTD[5];


CreateGlobalTextDraws()
{
	// ———— Menú Principal
	// — Jugar
	main_box = TextDrawCreate(319.000000, 163.000000, "_");
	TextDrawFont(main_box, 1);
	TextDrawLetterSize(main_box, 0.600000, 22.300003);
	TextDrawTextSize(main_box, 298.500000, 335.000000);
	TextDrawSetOutline(main_box, 1);
	TextDrawSetShadow(main_box, 0);
	TextDrawAlignment(main_box, 2);
	TextDrawColor(main_box, -1);
	TextDrawBackgroundColor(main_box, 255);
	TextDrawBoxColor(main_box, 255);
	TextDrawUseBox(main_box, 1);
	TextDrawSetProportional(main_box, 1);
	TextDrawSetSelectable(main_box, 0);

	play_button = TextDrawCreate(228.000000, 146.000000, "Jugar");
	TextDrawFont(play_button, 2);
	TextDrawLetterSize(play_button, 0.195831, 1.250000);
	TextDrawTextSize(play_button, 460.000000, 85.000000);
	TextDrawSetOutline(play_button, 0);
	TextDrawSetShadow(play_button, 0);
	TextDrawAlignment(play_button, 2);
	TextDrawColor(play_button, -1);
	TextDrawBackgroundColor(play_button, 255);
	TextDrawBoxColor(play_button, -1658772993);
	TextDrawUseBox(play_button, 1);
	TextDrawSetProportional(play_button, 1);
	TextDrawSetSelectable(play_button, 1);

	shop_button = TextDrawCreate(320.000000, 146.000000, "Tienda");
	TextDrawFont(shop_button, 2);
	TextDrawLetterSize(shop_button, 0.195831, 1.250000);
	TextDrawTextSize(shop_button, 460.000000, 85.000000);
	TextDrawSetOutline(shop_button, 0);
	TextDrawSetShadow(shop_button, 0);
	TextDrawAlignment(shop_button, 2);
	TextDrawColor(shop_button, -1);
	TextDrawBackgroundColor(shop_button, 255);
	TextDrawBoxColor(shop_button, 255);
	TextDrawUseBox(shop_button, 1);
	TextDrawSetProportional(shop_button, 1);
	TextDrawSetSelectable(shop_button, 1);

	account_button = TextDrawCreate(411.000000, 146.000000, "Cuenta");
	TextDrawFont(account_button, 2);
	TextDrawLetterSize(account_button, 0.195831, 1.250000);
	TextDrawTextSize(account_button, 460.000000, 85.000000);
	TextDrawSetOutline(account_button, 0);
	TextDrawSetShadow(account_button, 0);
	TextDrawAlignment(account_button, 2);
	TextDrawColor(account_button, -1);
	TextDrawBackgroundColor(account_button, 255);
	TextDrawBoxColor(account_button, 255);
	TextDrawUseBox(account_button, 1);
	TextDrawSetProportional(account_button, 1);
	TextDrawSetSelectable(account_button, 1);

	box_line_separator = TextDrawCreate(319.000000, 160.000000, "_");
	TextDrawFont(box_line_separator, 1);
	TextDrawLetterSize(box_line_separator, 0.600000, -0.099997);
	TextDrawTextSize(box_line_separator, 298.500000, 335.000000);
	TextDrawSetOutline(box_line_separator, 1);
	TextDrawSetShadow(box_line_separator, 0);
	TextDrawAlignment(box_line_separator, 2);
	TextDrawColor(box_line_separator, -1);
	TextDrawBackgroundColor(box_line_separator, 255);
	TextDrawBoxColor(box_line_separator, -1658772993);
	TextDrawUseBox(box_line_separator, 1);
	TextDrawSetProportional(box_line_separator, 1);
	TextDrawSetSelectable(box_line_separator, 0);

	text_match = TextDrawCreate(196.000000, 184.000000, "Partida Rapida");
	TextDrawFont(text_match, 2);
	TextDrawLetterSize(text_match, 0.229166, 1.600000);
	TextDrawTextSize(text_match, 460.000000, 85.000000);
	TextDrawSetOutline(text_match, 0);
	TextDrawSetShadow(text_match, 0);
	TextDrawAlignment(text_match, 2);
	TextDrawColor(text_match, -1);
	TextDrawBackgroundColor(text_match, 255);
	TextDrawBoxColor(text_match, -1658772993);
	TextDrawUseBox(text_match, 0);
	TextDrawSetProportional(text_match, 1);
	TextDrawSetSelectable(text_match, 0);

	text_multiplayer = TextDrawCreate(181.000000, 177.000000, "Multijugador");
	TextDrawFont(text_multiplayer, 2);
	TextDrawLetterSize(text_multiplayer, 0.154165, 0.950001);
	TextDrawTextSize(text_multiplayer, 460.000000, 85.000000);
	TextDrawSetOutline(text_multiplayer, 0);
	TextDrawSetShadow(text_multiplayer, 0);
	TextDrawAlignment(text_multiplayer, 2);
	TextDrawColor(text_multiplayer, -1);
	TextDrawBackgroundColor(text_multiplayer, 255);
	TextDrawBoxColor(text_multiplayer, -1658772993);
	TextDrawUseBox(text_multiplayer, 0);
	TextDrawSetProportional(text_multiplayer, 1);
	TextDrawSetSelectable(text_multiplayer, 0);

	mj_start_button = TextDrawCreate(259.000000, 242.000000, "Iniciar");
	TextDrawFont(mj_start_button, 2);
	TextDrawLetterSize(mj_start_button, 0.195831, 1.250000);
	TextDrawTextSize(mj_start_button, 460.000000, 85.000000);
	TextDrawSetOutline(mj_start_button, 0);
	TextDrawSetShadow(mj_start_button, 0);
	TextDrawAlignment(mj_start_button, 2);
	TextDrawColor(mj_start_button, -1);
	TextDrawBackgroundColor(mj_start_button, 255);
	TextDrawBoxColor(mj_start_button, -1658772993);
	TextDrawUseBox(mj_start_button, 1);
	TextDrawSetProportional(mj_start_button, 1);
	TextDrawSetSelectable(mj_start_button, 1);

	mj_line = TextDrawCreate(155.000000, 182.000000, "_");
	TextDrawFont(mj_line, 1);
	TextDrawLetterSize(mj_line, 0.600000, 1.500002);
	TextDrawTextSize(mj_line, 206.500000, -5.500000);
	TextDrawSetOutline(mj_line, 1);
	TextDrawSetShadow(mj_line, 0);
	TextDrawAlignment(mj_line, 2);
	TextDrawColor(mj_line, -1);
	TextDrawBackgroundColor(mj_line, 255);
	TextDrawBoxColor(mj_line, -1658772993);
	TextDrawUseBox(mj_line, 1);
	TextDrawSetProportional(mj_line, 1);
	TextDrawSetSelectable(mj_line, 0);

	mode_text_mj = TextDrawCreate(184.000000, 211.000000, "Enfrentate a otros 5 jugadores en una batalla tactica.");
	TextDrawFont(mode_text_mj, 2);
	TextDrawLetterSize(mode_text_mj, 0.154165, 0.950001);
	TextDrawTextSize(mode_text_mj, 460.000000, 85.000000);
	TextDrawSetOutline(mode_text_mj, 0);
	TextDrawSetShadow(mode_text_mj, 0);
	TextDrawAlignment(mode_text_mj, 1);
	TextDrawColor(mode_text_mj, -1);
	TextDrawBackgroundColor(mode_text_mj, 255);
	TextDrawBoxColor(mode_text_mj, -1658772993);
	TextDrawUseBox(mode_text_mj, 0);
	TextDrawSetProportional(mode_text_mj, 1);
	TextDrawSetSelectable(mode_text_mj, 0);

	mj_create_button = TextDrawCreate(380.000000, 242.000000, "Crear");
	TextDrawFont(mj_create_button, 2);
	TextDrawLetterSize(mj_create_button, 0.195831, 1.250000);
	TextDrawTextSize(mj_create_button, 460.000000, 85.000000);
	TextDrawSetOutline(mj_create_button, 0);
	TextDrawSetShadow(mj_create_button, 0);
	TextDrawAlignment(mj_create_button, 2);
	TextDrawColor(mj_create_button, -1);
	TextDrawBackgroundColor(mj_create_button, 255);
	TextDrawBoxColor(mj_create_button, -1658772993);
	TextDrawUseBox(mj_create_button, 1);
	TextDrawSetProportional(mj_create_button, 1);
	TextDrawSetSelectable(mj_create_button, 1);

	text_individual = TextDrawCreate(193.000000, 275.000000, "Individual");
	TextDrawFont(text_individual, 2);
	TextDrawLetterSize(text_individual, 0.154165, 0.950001);
	TextDrawTextSize(text_individual, 460.000000, 85.000000);
	TextDrawSetOutline(text_individual, 0);
	TextDrawSetShadow(text_individual, 0);
	TextDrawAlignment(text_individual, 3);
	TextDrawColor(text_individual, -1);
	TextDrawBackgroundColor(text_individual, 255);
	TextDrawBoxColor(text_individual, -1658772993);
	TextDrawUseBox(text_individual, 0);
	TextDrawSetProportional(text_individual, 1);
	TextDrawSetSelectable(text_individual, 0);

	ind_line = TextDrawCreate(155.000000, 279.000000, "_");
	TextDrawFont(ind_line, 1);
	TextDrawLetterSize(ind_line, 0.600000, 1.500002);
	TextDrawTextSize(ind_line, 206.500000, -5.500000);
	TextDrawSetOutline(ind_line, 1);
	TextDrawSetShadow(ind_line, 0);
	TextDrawAlignment(ind_line, 2);
	TextDrawColor(ind_line, -1);
	TextDrawBackgroundColor(ind_line, 255);
	TextDrawBoxColor(ind_line, -1658772993);
	TextDrawUseBox(ind_line, 1);
	TextDrawSetProportional(ind_line, 1);
	TextDrawSetSelectable(ind_line, 0);

	text_trainment = TextDrawCreate(196.000000, 282.000000, "Entrenamiento");
	TextDrawFont(text_trainment, 2);
	TextDrawLetterSize(text_trainment, 0.229166, 1.600000);
	TextDrawTextSize(text_trainment, 460.000000, 85.000000);
	TextDrawSetOutline(text_trainment, 0);
	TextDrawSetShadow(text_trainment, 0);
	TextDrawAlignment(text_trainment, 2);
	TextDrawColor(text_trainment, -1);
	TextDrawBackgroundColor(text_trainment, 255);
	TextDrawBoxColor(text_trainment, -1658772993);
	TextDrawUseBox(text_trainment, 0);
	TextDrawSetProportional(text_trainment, 1);
	TextDrawSetSelectable(text_trainment, 0);

	textdraw_14 = TextDrawCreate(184.000000, 306.000000, "Mejora tus habilidades antes de ir al campo de batalla.");
	TextDrawFont(textdraw_14, 2);
	TextDrawLetterSize(textdraw_14, 0.154165, 0.950001);
	TextDrawTextSize(textdraw_14, 460.000000, 85.000000);
	TextDrawSetOutline(textdraw_14, 0);
	TextDrawSetShadow(textdraw_14, 0);
	TextDrawAlignment(textdraw_14, 1);
	TextDrawColor(textdraw_14, -1);
	TextDrawBackgroundColor(textdraw_14, 255);
	TextDrawBoxColor(textdraw_14, -1658772993);
	TextDrawUseBox(textdraw_14, 0);
	TextDrawSetProportional(textdraw_14, 1);
	TextDrawSetSelectable(textdraw_14, 0);

	ind_start_button = TextDrawCreate(321.000000, 332.000000, "Iniciar");
	TextDrawFont(ind_start_button, 2);
	TextDrawLetterSize(ind_start_button, 0.195831, 1.250000);
	TextDrawTextSize(ind_start_button, 460.000000, 85.000000);
	TextDrawSetOutline(ind_start_button, 0);
	TextDrawSetShadow(ind_start_button, 0);
	TextDrawAlignment(ind_start_button, 2);
	TextDrawColor(ind_start_button, -1);
	TextDrawBackgroundColor(ind_start_button, 255);
	TextDrawBoxColor(ind_start_button, -1658772993);
	TextDrawUseBox(ind_start_button, 1);
	TextDrawSetProportional(ind_start_button, 1);
	TextDrawSetSelectable(ind_start_button, 1);

	// ———— Tienda	
	
		PublicTD[0] = TextDrawCreate(285.000000, 64.000000, "RAINBOW");
	TextDrawFont(PublicTD[0], 2);
	TextDrawLetterSize(PublicTD[0], 0.324999, 2.049999);
	TextDrawTextSize(PublicTD[0], 400.000000, 17.000000);
	TextDrawSetOutline(PublicTD[0], 0);
	TextDrawSetShadow(PublicTD[0], 0);
	TextDrawAlignment(PublicTD[0], 1);
	TextDrawColor(PublicTD[0], -1);
	TextDrawBackgroundColor(PublicTD[0], 255);
	TextDrawBoxColor(PublicTD[0], 50);
	TextDrawUseBox(PublicTD[0], 0);
	TextDrawSetProportional(PublicTD[0], 1);
	TextDrawSetSelectable(PublicTD[0], 0);

	PublicTD[1] = TextDrawCreate(313.000000, 80.000000, "Six");
	TextDrawFont(PublicTD[1], 2);
	TextDrawLetterSize(PublicTD[1], 0.237499, 0.750001);
	TextDrawTextSize(PublicTD[1], 400.000000, 17.000000);
	TextDrawSetOutline(PublicTD[1], 0);
	TextDrawSetShadow(PublicTD[1], 0);
	TextDrawAlignment(PublicTD[1], 2);
	TextDrawColor(PublicTD[1], -1);
	TextDrawBackgroundColor(PublicTD[1], 255);
	TextDrawBoxColor(PublicTD[1], 50);
	TextDrawUseBox(PublicTD[1], 0);
	TextDrawSetProportional(PublicTD[1], 1);
	TextDrawSetSelectable(PublicTD[1], 0);

	PublicTD[2] = TextDrawCreate(313.000000, 84.000000, "SAMP");
	TextDrawFont(PublicTD[2], 2);
	TextDrawLetterSize(PublicTD[2], 0.341666, 2.099999);
	TextDrawTextSize(PublicTD[2], 400.000000, 17.000000);
	TextDrawSetOutline(PublicTD[2], 0);
	TextDrawSetShadow(PublicTD[2], 0);
	TextDrawAlignment(PublicTD[2], 2);
	TextDrawColor(PublicTD[2], -1);
	TextDrawBackgroundColor(PublicTD[2], 255);
	TextDrawBoxColor(PublicTD[2], 50);
	TextDrawUseBox(PublicTD[2], 0);
	TextDrawSetProportional(PublicTD[2], 1);
	TextDrawSetSelectable(PublicTD[2], 0);

	PublicTD[3] = TextDrawCreate(295.000000, 86.000000, "_");
	TextDrawFont(PublicTD[3], 1);
	TextDrawLetterSize(PublicTD[3], 0.600000, -0.449995);
	TextDrawTextSize(PublicTD[3], 298.500000, 12.000000);
	TextDrawSetOutline(PublicTD[3], 1);
	TextDrawSetShadow(PublicTD[3], 0);
	TextDrawAlignment(PublicTD[3], 2);
	TextDrawColor(PublicTD[3], -1);
	TextDrawBackgroundColor(PublicTD[3], 255);
	TextDrawBoxColor(PublicTD[3], -1658772993);
	TextDrawUseBox(PublicTD[3], 1);
	TextDrawSetProportional(PublicTD[3], 1);
	TextDrawSetSelectable(PublicTD[3], 0);

	PublicTD[4] = TextDrawCreate(331.000000, 86.000000, "_");
	TextDrawFont(PublicTD[4], 1);
	TextDrawLetterSize(PublicTD[4], 0.600000, -0.449995);
	TextDrawTextSize(PublicTD[4], 298.500000, 12.000000);
	TextDrawSetOutline(PublicTD[4], 1);
	TextDrawSetShadow(PublicTD[4], 0);
	TextDrawAlignment(PublicTD[4], 2);
	TextDrawColor(PublicTD[4], -1);
	TextDrawBackgroundColor(PublicTD[4], 255);
	TextDrawBoxColor(PublicTD[4], -1658772993);
	TextDrawUseBox(PublicTD[4], 1);
	TextDrawSetProportional(PublicTD[4], 1);
	TextDrawSetSelectable(PublicTD[4], 0);
	return 1;
}

public OnGameModeInit()
{
	CreateGlobalTextDraws();

	
	#if defined TDs_OnGameModeInit
		return TDs_OnGameModeInit();
	#else
		return 1;
	#endif
}
#if defined _ALS_OnGameModeInit
	#undef OnGameModeInit
#else
	#define _ALS_OnGameModeInit
#endif

#define OnGameModeInit TDs_OnGameModeInit
#if defined TDs_OnGameModeInit
	forward TDs_OnGameModeInit();
#endif
