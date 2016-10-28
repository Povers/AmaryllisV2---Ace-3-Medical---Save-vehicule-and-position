class Life_My_Gang_Diag {
	idd = 2620;
	name= "life_my_gang_menu";
	movingEnable = false;
	enableSimulation = true;
	onLoad = "";
	
	class controlsBackground {
class tablette: life_RscPicture
{
	idc = 9051;

	text = "ama_items\menus\groupegestion.paa"; //--- ToDo: Localize;
	x = 0;
	y = -0.12;
	w = 1;
	h = 1.28;
};
	};
	
	class controls {
		class GangMemberList: Life_RscListBox
{
	idc = 2621;

	x = 0.1225;
	y = 0.2;
	w = 0.3825;
	h = 0.594;
};
class CloseLoadMenu: Life_RscButtonMenu
{
	animTextureNormal = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDisabled = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureOver = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureFocused = "#(argb,8,8,3)color(1,1,1,0)";
	animTexturePressed = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDefault = "#(argb,8,8,3)color(1,1,1,0)";
	onButtonClick = "closeDialog 0;[] call life_fnc_p_updateMenu";

	idc = 1003;
	x = 0.0875;
	y = 0.136;
	w = 0.02875;
	h = 0.032;
	colorText[] = {1,1,1,0};
	colorBackground[] = {1,1,1,0};
	colorActive[] = {1,1,1,0};
};
class GangLeave: Life_RscButtonMenu
{
	
	animTextureNormal = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDisabled = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureOver = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureFocused = "#(argb,8,8,3)color(1,1,1,0)";
	animTexturePressed = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDefault = "#(argb,8,8,3)color(1,1,1,0)";
	onButtonClick = "[] call life_fnc_gangLeave";

	idc = 1004;
	x = 0.5675;
	y = 0.256;
	w = 0.305;
	h = 0.044;
	colorText[] = {1,1,1,0};
	colorBackground[] = {1,1,1,0};
	colorActive[] = {1,1,1,0};
};
class GangLock: Life_RscButtonMenu
{
	idc = 2622;
	animTextureNormal = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDisabled = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureOver = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureFocused = "#(argb,8,8,3)color(1,1,1,0)";
	animTexturePressed = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDefault = "#(argb,8,8,3)color(1,1,1,0)";
	onButtonClick = "[] spawn life_fnc_gangUpgrade";

	x = 0.57;
	y = 0.328;
	w = 0.3025;
	h = 0.044;
	colorText[] = {1,1,1,0};
	colorBackground[] = {1,1,1,0};
	colorActive[] = {1,1,1,0};
};
class GangKick: Life_RscButtonMenu
{
	idc = 2624;
	animTextureNormal = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDisabled = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureOver = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureFocused = "#(argb,8,8,3)color(1,1,1,0)";
	animTexturePressed = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDefault = "#(argb,8,8,3)color(1,1,1,0)";
	onButtonClick = "[] call life_fnc_gangKick";

	x = 0.57;
	y = 0.4;
	w = 0.3;
	h = 0.044;
	colorText[] = {1,1,1,0};
	colorBackground[] = {1,1,1,0};
	colorActive[] = {1,1,1,0};
};
class GangLeader: Life_RscButtonMenu
{
	idc = 2625;
	animTextureNormal = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDisabled = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureOver = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureFocused = "#(argb,8,8,3)color(1,1,1,0)";
	animTexturePressed = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDefault = "#(argb,8,8,3)color(1,1,1,0)";
	onButtonClick = "[] spawn life_fnc_gangNewLeader";

	x = 0.5675;
	y = 0.478;
	w = 0.3;
	h = 0.04;
	colorText[] = {1,1,1,0};
	colorBackground[] = {1,1,1,0};
	colorActive[] = {1,1,1,0};
};
class InviteMember: GangLeader
{
	idc = 2630;
	animTextureNormal = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDisabled = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureOver = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureFocused = "#(argb,8,8,3)color(1,1,1,0)";
	animTexturePressed = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDefault = "#(argb,8,8,3)color(1,1,1,0)";
	onButtonClick = "[] spawn life_fnc_gangInvitePlayer";

	x = 0.5725;
	y = 0.624;
	w = 0.3;
	h = 0.044;
	colorText[] = {1,1,1,0};
	colorBackground[] = {1,1,1,0};
	colorActive[] = {1,1,1,0};
};
class DisbandGang: InviteMember
{
	idc = 2631;
	animTextureNormal = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDisabled = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureOver = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureFocused = "#(argb,8,8,3)color(1,1,1,0)";
	animTexturePressed = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDefault = "#(argb,8,8,3)color(1,1,1,0)";
	onButtonClick = "[] spawn life_fnc_gangDisband";

	x = 0.5675;
	y = 0.552;
	w = 0.305;
	h = 0.04;
	colorText[] = {1,1,1,0};
	colorBackground[] = {1,1,1,0};
	colorActive[] = {1,1,1,0};
};
class ColorList: Life_RscCombo
{
	idc = 2632;

	x = 0.575;
	y = 0.696;
	w = 0.2925;
	h = 0.034;
};

	};
};


class Life_Create_Gang_Diag {
	idd = 2520;
	name= "life_my_gang_menu_create";
	movingEnable = false;
	enableSimulation = true;
	onLoad = "[] spawn {waitUntil {!isNull (findDisplay 2520)};";
	
	class controlsBackground {

class tablette: life_RscPicture
{
	idc = 9050;

	text = "ama_items\menus\groupecrea.paa"; 
	x = 0;
	y = -0.12;
	w = 1;
	h = 1.28;
};
	};
	
	class controls {
	
		class InfoMsg : Life_RscStructuredText
		{
			idc = 2523;
			sizeEx = 0.020;
			text = "";
			x = 0.1;
			y = 0.25;
			w = 0.5; h = .11;
		};
	

		class CloseLoadMenu : Life_RscButtonMenu {
			idc = -1;
			text = "";
			onButtonClick = "closeDialog 0;[] call life_fnc_p_updateMenu;";
			x = 0.0925;
			y = 0.144;
			w = 0.02125;
			h = 0.02;
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
		};
		
		class GangCreateField : Life_RscButtonMenu {
			idc = -1;
			text = "";
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0.5};
			onButtonClick = "[] call life_fnc_createGang";
			x = 0.425;
			y = 0.796;
			w = 0.13625;
			h = 0.044;
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
		};
		
		class CreateGangText : Life_RscEdit
		{
			idc = 2522;
			text = "";
			
			x = 0.225;
			y = 0.504;
			w = 0.5525;
			h = 0.028;
			colorSelection[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", 0};
			shadow = 0;
	
		};
	};
};
