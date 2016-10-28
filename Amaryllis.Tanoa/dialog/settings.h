class SettingsMenu
{
	idd = 2900;
	name = "SettingsMenu";
	movingEnabled = 1;
	enableSimulation = 1;
	
	class controlsBackground
	{
class tablette: life_RscPicture
{
	idc = 9051;

	text = "ama_items\menus\param.paa"; //--- ToDo: Localize;
	x = 0;
	y = -0.12;
	w = 1;
	h = 1.28;
};

	};
	
	class controls
	{


class VD_onfoot_value : life_RscText
{
	idc = 2902;
	text = "";
			
	x = 0.655;
	y = 0.272;
	w = 0.275; 
	h = 0.04;
};


class VD_car_value : life_RscText
		{
			idc = 2912;
			text = "";
			
			x = 0.655; y = 0.3412;
			w = 0.275; h = 0.04;
		};

class VD_air_value : life_RscText
		{
			idc = 2922;
			text = "";
			
			x = 0.655; y = 0.4112;
			w = 0.275; h = 0.04;
		};
class VD_onfoot_slider: life_RscXSliderH
{
	idc = 2901;
	onSliderPosChanged = "[0,_this select 1] call life_fnc_s_onSliderChange;";

	x = 0.3325;
	y = 0.28;
	w = 0.210938;
	h = 0.03125;
};
class VD_car_slider: life_RscXSliderH
{
	idc = 2911;
	onSliderPosChanged = "[1,_this select 1] call life_fnc_s_onSliderChange;";

	x = 0.3325;
	y = 0.346;
	w = 0.210938;
	h = 0.03125;
};
class VD_air_slider: life_RscXSliderH
{
	idc = 2921;
	onSliderPosChanged = "[2,_this select 1] call life_fnc_s_onSliderChange;";

	x = 0.3325;
	y = 0.416;
	w = 0.210938;
	h = 0.03125;
};

// SON
/*class SoundFoot_slider: life_RscXSliderH
{
	idc = 2930;
	onSliderPosChanged = "[3,_this select 1] call life_fnc_s_onSliderChange;";

	x = 0.3325;
	y = 0.654;
	w = 0.210938;
	h = 0.03125;
};
class SoundFoot_value: Life_RscText
{
	idc = 2931;

	x = 0.655;
	y = 0.654;
	w = 0.275;
	h = 0.04;
};
class SoundCar_slider: life_RscXSliderH
{
	idc = 2932;
	onSliderPosChanged = "[4,_this select 1] call life_fnc_s_onSliderChange;";

	x = 0.3325;
	y = 0.72;
	w = 0.210938;
	h = 0.03125;
};
class SoundCar_value: Life_RscText
{
	idc = 2933;

	x = 0.655;
	y = 0.72;
	w = 0.275;
	h = 0.04;
};
class SoundAir_slider: life_RscXSliderH
{
	idc = 2934;
	onSliderPosChanged = "[5,_this select 1] call life_fnc_s_onSliderChange;";

	x = 0.3325;
	y = 0.79;
	w = 0.210938;
	h = 0.03125;
};
class SoundAir_value: Life_RscText
{
	idc = 2935;

	x = 0.655;
	y = 0.79;
	w = 0.275;
	h = 0.04;
};*/
class ButtonClose: Life_RscButtonMenu
{
	onButtonClick = "closeDialog 0;";

	idc = 1025;
	x = 0.0925;
	y = 0.144;
	w = 0.02125;
	h = 0.024;
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
	colorText[] = {1,1,1,0};
	colorBackground[] = {1,1,1,0};
	colorActive[] = {1,1,1,0};
};
	};
};