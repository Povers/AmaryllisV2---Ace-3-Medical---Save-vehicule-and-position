/*
	Author: Povers
	
	Description:
	Save inventaire I vehicule
*/
private["_vehicle"];
_vehicle = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_dbInfo = _vehicle getVariable["dbInfo",[]];

diag_log format ["--------------->Save I VEH : %1",_dbInfo];


_arr = [];

	_className = typeOf _x;
	_weapons = getWeaponCargo _x;
	_magazines = getMagazineCargo _x;
	_items = getItemCargo _x;
	_backpacks = getBackpackCargo _x;
	
	_arr pushBack [_className,[_weapons,_magazines,_items,_backpacks]];


_arr = [_arr] call DB_fnc_mresArray;
//diag_log format ["------------------------------------------------------------------------------------>INVENTAIRE COFFRE VEH : %1",_arr];
_query = format["UPDATE vehicles SET gear='%1' WWHERE plate='%2' AND pid='%3'",_arr, (_dbInfo select 1), (_dbInfo select 0)];
//diag_log format ["------------------------------------------------------------------------------------>QUERY : %1",_query];

waitUntil{!DB_Async_Active};
[_query,1] call DB_fnc_asyncCall;
//systemChat "Query ran?";