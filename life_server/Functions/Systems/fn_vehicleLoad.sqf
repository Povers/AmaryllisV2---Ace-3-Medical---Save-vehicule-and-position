/*
Made in PopovMother by Popov Maggle !
*/


// Initialisation des variables
private ["_veh"];

// Request SQL
_query = format["SELECT id, side, classname, type, pid, alive, active, plate, color, position, dir, fuel, inventory FROM vehicles WHERE active = '1'"];
waitUntil{!DB_Async_Active};
_veh = [_query, 2, true] call DB_fnc_asyncCall;

_return = [];
{
	// Reset variable
	private ["_vInfo"];
	
	_vInfo = _x;
	
	// On stock le result
	if(typeName _vInfo == "STRING") exitWith {};
	
	_new = [(_vInfo select 9)] call DB_fnc_mresToArray;
	if(typeName _new == "STRING") then {_new = call compile format["%1", _new];};
	_vInfo set[9, _new];

	_trunk = [(_vInfo select 12)] call DB_fnc_mresToArray;
	if(typeName _trunk == "STRING") then {_trunk = call compile format["%1", _trunk];};
	_vInfo set[12, _trunk];

	// Si véhicule sorti
	if ((_vInfo select 6) == 1) then
	{
		// Spawn du Véhicule
		_vehicle = createVehicle [(_vInfo select 2), (_vInfo select 9), [] , 0, "NONE"];
		waitUntil {!isNil "_vehicle" && {!isNull _vehicle}};
		_vehicle allowDamage false;
		_vehicle setPos (_vInfo select 9);
		_vehicle setDir (_vInfo select 10);
		_vehicle setVectorUp (surfaceNormal ((_vInfo select 9)));
			
		// On ferme le véhicule
		_vehicle lock 2;

		// On lui met son coffre
		_vehicle setVariable["Trunk",(_vInfo select 12),true];
		
		// Et son essence [IMPOSSIBLE COMMANDE LOCAL]
		//_vehicle setFuel (_vInfo select 11);
		
		// On applique la peinture
		[[_vehicle, _vInfo select 8], "life_fnc_colorVehicle", nil, false] spawn life_fnc_MP;
			
		//--> On lui défini les variables
		// _uid, name player
		_vehicle setVariable["vehicle_info_owners", [[_vInfo select 4, _vInfo select 7]], true];
		
		// _uid, _plaque
		_vehicle setVariable["dbInfo", [_vInfo select 4, _vInfo select 7], true];
		_vehicle setVariable ["tf_hasRadio", true, true];
        _vehicle setVariable ["tf_range", 50000, true];
			
		// On supprime les munitions --> Oui faut pas dec quand même 
		[_vehicle] call life_fnc_clearVehicleAmmo;
		// On remet les dommages !
		_vehicle allowDamage true;
	};
} foreach _veh;