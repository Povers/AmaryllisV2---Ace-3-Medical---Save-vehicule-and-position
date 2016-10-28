/*
	File: fn_hudUpdate.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Updates the HUD when it needs to.
*/
private["_ui","_food","_water","_health","_Speak","_img"];
disableSerialization;

_ui = uiNameSpace getVariable ["playerHUD",displayNull];
if(isNull _ui) then {[] call life_fnc_hudSetup;};
_food = _ui displayCtrl 23500;
_water = _ui displayCtrl 23510;
_health = _ui displayCtrl 23515;
_Speak = _ui displayCtrl 23520;

switch (TF_speak_volume_level) do {
	case "whispering" : {_img = "Ama_Items\hud\murmurer.paa";};
	case "normal" : {_img = "Ama_Items\hud\parler.paa";};
	case "yelling" : {_img = "Ama_Items\hud\crier.paa";};
	default {_img = "Ama_Items\hud\parler.paaa";};
}; 


//Update food
_food ctrlSetPosition [safeZoneX+safeZoneW-0.112,safeZoneY+safeZoneH-0.340];
_food ctrlSetText format["%1 %", life_hunger];
_food ctrlCommit 0;
//Update Water
_water ctrlSetPosition [safeZoneX+safeZoneW-0.112,safeZoneY+safeZoneH-0.285];
_water ctrlSetText format["%1 %", life_thirst];
_water ctrlCommit 0;
//Update Health

_health ctrlSetPosition [safeZoneX+safeZoneW-0.112,safeZoneY+safeZoneH-0.230];
_health ctrlSetText format["%1ml", (player getVariable["ACE_medical_bloodVolume",100])*50];
_health ctrlCommit 0; 

//TFR
_Speak ctrlSetPosition [safeZoneX+safeZoneW-0.135,safeZoneY+safeZoneH-0.430];
_Speak ctrlSetText format["%1", _img];
_Speak ctrlCommit 0;