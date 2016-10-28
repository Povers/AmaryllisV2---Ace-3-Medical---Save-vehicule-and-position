class Life_my_smartphone {
	idd = 88888;
	name = "life_my_telephone_menu";
	movingEnable = false;
	enableSimulation = true;
	onLoad = "[] spawn life_fnc_smartphone;";
	
	class controlsBackground {
class tablette: life_RscPicture
{
	idc = 9042;

	text = "ama_items\menus\phonehome.paa"; 
	x = 0;
	y = -0.12;
	w = 1;
	h = 1.28;
};
	};
	
	class controls {
		class PlayerList: Life_RscListBox
{
	
	idc = 88881;
	onLBSelChanged = "[2] spawn life_fnc_smartphone;";
	colorBackground[] = {0,0,0,0};
	x = 0.105;
	y = 0.258;
	w = 0.1575;
	h = 0.584;
	sizeEx = (			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8);
};
class MessageList: Life_RscListNBox
{
	idc = 88882;
	onLBSelChanged = "[(lbCurSel 88882)] call life_fnc_showMsg;";
	columns[] = {0,0.3};

	x = 0.32;
	y = 0.256;
	w = 0.5725;
	h = 0.272;
	colorBackground[] = {0,0,0,0};
	sizeEx = (			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8);
};
class TextShow: Life_RscControlsGroup
{
	idc = 1005;
	x = 0.32;
	y = 0.556;
	w = 0.575;
	h = 0.278;

	class controls {
				class showText : Life_RscStructuredText {
					idc = 88887;
					text = "";
					colorBackground[] = {0.28,0.28,0.28,0.28};
					size = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
					shadow = 0;
					x = 0;
					y = 0;
					w = 0.69;//w = 0.7;
					h = 1;//h = 2.15;
				};
			};
};
class Schreiben: Life_RscButtonMenu
{
	animTextureNormal = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDisabled = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureOver = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureFocused = "#(argb,8,8,3)color(1,1,1,0)";
	animTexturePressed = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDefault = "#(argb,8,8,3)color(1,1,1,0)";
	idc = 887892;
	onButtonClick = "[4] call life_fnc_smartphone;";

	x = 0.1275;
	y = 0.86;
	w = 0.11;
	h = 0.02;
	colorText[] = {1,1,1,1};
	colorBackground[] = {1,1,1,0};
};
class CloseLoadMenu: Life_RscButtonMenu
{
	animTextureNormal = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDisabled = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureOver = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureFocused = "#(argb,8,8,3)color(1,1,1,0)";
	animTexturePressed = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDefault = "#(argb,8,8,3)color(1,1,1,0)";
	onButtonClick = "closeDialog 0;";

	idc = 1009;
	x = 0.0925;
	y = 0.144;
	w = 0.02125;
	h = 0.016;
	colorText[] = {1,1,1,1};
	colorBackground[] = {1,1,1,0};
};
class Notruf: Life_RscButtonMenu
{
	animTextureNormal = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDisabled = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureOver = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureFocused = "#(argb,8,8,3)color(1,1,1,0)";
	animTexturePressed = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDefault = "#(argb,8,8,3)color(1,1,1,0)";
	onButtonClick = "createDialog ""Life_smartphone_notruf"";";

	idc = 1010;
	x = 0.515;
	y = 0.856;
	w = 0.20875;
	h = 0.04;
	colorText[] = {1,1,1,1};
	colorBackground[] = {1,1,1,0};
};

	};

};

class Life_smartphone_schreiben
{

	idd = 88883;
	name = "life_my_smartphone_schreiben";
	movingEnable = false;
	enableSimulation = true;
	onLoad = "";
	

	class controlsBackground {
class tablette: life_RscPicture
{
	animTextureNormal = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDisabled = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureOver = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureFocused = "#(argb,8,8,3)color(1,1,1,0)";
	animTexturePressed = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDefault = "#(argb,8,8,3)color(1,1,1,0)";
	idc = 9043;

	text = "ama_items\menus\phoneecrire.paa";
	x = 0;
	y = -0.12;
	w = 1;
	h = 1.28;
};
		
	};
	class controls {
		class Absenden: Life_RscButtonMenu
{
	animTextureNormal = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDisabled = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureOver = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureFocused = "#(argb,8,8,3)color(1,1,1,0)";
	animTexturePressed = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDefault = "#(argb,8,8,3)color(1,1,1,0)";
	idc = 88885;
	onButtonClick = "[1,-1,(ctrlText 88884)] call life_fnc_newMsg;";

	x = 0.4075;
	y = 0.82;
	w = 0.21125;
	h = 0.04;
	colorText[] = {1,1,1,0};
	colorBackground[] = {1,1,1,0};
};
class Close: Life_RscButtonMenu
{
	onButtonClick = "closeDialog 0;";

	animTextureNormal = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDisabled = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureOver = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureFocused = "#(argb,8,8,3)color(1,1,1,0)";
	animTexturePressed = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDefault = "#(argb,8,8,3)color(1,1,1,0)";
	idc = 1004;
	x = 0.09;
	y = 0.136;
	w = 0.0262501;
	h = 0.028;
	colorText[] = {1,1,1,0};
	colorBackground[] = {1,1,1,0};
};
class textEdit: Life_RscEdit
{
	idc = 88884;
	colorBackground[] = {0,0,0,0};
	style = ST_MULTI + 512;
	shadow = 0;
	text = "";
	colorSelection[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0};
	x = 0.1175;
	y = 0.256;
	w = 0.7625;
	h = 0.518;
};

	
	};
	
};

class Life_smartphone_notruf {
	idd = 887890;
	name= "life_my_smartphone_notruf";
	movingEnable = false;
	enableSimulation = true;
	onLoad = "[6] spawn life_fnc_newMsg;";
	
	class controlsBackground {

	class tablette: life_RscPicture
{
	idc = 9044;

	text = "ama_items\menus\phoneurgence.paa"; //--- ToDo: Localize;
	x = 0;
	y = -0.12;
	w = 1;
	h = 1.28;
};
};

	
	class controls {
	class textEdit: Life_RscEdit
{
	idc = 888894;
	colorBackground[] = {0,0,0,0};
	style = ST_MULTI + 512;
	shadow = 0;
	text = "";
	colorSelection[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0};
	x = 0.12;
	y = 0.254;
	w = 0.76;
	h = 0.522;
};
class TxtCopButton: Life_RscButtonMenu
{
	idc = 888895;
	onButtonClick = "[2,-1,(ctrlText 888894)] call life_fnc_newMsg;";

	x = 0.3125;
	y = 0.8;
	w = 0.135;
	h = 0.04;
	colorText[] = {1,1,1,0};
	colorBackground[] = {1,1,1,0};
	animTextureNormal = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDisabled = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureOver = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureFocused = "#(argb,8,8,3)color(1,1,1,0)";
	animTexturePressed = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDefault = "#(argb,8,8,3)color(1,1,1,0)";
};
class AdminMsgAll: Life_RscButtonMenu
{
	idc = 888898;
	onButtonClick = "[7,-1,(ctrlText 888894)] call life_fnc_newMsg;";

	x = 0.4525;
	y = 0.856;
	w = 0.115;
	h = 0.044;
	colorText[] = {1,1,1,0};
	colorBackground[] = {1,1,1,0};
	animTextureNormal = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDisabled = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureOver = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureFocused = "#(argb,8,8,3)color(1,1,1,0)";
	animTexturePressed = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDefault = "#(argb,8,8,3)color(1,1,1,0)";
};
class EMSReq: Life_RscButtonMenu
{
	idc = 888899;
	onButtonClick = "[4,-1,(ctrlText 888894)] call life_fnc_newMsg;";

	x = 0.5725;
	y = 0.8;
	w = 0.1375;
	h = 0.04;
	colorText[] = {1,1,1,0};
	colorBackground[] = {1,1,1,0};
	animTextureNormal = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDisabled = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureOver = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureFocused = "#(argb,8,8,3)color(1,1,1,0)";
	animTexturePressed = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDefault = "#(argb,8,8,3)color(1,1,1,0)";
};
class CloseButton: Life_RscButtonMenu
{
	onButtonClick = "closeDialog 0;";

	idc = 1006;
	x = 0.0925;
	y = 0.144;
	w = 0.0212501;
	h = 0.02;
	colorText[] = {1,1,1,0};
	colorBackground[] = {1,1,1,0};
	animTextureNormal = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDisabled = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureOver = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureFocused = "#(argb,8,8,3)color(1,1,1,0)";
	animTexturePressed = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDefault = "#(argb,8,8,3)color(1,1,1,0)";
};

		
	};
};