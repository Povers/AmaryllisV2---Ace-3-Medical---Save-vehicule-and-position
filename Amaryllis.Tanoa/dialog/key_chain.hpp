class Life_key_management {
	idd = 2700;
	name= "life_key_chain";
	movingEnable = false;
	enableSimulation = true;
	onLoad = "[] spawn life_fnc_keyMenu;";
	
	class controlsBackground {

	class tablette: life_RscPicture
	{
	idc = 9041;

	text = "ama_items\menus\menucles.paa";
	x = 0;
	y = -0.12;
	w = 1;
	h = 1.28;
	};
};
	
	class controls {

		class KeyChainList: Life_RscListBox
{
	idc = 2701;

	x = 0.13;
	y = 0.212;
	w = 0.735;
	h = 0.49;
};
class CloseButtonKey: Life_RscButtonMenu
{
	onButtonClick = "closeDialog 0;";

	animTextureNormal = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDisabled = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureOver = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureFocused = "#(argb,8,8,3)color(1,1,1,0)";
	animTexturePressed = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDefault = "#(argb,8,8,3)color(1,1,1,0)";

	idc = 1003;
	x = 0.0925;
	y = 0.14;
	w = 0.02125;
	h = 0.024;
	colorText[] = {0,0,0,0};
	colorBackground[] = {0,0,0,0};
	colorActive[] = {0,0,0,0};
};
class NearPlayers: Life_RscCombo
{
	idc = 2702;

	x = 0.3775;
	y = 0.72;
	w = 0.275;
	h = 0.03;
};
class DropKey: Life_RscButtonMenu
{
	onButtonClick = "[] call life_fnc_keyDrop";

	animTextureNormal = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDisabled = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureOver = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureFocused = "#(argb,8,8,3)color(1,1,1,0)";
	animTexturePressed = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDefault = "#(argb,8,8,3)color(1,1,1,0)";

	idc = 1005;
	x = 0.5775;
	y = 0.804;
	w = 0.12625;
	h = 0.032;
	colorText[] = {1,1,1,0};
	colorBackground[] = {0,0,0,0};
	colorActive[] = {1,1,1,0};
};
class GiveKey: Life_RscButtonMenu
{
	idc = 2703;
	onButtonClick = "[] call life_fnc_keyGive";

	animTextureNormal = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDisabled = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureOver = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureFocused = "#(argb,8,8,3)color(1,1,1,0)";
	animTexturePressed = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDefault = "#(argb,8,8,3)color(1,1,1,0)";

	x = 0.275;
	y = 0.8;
	w = 0.13875;
	h = 0.032;
	colorText[] = {1,1,1,0};
	colorBackground[] = {1,1,1,0};
	colorActive[] = {1,1,1,0};
};
	};
};