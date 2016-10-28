/*
	File: fn_spawnPointCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for available spawn points depending on the units side.
	
	Return:
	[Spawn Marker,Spawn Name,Image Path]
*/
private["_side","_return"];
_side = [_this,0,civilian,[civilian]] call BIS_fnc_param;

//Spawn Marker, Spawn Name, PathToImage
switch (_side) do
{
	case west:
	{
		_return = [
			["cop_spawn_1","Base Principale","\a3\ui_f\data\map\LocationTypes\vegetationPalm_CA.paa"],
            ["cop_spawn_2","AP Lijnhaven","\a3\ui_f\data\map\LocationTypes\vegetationPalm_CA.paa"],
			["cop_spawn_3","AP Yanukka","\a3\ui_f\data\map\LocationTypes\vegetationPalm_CA.paa"],
			["cop_spawn_4","AP Ouméré","\a3\ui_f\data\map\LocationTypes\vegetationPalm_CA.paa"]
		];
		life_is_alive = true;

	/*	if(count life_houses > 0) then {
			{
				_pos = call compile format["%1",_x select 0];
				_house = nearestBuilding _pos;
				_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
				
				_return pushBack [format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"];
			} foreach life_houses;
		};*/
	};
	
	case civilian:
	{
		_return = [
			["civ_spawn_1","Georgetown","\a3\ui_f\data\map\LocationTypes\vegetationPalm_CA.paa"],
            ["civ_spawn_2","Lijnhaven","\a3\ui_f\data\map\LocationTypes\vegetationPalm_CA.paa"],
            ["civ_spawn_3","Katkoula","\a3\ui_f\data\map\LocationTypes\vegetationPalm_CA.paa"],
            ["civ_spawn_4","La Rochelle","\a3\ui_f\data\map\LocationTypes\vegetationPalm_CA.paa"]
		];
		life_is_alive = true; // Just in-case the player disconnects before choosing a spawn position I guess? Otherwise debug island it is!
		
		if(count life_houses > 0) then {
			{
				_pos = call compile format["%1",_x select 0];
				_house = nearestObject [_pos,"house_F"];
				_houseName = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
				
				_return pushBack [format["house_%1",_house getVariable "uid"],_houseName,"\a3\ui_f\data\map\MapControl\lighthouse_ca.paa"];
			} foreach life_houses;
		};	
	};
	
	case independent: {
		_return = [
			["medic_spawn_1","Hôpital Georgetown","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_2","Dispensaire Lijnhaven","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_3","Dispensaire Katkoula","\a3\ui_f\data\map\MapControl\hospital_ca.paa"]
		];
		life_is_alive = true;
	};
};

_return;