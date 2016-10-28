#include <macro.h>
/*
	File: fn_initCop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Cop Initialization file.
*/
private["_end","_playerPosition"];
waitUntil {!(isNull (findDisplay 46))};
_end = false;
if(life_blacklisted) exitWith
{
	["Blacklisted",false,true] call BIS_fnc_endMission;
	sleep 30;
};

if(!(str(player) in ["cop_99"])) then { 
	if((__GETC__(life_coplevel) == 0) && (__GETC__(life_adminlevel) == 0)) then {
		["NotWhitelisted",false,true] call BIS_fnc_endMission;
		sleep 35;
	};
};

/*
if(face player in life_women && !life_womenlevel) then
{
	player enableSimulation false;
	["NotWomen",false,true] call BIS_fnc_endMission;
	sleep 35;
};
*/
player setVariable["rank",(__GETC__(life_coplevel)),true];




_playerPosition = civ_position;


if (!life_is_alive) then
{
	[] call life_fnc_spawnMenu;
	waitUntil{!isNull (findDisplay 38500)};
	waitUntil{isNull (findDisplay 38500)}; 
	life_is_alive = true;
}	
else
{
	player setPos _playerPosition;
	hint format["Vous êtes toujours en vie. Vous êtes de retour à votre dernière position connue."];
	life_is_alive = true;
}; 

if (playerSide == west) then {

player setVariable ['copLevel',1]; //

};

player addRating 9999999;