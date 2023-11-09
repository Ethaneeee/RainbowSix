stock Fix_GT(string[])
{
	new szFixed[1024], iPos, iLen;
	for (iLen = strlen(string); iPos < iLen; iPos ++)
		switch (string[iPos])
		{
			case 'à':   szFixed[iPos] = 151;
			case 'á':   szFixed[iPos] = 152;
			case 'â':   szFixed[iPos] = 153;
			case 'ä':   szFixed[iPos] = 154;
			case 'À':   szFixed[iPos] = 128;
			case 'Á':   szFixed[iPos] = 129;
			case 'Â':   szFixed[iPos] = 130;
			case 'Ä':   szFixed[iPos] = 131;
			case 'è':   szFixed[iPos] = 157;
			case 'é':   szFixed[iPos] = 158;
			case 'ê':   szFixed[iPos] = 159;
			case 'ë':   szFixed[iPos] = 160;
			case 'È':   szFixed[iPos] = 134;
			case 'É':   szFixed[iPos] = 135;
			case 'Ê':   szFixed[iPos] = 136;
			case 'Ë':   szFixed[iPos] = 137;
			case 'ì':   szFixed[iPos] = 161;
			case 'í':   szFixed[iPos] = 162;
			case 'î':   szFixed[iPos] = 163;
			case 'ï':   szFixed[iPos] = 164;
			case 'Ì':   szFixed[iPos] = 138;
			case 'Í':   szFixed[iPos] = 139;
			case 'Î':   szFixed[iPos] = 140;
			case 'Ï':   szFixed[iPos] = 141;
			case 'ò':   szFixed[iPos] = 165;
			case 'ó':   szFixed[iPos] = 166;
			case 'ô':   szFixed[iPos] = 167;
			case 'ö':   szFixed[iPos] = 168;
			case 'Ò':   szFixed[iPos] = 142;
			case 'Ó':   szFixed[iPos] = 143;
			case 'Ô':   szFixed[iPos] = 144;
			case 'Ö':   szFixed[iPos] = 145;
			case 'ù':   szFixed[iPos] = 169;
			case 'ú':   szFixed[iPos] = 170;
			case 'û':   szFixed[iPos] = 171;
			case 'ü':   szFixed[iPos] = 172;
			case 'Ù':   szFixed[iPos] = 146;
			case 'Ú':   szFixed[iPos] = 147;
			case 'Û':   szFixed[iPos] = 148;
			case 'Ü':   szFixed[iPos] = 149;
			case 'ñ':   szFixed[iPos] = 174;
			case 'Ñ':   szFixed[iPos] = 173;
			case '¡':   szFixed[iPos] = 64;
			case '¿':   szFixed[iPos] = 175;
			case '`':   szFixed[iPos] = 177;
			case '&':   szFixed[iPos] = 38;
			default:    szFixed[iPos] = string[iPos];
	}
	return szFixed;
}

stock TextDrawSetStringEx(Text:Text_ID, text[])
{
	return TextDrawSetString(Text_ID, Fix_GT(text));
}

stock PlayerTextDrawSetStringEx(playerid, PlayerText:Text_ID, text[])
{
	return PlayerTextDrawSetString(playerid, Text_ID, Fix_GT(text));
}
