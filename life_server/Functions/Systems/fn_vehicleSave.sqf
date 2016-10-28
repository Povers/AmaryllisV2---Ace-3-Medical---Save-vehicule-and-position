/*
Made in PopovMother by Popov Maggle !
*/

//---> Get des véhicules sur le Serveur
// Véhicules
while {true} do
{
	// Véhicules
	{
		_dbInfo = _x getVariable["dbInfo",[]];
		if(count _dbInfo > 0) then
		{
			// Update sur la BDD
			_query = format["UPDATE vehicles SET position='%1', dir='%2' WHERE plate='%3' AND pid='%4'", [(getPosATL _x)] call DB_fnc_mresArray, (getDir _x), (_dbInfo select 1), (_dbInfo select 0)];
			waitUntil {sleep (random 0.3); !DB_Async_Active};
			_queryResult = [_query,1] call DB_fnc_asyncCall;	
			//diag_log format["** DEBUG ** Save véhicule : %1 - Position : %2 - Proprio : %3 - Azimut %4", (_dbInfo select 1), [(getPosATL _x)] call DB_fnc_mresArray, (_dbInfo select 0), (getDir _x)];
			//[_dbInfo select 1,"life_fnc_yinvvhesave"] spawn life_fnc_MP;
		};
	} foreach allMissionObjects "Car";

	// Avions
	{
		_dbInfo = _x getVariable["dbInfo",[]];
		if(count _dbInfo > 0) then
		{
			// Update BDD
			_query = format["UPDATE vehicles SET position='%1', dir='%2' WHERE plate='%3' AND pid='%4'", [(getPosATL _x)] call DB_fnc_mresArray, (getDir _x), (_dbInfo select 1), (_dbInfo select 0)];
			waitUntil {sleep (random 0.3); !DB_Async_Active};
			_queryResult = [_query,1] call DB_fnc_asyncCall;	
			//diag_log format["** DEBUG ** Save du véhicule : %1 - Position : %2 - Proprio : %3", (_dbInfo select 1), [(getPosATL _x)] call DB_fnc_mresArray, (_dbInfo select 0)];
			//[_dbInfo select 1,"life_fnc_yinvvhesave"] spawn life_fnc_MP;
		};
	} foreach allMissionObjects "Air";
	
	// Bateaux
	{
		_dbInfo = _x getVariable["dbInfo",[]];
		if(count _dbInfo > 0) then
		{
			// Update BDD
			_query = format["UPDATE vehicles SET position='%1', dir='%2' WHERE plate='%3' AND pid='%4'", [(getPosATL _x)] call DB_fnc_mresArray, (getDir _x), (_dbInfo select 1), (_dbInfo select 0)];
			waitUntil {sleep (random 0.3); !DB_Async_Active};
			_queryResult = [_query,1] call DB_fnc_asyncCall;	
			//diag_log format["** DEBUG ** Save du véhicule : %1 - Position : %2 - Proprio : %3", (_dbInfo select 1), [(getPosATL _x)] call DB_fnc_mresArray, (_dbInfo select 0)];
			//[_dbInfo select 1,"life_fnc_yinvvhesave"] spawn life_fnc_MP;
		};
	} foreach allMissionObjects "Ship";
	
	// Timer de 3 minutes
	sleep 180;
};