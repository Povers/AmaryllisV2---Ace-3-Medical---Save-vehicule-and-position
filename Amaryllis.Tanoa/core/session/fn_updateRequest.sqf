/*
	File: fn_updateRequest.sqf
	Author: Tonic
*/
private["_packet","_array","_flag","_civPosition"];
_civPosition = getPos player;
// diag_log format ["update req civ pos : %1",_civPosition];
_packet = [getPlayerUID player,(profileName),playerSide,life_cash,life_atmcash];
_array = [];
_flag = switch(playerSide) do {case west: {"cop"}; case civilian: {"civ"}; case independent: {"med"};};
{
	if(_x select 1 == _flag) then
	{
		_array pushBack [_x select 0,(missionNamespace getVariable (_x select 0))];
	};
} foreach life_licenses;
_packet pushBack _array;

[] call life_fnc_saveGear;
_packet pushBack life_gear;
switch (playerSide) do {
	case civilian: {
		_packet pushBack life_is_arrested;
		_packet set[count _packet,_civPosition];
		_packet set[count _packet,life_is_alive];
	};
	
	/* AJOUT COMPLET */ 
	case west: {
		_packet set[count _packet,_civPosition];
		_packet set[count _packet,life_is_alive];
	};
	case independent: {
		_packet set[count _packet,_civPosition];
		_packet set[count _packet,life_is_alive];
	};
};

[_packet,"DB_fnc_updateRequest",false,false] spawn life_fnc_MP;