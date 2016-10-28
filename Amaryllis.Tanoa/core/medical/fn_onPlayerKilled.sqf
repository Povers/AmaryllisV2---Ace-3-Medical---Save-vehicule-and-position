#include <macro.h>
/*
	File: fn_onPlayerKilled.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	When the player dies collect various information about that player
	and pull up the death dialog / camera functionality.
*/
private["_veh","_unitname","_killername"];
params [
	["_unit",ObjNull,[ObjNull]],
	["_killer",ObjNull,[ObjNull]]
];

// disableSerialization;

if((vehicle _unit) != _unit) then {
	UnAssignVehicle _unit;
	_unit action ["getOut", vehicle _unit];
	_unit setPosATL [(getPosATL _unit select 0) + 3, (getPosATL _unit select 1) + 1, 0];
};

//Set some vars
_unit setVariable["name",profileName,true]; //Set my name so they can say my name.


if (_unit getVariable ["ACE_captives_isHandcuffed", false]) then {
	[_unit, false] call ACE_captives_setHandcuffed;
};/*
if (_unit getVariable ["ACE_captives_isSurrendering", false]) then {
	[_unit, false] call ACE_captives_setSurrendered;
};*/
if (_unit getVariable ["ACE_captives_isEscorting", false]) then {
	_unit setVariable["ACE_captives_isEscorting",false,true];
};
if (_unit getVariable ["ACE_isUnconscious", false]) then {
	_unit setVariable["ACE_isUnconscious",false,true];
};


// _unit setVariable["steam64id",(getPlayerUID player),true]; //Set the UID.
_unit setVariable["side",playerSide,true]; //Set the UID.
_unit setVariable["realname",profileName,true];

_unitname = name _unit;
_killername = name _killer;


diag_log format ["[KILL] VICTIME %1 - MEURTRIER %2",_unitname,_killername];
//Setup our camera view
/*
life_deathCamera  = "CAMERA" camCreate (getPosATL _unit);
showCinemaBorder true;
life_deathCamera cameraEffect ["Internal","Back"];
createDialog "DeathScreen";
life_deathCamera camSetTarget _unit;
life_deathCamera camSetRelPos [0,3.5,4.5];
life_deathCamera camSetFOV .5;
life_deathCamera camSetFocus [50,0];
life_deathCamera camCommit 0;
*/

/*
(findDisplay 7300) displaySetEventHandler ["KeyDown","if((_this select 1) == 1) then {true}"]; //Block the ESC menu

//Create a thread for something?
_unit spawn
{
	private["_maxTime","_RespawnBtn","_Timer"];
	disableSerialization;
	_RespawnBtn = ((findDisplay 7300) displayCtrl 7302);
	_Timer = ((findDisplay 7300) displayCtrl 7301);
	if(__GETC__(life_adminlevel) > 0) then {
		maxTimeRespawn = time + 10;
		_RespawnBtn ctrlEnable false;
		waitUntil {_Timer ctrlSetText format[localize "STR_Medic_Respawn",[(maxTimeRespawn - time),"MM:SS.MS"] call BIS_fnc_secondsToString];
		round(maxTimeRespawn - time) <= 0 OR isNull _this};
		_RespawnBtn ctrlEnable true;
		_Timer ctrlSetText localize "STR_Medic_Respawn_2";
		maxTimeRespawn = 0;
	} else {
		maxTimeRespawn = time + (life_respawn_timer * 60);
		_RespawnBtn ctrlEnable false;
		waitUntil {_Timer ctrlSetText format[localize "STR_Medic_Respawn",[(maxTimeRespawn - time),"MM:SS.MS"] call BIS_fnc_secondsToString];
		round(maxTimeRespawn - time) <= 0 OR isNull _this};
		_RespawnBtn ctrlEnable true;
		_Timer ctrlSetText localize "STR_Medic_Respawn_2";
		maxTimeRespawn = 0;
	};
};

[_unit] spawn life_fnc_deathScreen;

//Create a thread to follow with some what precision view of the corpse.
[_unit] spawn
{
	private["_unit"];
	_unit = _this select 0;
	waitUntil {if(speed _unit == 0) exitWith {true}; life_deathCamera camSetTarget _unit; life_deathCamera camSetRelPos [0,3.5,4.5]; life_deathCamera camCommit 0;};
};
*/


/*if(!isNull _killer && {_killer != _unit}) then {
	life_removeWanted = true;
};*/

cutText["","BLACK FADED"];
0 cutFadeOut 9999999;

[_unit,true] call life_fnc_dropItems;
if(life_carryWeight != 0) then {
	life_carryWeight = 0;
};


life_hunger = 100;
life_thirst = 100;
life_carryWeight = 0;
life_cash = 0;


[] call life_fnc_hudUpdate; //Get our HUD updated.

[] call SOCK_fnc_updateRequest;
