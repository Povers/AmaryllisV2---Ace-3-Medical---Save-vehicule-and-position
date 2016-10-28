class life_dynmarket_prices {
	idd = 7100;
	name= "life_dynmarket_prices";
	movingEnable = false;
	enableSimulation = true;
	onLoad = "[] spawn {sleep 1;[] call life_fnc_LoadIntoListbox;};";
	
	class controlsBackground {

	class tablette: life_RscPicture
{
	idc = 9050;

	text = "ama_items\menus\bourse.paa"; //--- ToDo: Localize;
	x = 0;
	y = -0.12;
	w = 1;
	h = 1.28;
};
	};
	
	class controls {

class RscListbox_1500: Life_RscListBox
{
	idc = 7055;
	onLBSelChanged = "[] spawn {[] call life_fnc_DisplayPrices;};";
	colorBackground[] = {0,0,0,0};

	x = 0.1325;
	y = 0.212;
	w = 0.362828;
	h = 0.5803;
};

class RscButtonMenu_2400: Life_RscButtonMenu
{
	animTextureNormal = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDisabled = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureOver = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureFocused = "#(argb,8,8,3)color(1,1,1,0)";
	animTexturePressed = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDefault = "#(argb,8,8,3)color(1,1,1,0)";
	onButtonClick = "closeDialog 0;";
	idc = 1006;

	x = 0.0925; 
	y = 0.144;
	w = 0.0235125;
	h = 0.0175107;
	colorText[] = {1,1,1,0};
	colorBackground[] = {1,1,1,0};
	colorActive[] = {1,1,1,0};
};
class RscText_1007: Life_RscStructuredText
{
	idc = 7058;

	text = "";
	x = 0.6;
	y = 0.464;
	w = 0.237143;
	h = 0.107777;
	colorText[] = {0.69,0.067,0.078,1};
	style = 0 + 0x02;
	shadow = 0;

	class Attributes {
		font = "PuristaMedium";
		color = "#b01114";
		align = "center";
		shadow = 0;
	};
};
};
};