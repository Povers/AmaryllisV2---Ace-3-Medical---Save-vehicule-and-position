class shops_menu {
	idd = 2400;
	name= "shops_menu";
	movingEnable = false;
	enableSimulation = true;
	//onLoad = "['guns'] execVM 'gear\switch.sqf'";
	
	class controlsBackground {
class tablette: life_RscPicture
{
	idc = 9041;

	text = "ama_items\menus\menuechangevirt.paa"; //--- ToDo: Localize;
	x = 0;
	y = -0.12;
	w = 1;
	h = 1.28;
};
	};
	
	class controls {

		class itemList: Life_RscListBox
{
	idc = 2401;

	x = 0.115;
	y = 0.26;
	w = 0.3;
	h = 0.488;
};
class pItemlist: Life_RscListBox
{
	idc = 2402;

	x = 0.58;
	y = 0.258;
	w = 0.315;
	h = 0.484;
};
class buyEdit: Life_RscEdit
{
	idc = 2404;

	text = "1"; //--- ToDo: Localize;
	x = 0.135;
	y = 0.76;
	w = 0.27;
	h = 0.03;
};
class ButtonAddG: Life_RscButtonMenu
{
	onButtonClick = "[] spawn life_fnc_virt_buy;";

	animTextureNormal = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDisabled = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureOver = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureFocused = "#(argb,8,8,3)color(1,1,1,0)";
	animTexturePressed = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDefault = "#(argb,8,8,3)color(1,1,1,0)";

	idc = 1010;
	x = 0.19;
	y = 0.832;
	w = 0.12125;
	h = 0.028;
	colorText[] = {1,1,1,0};
	colorBackground[] = {1,1,1,0};
	colorActive[] = {1,1,1,0};
};
class sellEdit: Life_RscEdit
{
	idc = 2405;

	text = "1"; //--- ToDo: Localize;
	x = 0.6;
	y = 0.764;
	w = 0.27;
	h = 0.03;
};
class ButtonRemoveG: Life_RscButtonMenu
{
	onButtonClick = "[] call life_fnc_virt_sell";

	animTextureNormal = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDisabled = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureOver = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureFocused = "#(argb,8,8,3)color(1,1,1,0)";
	animTexturePressed = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDefault = "#(argb,8,8,3)color(1,1,1,0)";

	idc = 1012;
	x = 0.675;
	y = 0.828;
	w = 0.12125;
	h = 0.036;
	colorText[] = {1,1,1,0};
	colorBackground[] = {1,1,1,0};
	colorActive[] = {1,1,1,0};
};
class ButtonClose: Life_RscButtonMenu
{
	onButtonClick = "closeDialog 0;";

	animTextureNormal = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDisabled = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureOver = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureFocused = "#(argb,8,8,3)color(1,1,1,0)";
	animTexturePressed = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDefault = "#(argb,8,8,3)color(1,1,1,0)";

	idc = 1013;
	x = 0.09;
	y = 0.144;
	w = 0.02625;
	h = 0.024;
	colorText[] = {1,1,1,0};
	colorBackground[] = {1,1,1,0};
	colorActive[] = {1,1,1,0};
};

	};
};

class shops_menubis {
	idd = 2400;
	name= "shops_menubis";
	movingEnable = false;
	enableSimulation = true;
	//onLoad = "['guns'] execVM 'gear\switch.sqf'";
	
	class controlsBackground {
class tablette: life_RscPicture
{
	idc = 9041;

	text = "ama_items\menus\menuechangevirt.paa"; //--- ToDo: Localize;
	x = 0;
	y = -0.12;
	w = 1;
	h = 1.28;
};
	};
	
	class controls {

		class itemList: Life_RscListBox
{
	idc = 2401;

	x = 0.115;
	y = 0.26;
	w = 0.3;
	h = 0.488;
};
class pItemlist: Life_RscListBox
{
	idc = 2402;

	x = 0.58;
	y = 0.258;
	w = 0.315;
	h = 0.484;
};
class buyEdit: Life_RscEdit
{
	idc = 2404;

	text = "1"; //--- ToDo: Localize;
	x = 0.135;
	y = 0.76;
	w = 0.27;
	h = 0.03;
};
class ButtonAddG: Life_RscButtonMenu
{
	onButtonClick = "[] spawn life_fnc_virt_buy;";

	animTextureNormal = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDisabled = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureOver = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureFocused = "#(argb,8,8,3)color(1,1,1,0)";
	animTexturePressed = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDefault = "#(argb,8,8,3)color(1,1,1,0)";

	idc = 1010;
	x = 0.19;
	y = 0.832;
	w = 0.12125;
	h = 0.028;
	colorText[] = {1,1,1,0};
	colorBackground[] = {1,1,1,0};
	colorActive[] = {1,1,1,0};
};
class sellEdit: Life_RscEdit
{
	idc = 2405;

	text = "1"; //--- ToDo: Localize;
	x = 0.6;
	y = 0.764;
	w = 0.27;
	h = 0.03;
};
class ButtonRemoveG: Life_RscButtonMenu
{
	onButtonClick = "[] call life_fnc_virt_sellbis";

	animTextureNormal = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDisabled = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureOver = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureFocused = "#(argb,8,8,3)color(1,1,1,0)";
	animTexturePressed = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDefault = "#(argb,8,8,3)color(1,1,1,0)";

	idc = 1012;
	x = 0.675;
	y = 0.828;
	w = 0.12125;
	h = 0.036;
	colorText[] = {1,1,1,0};
	colorBackground[] = {1,1,1,0};
	colorActive[] = {1,1,1,0};
};
class ButtonClose: Life_RscButtonMenu
{
	onButtonClick = "closeDialog 0;";

	animTextureNormal = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDisabled = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureOver = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureFocused = "#(argb,8,8,3)color(1,1,1,0)";
	animTexturePressed = "#(argb,8,8,3)color(1,1,1,0)";
	animTextureDefault = "#(argb,8,8,3)color(1,1,1,0)";

	idc = 1013;
	x = 0.09;
	y = 0.144;
	w = 0.02625;
	h = 0.024;
	colorText[] = {1,1,1,0};
	colorBackground[] = {1,1,1,0};
	colorActive[] = {1,1,1,0};
};

	};
};