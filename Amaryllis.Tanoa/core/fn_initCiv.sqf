/*
	File: fn_initCiv.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Initializes the civilian.
*/
#include <macro.h>
private["_spawnPos","_playerPosition"];
civ_spawn_1 = nearestObjects[getMarkerPos  "civ_spawn_1", ["Land_Shop_Town_03_F","Land_Shop_City_02_F","Land_Shop_Town_01_F"],300];
civ_spawn_2 = nearestObjects[getMarkerPos  "civ_spawn_2", ["Land_Shop_Town_03_F","Land_Shop_City_02_F","Land_Shop_Town_01_F"],300];
civ_spawn_3 = nearestObjects[getMarkerPos  "civ_spawn_3", ["Land_Shop_Town_03_F","Land_Shop_City_02_F","Land_Shop_Town_01_F"],300];
civ_spawn_4 = nearestObjects[getMarkerPos  "civ_spawn_4", ["Land_Shop_Town_03_F","Land_Shop_City_02_F","Land_Shop_Town_01_F"],300];

waitUntil {!(isNull (findDisplay 46))};
_playerPosition = civ_position;
/*
if(face player in life_women && !life_womenlevel) then
{
	player enableSimulation false;
	["NotWomen",false,true] call BIS_fnc_endMission;
	sleep 35;
};
*/
if (!life_is_alive) then
{
	[] call life_fnc_spawnMenu;
	waitUntil{!isNull (findDisplay 38500)};
	waitUntil{isNull (findDisplay 38500)}; 
	life_is_alive = true;
}	
else
{
	if(life_is_arrested) then
	{
		life_is_arrested = false;
		[player,true] spawn life_fnc_jail;
	} 
	else 
	{
		player setPos _playerPosition;
		hint format["Vous vous reveillez après une longue sieste."];
	};	
	life_is_alive = true;
}; 

player addRating 9999999;