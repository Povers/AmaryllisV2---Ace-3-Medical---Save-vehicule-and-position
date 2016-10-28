/*
	Author: Povers
	
	Description:
	Save inventaire T vehicule
*/
private["_vehicle"];
_vehicle = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _vehicle) exitWith {};

_dbInfo = _vehicle getVariable["dbInfo",[]];
_trunkData = _vehicle getVariable["Trunk",[[],0]];

//diag_log format ["----------------------------->INVENTAIRE AVANT COMPIL T VEHICULE : %1",_trunkData];
_trunkData = [_trunkData] call DB_fnc_mresArray;
//diag_log format ["------------------------------------------------------------------------------------>INVENTAIRE T VEHICULE : %1",_trunkData];

_query = format["UPDATE vehicles SET inventory='%1'WHERE plate='%2' AND pid='%3'",_trunkData, (_dbInfo select 1), (_dbInfo select 0)];
//diag_log format ["------------------------------------------------------------------------------------>QUERY : %1",_query];

waitUntil{!DB_Async_Active};
[_query,1] call DB_fnc_asyncCall;