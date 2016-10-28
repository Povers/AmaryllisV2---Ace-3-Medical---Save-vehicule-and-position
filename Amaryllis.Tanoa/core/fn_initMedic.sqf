#include <macro.h>
/*
	File: fn_initMedic.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Initializes the medic..
*/
private["_end","_playerPosition"];
player addRating 99999999;
waitUntil {!(isNull (findDisplay 46))};
_playerPosition = civ_position;

if((__GETC__(life_medicLevel)) < 1) exitWith {
	["Notwhitelisted",FALSE,TRUE] call BIS_fnc_endMission;
	sleep 35;
};

/*if(face player in life_women && !life_womenlevel) then
{
	player enableSimulation false;
	["NotWomen",false,true] call BIS_fnc_endMission;
	sleep 35;
};
*/
if (!life_is_alive) then
{
	[] call life_fnc_spawnMenu;
	life_is_alive = true;
}
else
{
	//diag_log "*******************************************************************************";
	//diag_log format ["life is alive : %1",life_is_alive];
	//diag_log format ["civpos : %1",_playerPosition];
	//diag_log "*******************************************************************************";
	player setPos _playerPosition;
	hint format["Vous êtes toujours en vie. Vous êtes de retour à votre dernière position connue."];
	life_is_alive = true;
}; 
/*
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.*/