/*
Made in PopovMother by Popov Maggle !
*/

private ["_sender","_uidp"];

// Set des données aux variables
_sender = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;


//---> Give des clées au joueur
// Véhicules
{
	_dbInfo = _x getVariable["dbInfo",[]];
	if(count _dbInfo > 0) then
	{
		/*diag_log "******************************************************";
		diag_log "******************************************************";
		diag_log "******************************************************";
		diag_log "******************************************************";
		diag_log "******************************************************";
		diag_log "******************************************************";
		diag_log format["_x : %1",_x];
		diag_log format["sender : %1",_sender];*/
		_uidp=(name _sender);
		//diag_log format["name sender : %1",_uidp];
		
		
		// Proprio du véhicule
		_uid = _dbInfo select 0;
		//diag_log format["uid proprio : %1",_uid];	
	//	diag_log "---------------------------------------------------------------";		
	//	diag_log "---------------------------------------------------------------";		
	//	diag_log "---------------------------------------------------------------";		
		if(_uid == (getPlayerUID _sender)) then 
		{
			[[_x,"vehicle_info_owners",[[_uid, (name _sender)]],true],"TON_fnc_setObjVar",false,false] spawn life_fnc_MP;
			[[_x],"life_fnc_addVehicle2Chain", _sender, false] spawn life_fnc_MP;
			[[_uid, side _sender, _x, 1],"TON_fnc_keyManagement",false,false] spawn life_fnc_MP;
		}; 					
	};
} foreach allMissionObjects "Car";

// Avions
{
	_dbInfo = _x getVariable["dbInfo",[]];
	if(count _dbInfo > 0) then
	{
		// Proprio du véhicule
		_uid = _dbInfo select 0;
		
		if(_uid == (getPlayerUID _sender)) then 
		{ 		
			[[_x,"vehicle_info_owners",[[_uid, (name _sender)]],true],"TON_fnc_setObjVar",false,false] spawn life_fnc_MP;
			[[_x],"life_fnc_addVehicle2Chain", _sender, false] spawn life_fnc_MP;
			[[_uid, side _sender, _x, 1],"TON_fnc_keyManagement",false,false] spawn life_fnc_MP;
		};			
	};
} foreach allMissionObjects "Air";

// Bateaux
{
	_dbInfo = _x getVariable["dbInfo",[]];
	if(count _dbInfo > 0) then
	{
		// Proprio du véhicule
		_uid = _dbInfo select 0;
		
		if(_uid == (getPlayerUID _sender)) then 
		{ 		
			[[_x,"vehicle_info_owners",[[_uid, (name _sender)]],true],"TON_fnc_setObjVar",false,false] spawn life_fnc_MP;
			[[_x],"life_fnc_addVehicle2Chain", _sender, false] spawn life_fnc_MP;
			[[_uid, side _sender, _x, 1],"TON_fnc_keyManagement",false,false] spawn life_fnc_MP;
		};			
	};
} foreach allMissionObjects "Ship";