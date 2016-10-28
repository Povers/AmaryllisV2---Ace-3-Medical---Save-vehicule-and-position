#include "player_sys.sqf"

class playerSettings {

	idd = playersys_DIALOG;
	movingEnable = true;
	enableSimulation = true;
	
	class controlsBackground {
	
class tablette: life_RscPicture
{
	idc = 9041;

	text = "ama_items\menus\menuy.paa"; 
	x = 0;
	y = -0.12;
	w = 1;
	h = 1.28;
};

class moneyStatusInfo: Life_RscStructuredText
{
	idc = 2015;

	text = "";
	x = 0.1625;
	y = 0.248;
	w = 0.26;
	h = 0.16;
	
};

class Title : life_RscTitle {
		colorBackground[] = {0, 0, 0, 0};
		idc = -1;
		text = "";
		x = 0.6275;
		y = 0.248;
		w = 0.0875;
		h = 0.029;
		};
class PlayersName: life_RscTitle
{
	idc = carry_weight;
	text = "";
	style = 1;
	colorBackground[] = {0, 0, 0, 0};

	x = 0.6275;
	y = 0.248;
	w = 0.0875;
	h = 0.029;
	colorText[] = {0.95,0.95,0.95,1};
};	
};

	
	class controls {

class itemList: Life_RscListBox
{
	idc = item_list;

	x = 0.545;
	y = 0.292;
	w = 0.252445;
	h = 0.294182;
	sizeEx = 0.028;
	colorBackground[] = {0,0,0,0};
};
class moneyEdit: Life_RscEdit
{
	idc = 2018;

	text = "1"; //--- ToDo: Localize;
	x = 0.165;
	y = 0.34;
	w = 0.25497;
	h = 0.03;
};
class NearPlayers: Life_RscCombo
{
	idc = 2022;

	x = 0.1675;
	y = 0.378;
	w = 0.125;
	h = 0.036;
};
class Life_RscButtonInvisible1: Life_RscButtonMenu
{
	animTextureNormal = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDisabled = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureOver = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureFocused = "#(argb,8,8,3)color(1,1,1,0)";
	animTexturePressed = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDefault = "#(argb,8,8,3)color(1,1,1,0)";
	colorBackground2[] = {1,1,1,0};
	color[] = {1,1,1,0};
	color2[] = {1,1,1,0};
	colorDisabled[] = {1,1,1,0};
	idc = 2001;
	onButtonClick = "[] call life_fnc_giveMoney;";

	x = 0.305;
	y = 0.388;
	w = 0.10998;
	h = 0.024;
	colorText[] = {1,1,1,0};
	colorBackground[] = {0,0,0,0};
};
class itemEdit: Life_RscEdit
{
	idc = item_edit;

	text = "1"; //--- ToDo: Localize;
	x = 0.55;
	y = 0.604;
	w = 0.247447;
	h = 0.03;
};
class iNearPlayers: Life_RscCombo
{
	idc = 2023;

	x = 0.545;
	y = 0.648;
	w = 0.128717;
	h = 0.034;
};
class Life_RscButtonInvisible2: Life_RscButtonMenu
{
	animTextureNormal = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDisabled = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureOver = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureFocused = "#(argb,8,8,3)color(1,1,1,0)";
	animTexturePressed = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDefault = "#(argb,8,8,3)color(1,1,1,0)";
	colorBackground2[] = {1,1,1,0};
	color[] = {1,1,1,0};
	color2[] = {1,1,1,0};
	colorDisabled[] = {1,1,1,0};
	idc = 2002;
	onButtonClick = "[] call life_fnc_giveItem;";

	x = 0.685;
	y = 0.656;
	w = 0.109976;
	h = 0.02;
	colorText[] = {1,1,1,0};
	colorBackground[] = {0,0,0,0};
};
class Life_RscButtonInvisible3: Life_RscButtonMenu
{
	animTextureNormal = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDisabled = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureOver = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureFocused = "#(argb,8,8,3)color(1,1,1,0)";
	animTexturePressed = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDefault = "#(argb,8,8,3)color(1,1,1,0)";
	colorBackground2[] = {1,1,1,0};
	color[] = {1,1,1,0};
	color2[] = {1,1,1,0};
	colorDisabled[] = {1,1,1,0};
	onButtonClick = "[] call life_fnc_useItem;";
	idc = 1013;

	x = 0.685;
	y = 0.694;
	w = 0.10872;
	h = 0.02;
	colorText[] = {1,1,1,0};
	colorBackground[] = {0,0,0,0};
};
class Life_RscButtonInvisible5: Life_RscButtonMenu
{
	animTextureNormal = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDisabled = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureOver = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureFocused = "#(argb,8,8,3)color(1,1,1,0)";
	animTexturePressed = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDefault = "#(argb,8,8,3)color(1,1,1,0)";
	colorBackground2[] = {1,1,1,0};
	color[] = {1,1,1,0};
	color2[] = {1,1,1,0};
	colorDisabled[] = {1,1,1,0};
	onButtonClick = "[] call life_fnc_removeItem;";
	idc = 1014;

	x = 0.5475;
	y = 0.694;
	w = 0.122474;
	h = 0.016;
	colorText[] = {1,1,1,0};
	colorBackground[] = {0,0,0,0};
};
class Life_RscButtonInvisible6: Life_RscButtonMenu
{
	animTextureNormal = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDisabled = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureOver = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureFocused = "#(argb,8,8,3)color(1,1,1,0)";
	animTexturePressed = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDefault = "#(argb,8,8,3)color(1,1,1,0)";
	colorBackground2[] = {1,1,1,0};
	color[] = {1,1,1,0};
	color2[] = {1,1,1,0};
	colorDisabled[] = {1,1,1,0};
	onButtonClick = "closeDialog 0;";
	idc = 1015;

	x = 0.1;
	y = 0.76;
	w = 0.15625;
	h = 0.04;
	colorText[] = {1,1,1,0};
	colorBackground[] = {0,0,0,0};
};
class Life_RscButtonInvisible30: Life_RscButtonMenu
{
	animTextureNormal = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDisabled = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureOver = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureFocused = "#(argb,8,8,3)color(1,1,1,0)";
	animTexturePressed = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDefault = "#(argb,8,8,3)color(1,1,1,0)";
	colorBackground2[] = {1,1,1,0};
	color[] = {1,1,1,0};
	color2[] = {1,1,1,0};
	colorDisabled[] = {1,1,1,0};
	onButtonClick ="createDialog ""life_dynmarket_prices"";";	idc = 1016;

	x = 0.225;
	y = 0.824;
	w = 0.0475;
	h = 0.06;
	colorText[] = {1,1,1,0};
	colorBackground[] = {0,0,0,0};
};
class Life_RscButtonInvisible7: Life_RscButtonMenu
{
	animTextureNormal = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDisabled = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureOver = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureFocused = "#(argb,8,8,3)color(1,1,1,0)";
	animTexturePressed = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDefault = "#(argb,8,8,3)color(1,1,1,0)";
	colorBackground2[] = {1,1,1,0};
	color[] = {1,1,1,0};
	color2[] = {1,1,1,0};
	colorDisabled[] = {1,1,1,0};
	onButtonClick = "[] call life_fnc_settingsMenu;";
	idc = 1017;

	x = 0.31;
	y = 0.824;
	w = 0.0475;
	h = 0.06;
	colorText[] = {1,1,1,0};
	colorBackground[] = {0,0,0,0};
};
class Life_RscButtonInvisible8: Life_RscButtonMenu
{
	animTextureNormal = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDisabled = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureOver = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureFocused = "#(argb,8,8,3)color(1,1,1,0)";
	animTexturePressed = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDefault = "#(argb,8,8,3)color(1,1,1,0)";
	colorBackground2[] = {1,1,1,0};
	color[] = {1,1,1,0};
	color2[] = {1,1,1,0};
	colorDisabled[] = {1,1,1,0};
	idc = 2011;
	onButtonClick = "if(isNil ""life_action_gangInUse"") then {if(isNil {(group player) getVariable ""gang_owner""}) then {createDialog ""Life_Create_Gang_Diag"";} else {[] spawn life_fnc_gangMenu;};};";

	x = 0.3975;
	y = 0.82;
	w = 0.0475;
	h = 0.064;
	colorText[] = {1,1,1,0};
	colorBackground[] = {0,0,0,0};
};
class Licenses_Menu: Life_RscControlsGroup
{
	idc = 1019;

	x = 0.1625;
	y = 0.532;
	w = 0.2575;
	h = 0.2;

		class Controls
			{
				class Life_Licenses : Life_RscStructuredText
				{
					idc = 2014;
					sizeEx = 0.020;
					text = "";
					x = 0;
					y = 0;
					w = 0.27; h = 1.2;
				};
			};
};
class Life_RscButtonInvisible10: Life_RscButtonMenu
{
	animTextureNormal = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDisabled = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureOver = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureFocused = "#(argb,8,8,3)color(1,1,1,0)";
	animTexturePressed = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDefault = "#(argb,8,8,3)color(1,1,1,0)";
	colorBackground2[] = {1,1,1,0};
	color[] = {1,1,1,0};
	color2[] = {1,1,1,0};
	colorDisabled[] = {1,1,1,0};
	idc = 2013;
	onButtonClick = "createDialog ""Life_key_management"";";

	x = 0.48;
	y = 0.824;
	w = 0.05;
	h = 0.06;
	colorText[] = {1,1,1,0};
	colorBackground[] = {0,0,0,0};
};
class Life_RscButtonInvisible11: Life_RscButtonMenu
{
	animTextureNormal = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDisabled = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureOver = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureFocused = "#(argb,8,8,3)color(1,1,1,0)";
	animTexturePressed = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDefault = "#(argb,8,8,3)color(1,1,1,0)";
	colorBackground2[] = {1,1,1,0};
	color[] = {1,1,1,0};
	color2[] = {1,1,1,0};
	colorDisabled[] = {1,1,1,0};
	idc = 2014;
	onButtonClick = "[] call life_fnc_cellphone2;";

	x = 0.135;
	y = 0.824;
	w = 0.05;
	h = 0.064;
	colorText[] = {1,1,1,0};
	colorBackground[] = {0,0,0,0};
};
};
};