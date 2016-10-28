#include <macro.h>
/*
	File: fn_onPlayerRespawn.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Does something but I won't know till I write it...
*/
private["_unit","_corpse"];
_unit = _this select 0;
_unit setVariable ["BIS_enableRandomization",false];
_corpse = _this select 1;
// life_corpse = _corpse;
// life_corpse setVariable["life_corps",true,true];
// _unit setVariable["life_corpse_var",_corpse,true];
hideBody _corpse;

//Comment this code out if you want them to keep the weapon on the ground.
// private["_containers"];
//_containers = nearestObjects[getPosATL _corpse,["WeaponHolderSimulated"],5]; //Fetch list of containers (Simulated = weapons)
//{deleteVehicle _x;} foreach _containers; //Delete the containers.

//Set some vars on our new body.
if (_unit getVariable ["ACE_captives_isHandcuffed", false]) then {
	[_unit, false] call ACE_captives_setHandcuffed;
};
if (_unit getVariable ["ACE_captives_isSurrendering", false]) then {
	[_unit, false] call ACE_captives_setSurrendered;
};
 if (_unit getVariable ["ACE_captives_isEscorting", false]) then {
	_unit setVariable["ACE_captives_isEscorting",false,true];
};
if (_unit getVariable ["ACE_isUnconscious", false]) then {
	_unit setVariable["ACE_isUnconscious",false,true];
};

// _unit setVariable["steam64id",(getPlayerUID player),true]; //Reset the UID.
_unit setVariable["realname",profileName,true]; //Reset the players name.

_unit addRating 9999999999999999; //Set our rating to a high value, this is for a ARMA engine thing.
player playMoveNow "amovppnemstpsraswrfldnon";

[] call life_fnc_setupActions;

[] call life_fnc_spawnMenu;