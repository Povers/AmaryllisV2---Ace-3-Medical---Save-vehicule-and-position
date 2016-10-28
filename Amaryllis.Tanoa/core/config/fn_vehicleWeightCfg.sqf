/*
	File: fn_vehicleWeightCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for vehicle weight.
*/
private["_className"];
_className = [_this,0,"",[""]] call BIS_fnc_param;

switch (_className) do
{

	// civ_car
	case "C_Quadbike_01_F": {25};
	case "C_Offroad_01_F": {45};
	case "BAF_Offroad_D": {45};
	case "C_Offroad_02_unarmed_F": {45};
	case "ivory_gti": {55};
	case "Mrshounka_cherokee_noir": {55};
	case "Mrshounka_raptor_civ": {60};
	case "C_SUV_01_F": {60};
	case "ivory_suburban": {60};
	case "Mrshounka_Volkswagen_Touareg_civ": {60};
	case "Mrshounka_Vandura_civ": {90};
	case "shounka_a3_spr_civ": {90};

	// lux_civ
	case "Mrshounka_ducati_p": {10};
	case "Mrshounka_yamaha_p": {10};
	case "shounka_buggy": {10};
	case "cl3_440cuda_yellow": {45};
	case "cl3_e63_amg_black": {45};
	case "cl3_e60_m5_black": {45};
	case "Mrshounka_evox_noir": {45};
	case "cl3_dodge_chargerum_o_black": {45};
	case "cl3_dbs_volante_black": {45};
	case "Mrshounka_mustang_civ": {45};
	case "cl3_challenger_aquablue": {45};
	case "shounka_f430_spider": {45};
	case "cl3_r8_spyder_black": {45};
	case "cl3_458_black": {45};
	case "shounka_limo_civ": {45};

	// civ_truck
	case "C_Van_01_transport_F": {110};
	case "C_Van_01_fuel_F": {110};
	case "C_Van_01_box_F": {150};
	case "C_Truck_02_transport_F": {230};
	case "C_Truck_02_covered_F": {290};
	case "C_Truck_02_fuel_F": {290};

	// ent_truck
	case "Jonzie_Box_Truck": {350};
	case "Jonzie_Tanker_Truck": {350};
	case "shounka_a3_renaultmagnum_f": {450};

	// Depan
	case "Jonzie_Tow_Truck": {20};
	

	// reb_car
	case "C_Offroad_01_F": {45};
	case "BAF_Offroad_D": {45};
	case "O_T_LSV_02_unarmed_F": {60};
	

	// reb_air
	case "B_Heli_Light_01_F": {15};

	// smt_air
	case "ama_smt_dragon": {20};

	//cop_car

	case "C_Offroad_02_unarmed_F": {45};
	case "ama_tigr_at": {60};
	case "ama_prowler_at": {60};
	case "C_SUV_01_F": {60};

	// civ_air
	case "C_Heli_Light_01_civil_F": {15};
	case "sab_piper": {30};
	case "sab_FAAllegro": {30};
	case "C_Plane_Civil_01_F": {50};

	// civ_ship
	case "C_Scooter_Transport_01_F": {30};
	case "C_Boat_Civil_01_F": {55};
	case "ama_civ_boat": {110};
	case "B_Boat_Transport_01_F": {40};

	//cop_ship
	case "B_Boat_Transport_01_F": {15};
	case "I_C_Boat_Transport_02_F": {60};
	case "B_SDV_01_F": {15};

	//cop_air
	case "ama_at_mh9": {15};
	case "ama_at_orca": {15};

	// gouv_car
	case "shounka_a3_peugeot508_civ_noir": {55};
	case "cl3_suv_black": {55};

	// Housing
	case "Box_IND_Grenades_F": {250};
    case "B_supplyCrate_F": {500};


};