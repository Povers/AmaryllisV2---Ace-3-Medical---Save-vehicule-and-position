#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{

	case "med_shop":
	{
		_return = [
			["mercedes_sprinter_ambulancia_F",0],
			["cnp_Defender",0]
			
		];
	};
	
	case "med_air_hs": 
	{
		_return = [
			["ama_smt_dragon",0]
		];
	};

	
	case "civ_depanneur": {

		_return = 
		[
			["Jonzie_Tow_Truck",30000]
		];
	};
	
	
	case "civ_car":
	{
		_return = 
		[
			["C_Quadbike_01_F",500],
			["C_Offroad_01_F",3000],
			["C_Offroad_02_unarmed_F",3000],
			["ivory_gti",11500],
			["Mrshounka_cherokee_noir",12500],
			["C_SUV_01_F",34000],
			["Mrshounka_raptor_civ",35500],
			["Mrshounka_Volkswagen_Touareg_civ",36000],
			["Mrshounka_Vandura_civ",59500],
			["shounka_a3_spr_civ",62000]
		];
	};
	
	case "lux_car":
	{
		_return = 
		[
            ["Mrshounka_ducati_p",0],
            ["Mrshounka_yamaha_p",0],
            ["shounka_buggy",0],
            ["Mrshounka_evox_noir",0],
            ["Mrshounka_mustang_civ",0],
            ["shounka_f430_spider",0],
			["shounka_limo_civ",0]
		];
	};
	
	case "civ_truck":
	{
		
		
			_return pushBack ["C_Van_01_transport_F",110000];
			_return pushBack ["C_Van_01_fuel_F",110000];
			_return pushBack ["C_Van_01_box_F",150000];
			_return pushBack ["C_Truck_02_transport_F",190000];
			_return pushBack ["C_Truck_02_fuel_F",250000];
			_return pushBack ["C_Truck_02_covered_F",250000];
		if(license_civ_entreprise) then
		{
			_return pushBack ["Jonzie_Box_Truck",300000];
			_return pushBack ["Jonzie_Tanker_Truck",300000];
			_return pushBack ["shounka_a3_renaultmagnum_f",400000];
		};
		
			
	};
	

	case "reb_car":
	{
		_return =
		[
			["C_Quadbike_01_F",500],
			["C_Offroad_01_F",45000],
			["O_T_LSV_02_unarmed_F",300000]
		];

	};

		case "reb_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",500000]
		];

	};
	
	case "cop_car":
	{
		_return pushBack ["C_Offroad_02_unarmed_F",0];
		
        // Sdt 1er classe
		if(__GETC__(life_coplevel) > 1) then
		{
			_return pushBack ["ama_prowler_at",0];

		};
		// Adjudant
		if(__GETC__(life_coplevel) > 3) then 
		{
			_return pushBack ["C_SUV_01_F",0];
			_return pushBack ["ama_tigr_at",0];
		};
	};
	
	case "civ_air":
	{
		
		_return =
		[
			["C_Heli_Light_01_civil_F",350000],
			["C_Plane_Civil_01_F",225000],
			["sab_piper",175000],
			["sab_FAAllegro",175000]
		];
	};
	
	case "cop_air":
	{

		
		
		// Soldat 1er classe
		if(__GETC__(life_coplevel) > 1) then
		{
			_return pushBack ["ama_at_mh9",0];
		};
		// Lieutenant
		if(__GETC__(life_coplevel) > 4) then
		{
			_return pushBack ["ama_at_orca",0];
		};
		

	};
	
	
	case "civ_ship":
	{
		
			_return pushBack ["C_Scooter_Transport_01_F",10000];
			_return pushBack ["B_Boat_Transport_01_F",17500];
			_return pushBack ["C_Boat_Civil_01_F",25000];
			if(license_civ_sosovu) then
			{
			_return pushBack ["ama_civ_boat",35000];
			};
		
	};

	case "cop_ship":
	{
		
		_return pushBack ["B_Boat_Transport_01_F",0];

	    // Sdt 1er classe
		if(__GETC__(life_coplevel) > 1) then
		{
			_return pushBack ["I_C_Boat_Transport_02_F",0];

		};
		// Adjudant
		if(__GETC__(life_coplevel) > 3) then 
		{
			_return pushBack ["B_SDV_01_F",0];
		};
		
	};


	case "gouv_car": {
	if(license_civ_gouv) then
		{
			_return pushBack ["shounka_a3_peugeot508_civ_noir",0];
			_return pushBack ["ivory_suburban",0];
		};
	};
	
};

_return;
