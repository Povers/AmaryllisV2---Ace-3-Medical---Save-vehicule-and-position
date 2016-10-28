/*
	File: fn_vehicleColorCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for vehicle colors.
*/
private["_vehicle","_ret","_path","_ranger"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
if(_vehicle == "") exitWith {[]};
_ret = [];
_vs = "\shounka_a3_base\couleurs\";
_dircl3 = "\cl3_vehiclefunctions\skins\";

switch (_vehicle) do
{
	case "I_Heli_Transport_02_F":
	{
		_path = "\a3\air_f_beta\Heli_Transport_02\Data\Skins\";
		_ret =
		[
			[_path + "heli_transport_02_1_ion_co.paa","civ",_path + "heli_transport_02_2_ion_co.paa",_path + "heli_transport_02_3_ion_co.paa"],
			[_path + "heli_transport_02_1_dahoman_co.paa","civ",_path + "heli_transport_02_2_dahoman_co.paa",_path + "heli_transport_02_3_dahoman_co.paa"]
		];
	};
	
	case "ama_prowler_at":
	{
		_ret = 
		[
			["\ama_items\veh\prowler\prowler1.paa","cop","\ama_items\veh\prowler\prowler2.paa","\ama_items\veh\prowler\prowler3.paa","\ama_items\veh\prowler\prowler4.paa"]
		];
	};
	case "C_Hatchback_01_sport_F":
	{
		_path = "\a3\soft_f_gamma\Hatchback_01\data\";
		_ret =
		[
			[_path + "hatchback_01_ext_sport01_co.paa","civ"],
			[_path + "hatchback_01_ext_sport02_co.paa","civ"],
			[_path + "hatchback_01_ext_sport03_co.paa","civ"],
			[_path + "hatchback_01_ext_sport04_co.paa","civ"],
			[_path + "hatchback_01_ext_sport05_co.paa","civ"],
			[_path + "hatchback_01_ext_sport06_co.paa","civ"],
			["#(ai,64,64,1)Fresnel(1.3,7)","cop"]
		];
	};
		
	case "C_Offroad_01_F":
	{
		_ret = 
		[
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa", "civ"], 
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa", "civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa", "civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa","civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa","civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa","civ"],
			["#(ai,64,64,1)Fresnel(0.3,3)","fed"],
			["#(ai,64,64,1)Fresnel(1.3,7)","cop"],
			["#(argb,8,8,3)color(0.6,0.3,0.01,1)","civ"]
		];
	};
	
	case "C_Hatchback_01_F":
	{
		_ret =
		[
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base01_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base02_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base03_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base04_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base06_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base07_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base08_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base09_co.paa","civ"]
		];
	};
	
	case "C_Offroad_02_unarmed_F":
	{
		_ret =
		[
			["\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_ext_black_co.paa","civ"],
			["\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_ext_blue_co.paa","civ"],
			["\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_ext_green_co.paa","civ"],
			["\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_ext_orange_co.paa","civ"],
			["\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_ext_red_co.paa","civ"],
			["\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_ext_white_co.paa","civ"],
			["\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_ext_brown_co.paa","civ"],
			["\A3\Soft_F_Exp\Offroad_02\Data\offroad_02_ext_olive_co.paa","cop"]
		];
	};
	
	
	case "C_SUV_01_F":
	{
		_ret =
		[
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_03_co.paa","civ"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_04_co.paa","civ"]
		];
	};
	
	case "C_Van_01_box_F":
	{
		_ret = 
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"]
		];
	};
	
	case "C_Van_01_transport_F":
	{
		_ret = 
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"]
		];
	};

	case "C_Van_01_fuel_F":
	{
		_ret = 
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"]
		];
	};
	
	case "C_Quadbike_01_F":
	{
		_ret = 
		[
			["\A3\Soft_F\Quadbike_01\Data\Quadbike_01_co.paa","cop"],
			["\A3\Soft_F\Quadbike_01\Data\quadbike_01_opfor_co.paa","reb"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_black_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_blue_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_red_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_white_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_indp_co.paa","civ"],
			["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","civ"],
			["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","reb"]
		];
	};
	
	case "B_Heli_Light_01_F":
	{
		_ret = 
		[
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sheriff_co.paa","cop"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_ion_co.paa","fed"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_blue_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_indp_co.paa","donate"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_blueline_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_elliptical_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_furious_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_jeans_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_speedy_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sunset_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_vrana_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_wave_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa","reb"],
			["#(argb,8,8,3)color(1,1,1,0.8)","med"]
		];
	};
	
	case "O_Heli_Light_02_unarmed_F":
	{
		_ret = 
		[
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_co.paa","fed"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_civilian_co.paa","civ"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_indp_co.paa","donate"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_opfor_co.paa","reb"],
			["#(argb,8,8,3)color(1,1,1,0.8)","med"]
		];
	};
	
	case "B_MRAP_01_F":
	{
		_ret = 
		[
			["\A3\Soft_F\MRAP_01\Data\mrap_01_base_co.paa","cop"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};
	
	case "I_Truck_02_covered_F":
	{
		_ret = 
		[
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};
	
	case "I_Truck_02_transport_F":
	{
		_ret = 
		[
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};
	
	case "B_APC_Wheeled_01_cannon_F":
	{
		_ret = 
		[
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};
	
	case "O_Heli_Attack_02_black_F":
	{
		_ret = 
		[
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};
    
    //Véhicules Shounka
    case "Mrshounka_Volkswagen_Touareg_civ":
	{
		_ret = 
		[
			[_vs + "blanc.paa","civ"],
			[_vs + "bleu.paa","civ"],
			[_vs + "bleufonce.paa","civ"],
			[_vs + "carbon.paa","civ"],
			[_vs + "gris.paa","civ"],
			[_vs + "jaune.paa","civ"],
			[_vs + "noir.paa","civ"],
			[_vs + "orange.paa","civ"],
			[_vs + "rose.paa","civ"],
			[_vs + "rouge.paa","civ"],
			[_vs + "rougefonce.paa","civ"],
			[_vs + "vert.paa","civ"],
			[_vs + "vertfonce.paa","civ"],
			[_vs + "violet.paa","civ"]
		];
	};
    
    case "Mrshounka_twingo_p":
	{
		_ret = 
		[
			[_vs + "blanc.paa","civ"],
			[_vs + "bleu.paa","civ"],
			[_vs + "bleufonce.paa","civ"],
			[_vs + "carbon.paa","civ"],
			[_vs + "gris.paa","civ"],
			[_vs + "jaune.paa","civ"],
			[_vs + "noir.paa","civ"],
			[_vs + "orange.paa","civ"],
			[_vs + "rose.paa","civ"],
			[_vs + "rouge.paa","civ"],
			[_vs + "rougefonce.paa","civ"],
			[_vs + "vert.paa","civ"],
			[_vs + "vertfonce.paa","civ"],
			[_vs + "violet.paa","civ"]
		];
	};
    
    case "Mrshounka_megane_rs_2015_civ":
	{
		_ret = 
		[
			[_vs + "blanc.paa","civ"],
			[_vs + "bleu.paa","civ"],
			[_vs + "bleufonce.paa","civ"],
			[_vs + "carbon.paa","civ"],
			[_vs + "gris.paa","civ"],
			[_vs + "jaune.paa","civ"],
			[_vs + "noir.paa","civ"],
			[_vs + "orange.paa","civ"],
			[_vs + "rose.paa","civ"],
			[_vs + "rouge.paa","civ"],
			[_vs + "rougefonce.paa","civ"],
			[_vs + "vert.paa","civ"],
			[_vs + "vertfonce.paa","civ"],
			[_vs + "violet.paa","civ"]
		];
	};
    
    case "Mrshounka_a3_308_civ":
	{
		_ret = 
		[
			[_vs + "blanc.paa","civ"],
			[_vs + "bleu.paa","civ"],
			[_vs + "bleufonce.paa","civ"],
			[_vs + "carbon.paa","civ"],
			[_vs + "gris.paa","civ"],
			[_vs + "jaune.paa","civ"],
			[_vs + "noir.paa","civ"],
			[_vs + "orange.paa","civ"],
			[_vs + "rose.paa","civ"],
			[_vs + "rouge.paa","civ"],
			[_vs + "rougefonce.paa","civ"],
			[_vs + "vert.paa","civ"],
			[_vs + "vertfonce.paa","civ"],
			[_vs + "violet.paa","civ"]
		];
	};
    
    case "Mrshounka_207_civ":
	{
		_ret = 
		[
			[_vs + "blanc.paa","civ"],
			[_vs + "bleu.paa","civ"],
			[_vs + "bleufonce.paa","civ"],
			[_vs + "carbon.paa","civ"],
			[_vs + "gris.paa","civ"],
			[_vs + "jaune.paa","civ"],
			[_vs + "noir.paa","civ"],
			[_vs + "orange.paa","civ"],
			[_vs + "rose.paa","civ"],
			[_vs + "rouge.paa","civ"],
			[_vs + "rougefonce.paa","civ"],
			[_vs + "vert.paa","civ"],
			[_vs + "vertfonce.paa","civ"],
			[_vs + "violet.paa","civ"]
		];
	};
    
    case "shounka_a3_spr_civ":
	{
		_ret = 
		[
			[_vs + "blanc.paa","civ"],
			[_vs + "bleu.paa","civ"],
			[_vs + "bleufonce.paa","civ"],
			[_vs + "carbon.paa","civ"],
			[_vs + "gris.paa","civ"],
			[_vs + "jaune.paa","civ"],
			[_vs + "noir.paa","civ"],
			[_vs + "orange.paa","civ"],
			[_vs + "rose.paa","civ"],
			[_vs + "rouge.paa","civ"],
			[_vs + "rougefonce.paa","civ"],
			[_vs + "vert.paa","civ"],
			[_vs + "vertfonce.paa","civ"],
			[_vs + "violet.paa","civ"]
		];
	};
    
	    case "shounka_a3_renaultmagnum_f":
	{
		_ret = 
		[
			[_vs + "blanc.paa","civ"],
			[_vs + "bleu.paa","civ"],
			[_vs + "bleufonce.paa","civ"],
			[_vs + "carbon.paa","civ"],
			[_vs + "gris.paa","civ"],
			[_vs + "jaune.paa","civ"],
			[_vs + "noir.paa","civ"],
			[_vs + "orange.paa","civ"],
			[_vs + "rose.paa","civ"],
			[_vs + "rouge.paa","civ"],
			[_vs + "rougefonce.paa","civ"],
			[_vs + "vert.paa","civ"],
			[_vs + "vertfonce.paa","civ"],
			[_vs + "violet.paa","civ"]
		];
	};
    case "shounka_a3_cliors_civ":
	{
		_ret = 
		[
			[_vs + "blanc.paa","civ"],
			[_vs + "bleu.paa","civ"],
			[_vs + "bleufonce.paa","civ"],
			[_vs + "carbon.paa","civ"],
			[_vs + "gris.paa","civ"],
			[_vs + "jaune.paa","civ"],
			[_vs + "noir.paa","civ"],
			[_vs + "orange.paa","civ"],
			[_vs + "rose.paa","civ"],
			[_vs + "rouge.paa","civ"],
			[_vs + "rougefonce.paa","civ"],
			[_vs + "vert.paa","civ"],
			[_vs + "vertfonce.paa","civ"],
			[_vs + "violet.paa","civ"]
		];
	};
    
    case "shounka_a3_ds4_civ":
	{
		_ret = 
		[
			[_vs + "blanc.paa","civ"],
			[_vs + "bleu.paa","civ"],
			[_vs + "bleufonce.paa","civ"],
			[_vs + "carbon.paa","civ"],
			[_vs + "gris.paa","civ"],
			[_vs + "jaune.paa","civ"],
			[_vs + "noir.paa","civ"],
			[_vs + "orange.paa","civ"],
			[_vs + "rose.paa","civ"],
			[_vs + "rouge.paa","civ"],
			[_vs + "rougefonce.paa","civ"],
			[_vs + "vert.paa","civ"],
			[_vs + "vertfonce.paa","civ"],
			[_vs + "violet.paa","civ"]
		];
	};
    
    case "Mrshounka_a3_ds3_civ":
	{
		_ret = 
		[
			[_vs + "blanc.paa","civ"],
			[_vs + "bleu.paa","civ"],
			[_vs + "bleufonce.paa","civ"],
			[_vs + "carbon.paa","civ"],
			[_vs + "gris.paa","civ"],
			[_vs + "jaune.paa","civ"],
			[_vs + "noir.paa","civ"],
			[_vs + "orange.paa","civ"],
			[_vs + "rose.paa","civ"],
			[_vs + "rouge.paa","civ"],
			[_vs + "rougefonce.paa","civ"],
			[_vs + "vert.paa","civ"],
			[_vs + "vertfonce.paa","civ"],
			[_vs + "violet.paa","civ"]
		];
	};
    
    case "Mrshounka_yamaha_p":
	{
		_ret = 
		[
			[_vs + "blanc.paa","civ"],
			[_vs + "bleu.paa","civ"],
			[_vs + "bleufonce.paa","civ"],
			[_vs + "carbon.paa","civ"],
			[_vs + "gris.paa","civ"],
			[_vs + "jaune.paa","civ"],
			[_vs + "noir.paa","civ"],
			[_vs + "orange.paa","civ"],
			[_vs + "rose.paa","civ"],
			[_vs + "rouge.paa","civ"],
			[_vs + "rougefonce.paa","civ"],
			[_vs + "vert.paa","civ"],
			[_vs + "vertfonce.paa","civ"],
			[_vs + "violet.paa","civ"]
		];
	};
    
    case "shounka_porsche911":
	{
		_ret = 
		[
			[_vs + "blanc.paa","civ"],
			[_vs + "bleu.paa","civ"],
			[_vs + "bleufonce.paa","civ"],
			[_vs + "carbon.paa","civ"],
			[_vs + "gris.paa","civ"],
			[_vs + "jaune.paa","civ"],
			[_vs + "noir.paa","civ"],
			[_vs + "orange.paa","civ"],
			[_vs + "rose.paa","civ"],
			[_vs + "rouge.paa","civ"],
			[_vs + "rougefonce.paa","civ"],
			[_vs + "vert.paa","civ"],
			[_vs + "vertfonce.paa","civ"],
			[_vs + "violet.paa","civ"]
		];
	};
    
    case "Mrshounka_pagani_c":
	{
		_ret = 
		[
			[_vs + "blanc.paa","civ"],
			[_vs + "bleu.paa","civ"],
			[_vs + "bleufonce.paa","civ"],
			[_vs + "carbon.paa","civ"],
			[_vs + "gris.paa","civ"],
			[_vs + "jaune.paa","civ"],
			[_vs + "noir.paa","civ"],
			[_vs + "orange.paa","civ"],
			[_vs + "rose.paa","civ"],
			[_vs + "rouge.paa","civ"],
			[_vs + "rougefonce.paa","civ"],
			[_vs + "vert.paa","civ"],
			[_vs + "vertfonce.paa","civ"],
			[_vs + "violet.paa","civ"]
		];
	};
    
    case "Mrshounka_a3_gtr_civ":
	{
		_ret = 
		[
			[_vs + "blanc.paa","civ"],
			[_vs + "bleu.paa","civ"],
			[_vs + "bleufonce.paa","civ"],
			[_vs + "carbon.paa","civ"],
			[_vs + "gris.paa","civ"],
			[_vs + "jaune.paa","civ"],
			[_vs + "noir.paa","civ"],
			[_vs + "orange.paa","civ"],
			[_vs + "rose.paa","civ"],
			[_vs + "rouge.paa","civ"],
			[_vs + "rougefonce.paa","civ"],
			[_vs + "vert.paa","civ"],
			[_vs + "vertfonce.paa","civ"],
			[_vs + "violet.paa","civ"]
		];
	};
    
    case "shounka_clk":
	{
		_ret = 
		[
			[_vs + "blanc.paa","civ"],
			[_vs + "bleu.paa","civ"],
			[_vs + "bleufonce.paa","civ"],
			[_vs + "carbon.paa","civ"],
			[_vs + "gris.paa","civ"],
			[_vs + "jaune.paa","civ"],
			[_vs + "noir.paa","civ"],
			[_vs + "orange.paa","civ"],
			[_vs + "rose.paa","civ"],
			[_vs + "rouge.paa","civ"],
			[_vs + "rougefonce.paa","civ"],
			[_vs + "vert.paa","civ"],
			[_vs + "vertfonce.paa","civ"],
			[_vs + "violet.paa","civ"]
		];
	};
    
    case "Mrshounka_mercedes_190_p_civ":
	{
		_ret = 
		[
			[_vs + "blanc.paa","civ"],
			[_vs + "bleu.paa","civ"],
			[_vs + "bleufonce.paa","civ"],
			[_vs + "carbon.paa","civ"],
			[_vs + "gris.paa","civ"],
			[_vs + "jaune.paa","civ"],
			[_vs + "noir.paa","civ"],
			[_vs + "orange.paa","civ"],
			[_vs + "rose.paa","civ"],
			[_vs + "rouge.paa","civ"],
			[_vs + "rougefonce.paa","civ"],
			[_vs + "vert.paa","civ"],
			[_vs + "vertfonce.paa","civ"],
			[_vs + "violet.paa","civ"]
		];
	};
    
    case "shounka_mp4":
	{
		_ret = 
		[
			[_vs + "blanc.paa","civ"],
			[_vs + "bleu.paa","civ"],
			[_vs + "bleufonce.paa","civ"],
			[_vs + "carbon.paa","civ"],
			[_vs + "gris.paa","civ"],
			[_vs + "jaune.paa","civ"],
			[_vs + "noir.paa","civ"],
			[_vs + "orange.paa","civ"],
			[_vs + "rose.paa","civ"],
			[_vs + "rouge.paa","civ"],
			[_vs + "rougefonce.paa","civ"],
			[_vs + "vert.paa","civ"],
			[_vs + "vertfonce.paa","civ"],
			[_vs + "violet.paa","civ"]
		];
	};
    
    case "Mrshounka_lincoln_civ":
	{
		_ret = 
		[
			[_vs + "blanc.paa","civ"],
			[_vs + "bleu.paa","civ"],
			[_vs + "bleufonce.paa","civ"],
			[_vs + "carbon.paa","civ"],
			[_vs + "gris.paa","civ"],
			[_vs + "jaune.paa","civ"],
			[_vs + "noir.paa","civ"],
			[_vs + "orange.paa","civ"],
			[_vs + "rose.paa","civ"],
			[_vs + "rouge.paa","civ"],
			[_vs + "rougefonce.paa","civ"],
			[_vs + "vert.paa","civ"],
			[_vs + "vertfonce.paa","civ"],
			[_vs + "violet.paa","civ"]
		];
	};
    
    case "mrshounka_huracan_c":
	{
		_ret = 
		[
			[_vs + "blanc.paa","civ"],
			[_vs + "bleu.paa","civ"],
			[_vs + "bleufonce.paa","civ"],
			[_vs + "carbon.paa","civ"],
			[_vs + "gris.paa","civ"],
			[_vs + "jaune.paa","civ"],
			[_vs + "noir.paa","civ"],
			[_vs + "orange.paa","civ"],
			[_vs + "rose.paa","civ"],
			[_vs + "rouge.paa","civ"],
			[_vs + "rougefonce.paa","civ"],
			[_vs + "vert.paa","civ"],
			[_vs + "vertfonce.paa","civ"],
			[_vs + "violet.paa","civ"]
		];
	};
    
    case "shounka_f430_spider":
	{
		_ret = 
		[
			[_vs + "blanc.paa","civ"],
			[_vs + "bleu.paa","civ"],
			[_vs + "bleufonce.paa","civ"],
			[_vs + "carbon.paa","civ"],
			[_vs + "gris.paa","civ"],
			[_vs + "jaune.paa","civ"],
			[_vs + "noir.paa","civ"],
			[_vs + "orange.paa","civ"],
			[_vs + "rose.paa","civ"],
			[_vs + "rouge.paa","civ"],
			[_vs + "rougefonce.paa","civ"],
			[_vs + "vert.paa","civ"],
			[_vs + "vertfonce.paa","civ"],
			[_vs + "violet.paa","civ"]
		];
	};
    
    case "Mrshounka_ducati_p":
	{
		_ret = 
		[
			[_vs + "blanc.paa","civ"],
			[_vs + "bleu.paa","civ"],
			[_vs + "bleufonce.paa","civ"],
			[_vs + "carbon.paa","civ"],
			[_vs + "gris.paa","civ"],
			[_vs + "jaune.paa","civ"],
			[_vs + "noir.paa","civ"],
			[_vs + "orange.paa","civ"],
			[_vs + "rose.paa","civ"],
			[_vs + "rouge.paa","civ"],
			[_vs + "rougefonce.paa","civ"],
			[_vs + "vert.paa","civ"],
			[_vs + "vertfonce.paa","civ"],
			[_vs + "violet.paa","civ"]
		];
	};
    
    case "shounka_a3_peugeot508_civ":
	{
		_ret = 
		[
			[_vs + "blanc.paa","civ"],
			[_vs + "bleu.paa","civ"],
			[_vs + "bleufonce.paa","civ"],
			[_vs + "carbon.paa","civ"],
			[_vs + "gris.paa","civ"],
			[_vs + "jaune.paa","civ"],
			[_vs + "noir.paa","civ"],
			[_vs + "orange.paa","civ"],
			[_vs + "rose.paa","civ"],
			[_vs + "rouge.paa","civ"],
			[_vs + "rougefonce.paa","civ"],
			[_vs + "vert.paa","civ"],
			[_vs + "vertfonce.paa","civ"],
			[_vs + "violet.paa","civ"]
		];
	};

	case "shounka_limo_civ":
	{
		_ret = 
		[
			[_vs + "blanc.paa","civ"],
			[_vs + "bleu.paa","civ"],
			[_vs + "bleufonce.paa","civ"],
			[_vs + "carbon.paa","civ"],
			[_vs + "gris.paa","civ"],
			[_vs + "jaune.paa","civ"],
			[_vs + "noir.paa","civ"],
			[_vs + "orange.paa","civ"],
			[_vs + "rose.paa","civ"],
			[_vs + "rouge.paa","civ"],
			[_vs + "rougefonce.paa","civ"],
			[_vs + "vert.paa","civ"],
			[_vs + "vertfonce.paa","civ"],
			[_vs + "violet.paa","civ"]
		];
	};
    
    case "Mrshounka_cherokee":
	{
		_ret = 
		[
			[_vs + "blanc.paa","civ"],
			[_vs + "bleu.paa","civ"],
			[_vs + "bleufonce.paa","civ"],
			[_vs + "carbon.paa","civ"],
			[_vs + "gris.paa","civ"],
			[_vs + "jaune.paa","civ"],
			[_vs + "noir.paa","civ"],
			[_vs + "orange.paa","civ"],
			[_vs + "rose.paa","civ"],
			[_vs + "rouge.paa","civ"],
			[_vs + "rougefonce.paa","civ"],
			[_vs + "vert.paa","civ"],
			[_vs + "vertfonce.paa","civ"],
			[_vs + "violet.paa","civ"]
		];
	};
	
	case "C_Heli_Light_01_civil_F":
	{
		_ret = 
		[
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_blue_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_blueline_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_elliptical_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_furious_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_jeans_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_speedy_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sunset_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_vrana_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_wave_co.paa","civ"]
		];
	};

	case "Mrshounka_Alfa_Romeo_civ":
	{
		_ret = 
		[
			[_vs + "blanc.paa","civ"],
			[_vs + "bleu.paa","civ"],
			[_vs + "bleufonce.paa","civ"],
			[_vs + "carbon.paa","civ"],
			[_vs + "gris.paa","civ"],
			[_vs + "jaune.paa","civ"],
			[_vs + "noir.paa","civ"],
			[_vs + "orange.paa","civ"],
			[_vs + "rose.paa","civ"],
			[_vs + "rouge.paa","civ"],
			[_vs + "rougefonce.paa","civ"],
			[_vs + "vert.paa","civ"],
			[_vs + "vertfonce.paa","civ"],
			[_vs + "violet.paa","civ"]
		];
	};

	case "Mrshounka_cherokee_noir":
	{
		_ret = 
		[
			[_vs + "blanc.paa","civ"],
			[_vs + "bleu.paa","civ"],
			[_vs + "bleufonce.paa","civ"],
			[_vs + "carbon.paa","civ"],
			[_vs + "gris.paa","civ"],
			[_vs + "jaune.paa","civ"],
			[_vs + "noir.paa","civ"],
			[_vs + "orange.paa","civ"],
			[_vs + "rose.paa","civ"],
			[_vs + "rouge.paa","civ"],
			[_vs + "rougefonce.paa","civ"],
			[_vs + "vert.paa","civ"],
			[_vs + "vertfonce.paa","civ"],
			[_vs + "violet.paa","civ"]
		];
	};

	case "Mrshounka_bmwm6_civ":
	{
		_ret = 
		[
			[_vs + "blanc.paa","civ"],
			[_vs + "bleu.paa","civ"],
			[_vs + "bleufonce.paa","civ"],
			[_vs + "carbon.paa","civ"],
			[_vs + "gris.paa","civ"],
			[_vs + "jaune.paa","civ"],
			[_vs + "noir.paa","civ"],
			[_vs + "orange.paa","civ"],
			[_vs + "rose.paa","civ"],
			[_vs + "rouge.paa","civ"],
			[_vs + "rougefonce.paa","civ"],
			[_vs + "vert.paa","civ"],
			[_vs + "vertfonce.paa","civ"],
			[_vs + "violet.paa","civ"]
		];
	};

	case "Mrshounka_bmwm1_civ":
	{
		_ret = 
		[
			[_vs + "blanc.paa","civ"],
			[_vs + "bleu.paa","civ"],
			[_vs + "bleufonce.paa","civ"],
			[_vs + "carbon.paa","civ"],
			[_vs + "gris.paa","civ"],
			[_vs + "jaune.paa","civ"],
			[_vs + "noir.paa","civ"],
			[_vs + "orange.paa","civ"],
			[_vs + "rose.paa","civ"],
			[_vs + "rouge.paa","civ"],
			[_vs + "rougefonce.paa","civ"],
			[_vs + "vert.paa","civ"],
			[_vs + "vertfonce.paa","civ"],
			[_vs + "violet.paa","civ"]
		];
	};

	case "Mrshounka_raptor_civ":
	{
		_ret = 
		[
			[_vs + "blanc.paa","civ"],
			[_vs + "bleu.paa","civ"],
			[_vs + "bleufonce.paa","civ"],
			[_vs + "carbon.paa","civ"],
			[_vs + "gris.paa","civ"],
			[_vs + "jaune.paa","civ"],
			[_vs + "noir.paa","civ"],
			[_vs + "orange.paa","civ"],
			[_vs + "rose.paa","civ"],
			[_vs + "rouge.paa","civ"],
			[_vs + "rougefonce.paa","civ"],
			[_vs + "vert.paa","civ"],
			[_vs + "vertfonce.paa","civ"],
			[_vs + "violet.paa","civ"]
		];
	};

	case "Mrshounka_Vandura_civ":
	{
		_ret = 
		[
			[_vs + "blanc.paa","civ"],
			[_vs + "bleu.paa","civ"],
			[_vs + "bleufonce.paa","civ"],
			[_vs + "carbon.paa","civ"],
			[_vs + "gris.paa","civ"],
			[_vs + "jaune.paa","civ"],
			[_vs + "noir.paa","civ"],
			[_vs + "orange.paa","civ"],
			[_vs + "rose.paa","civ"],
			[_vs + "rouge.paa","civ"],
			[_vs + "rougefonce.paa","civ"],
			[_vs + "vert.paa","civ"],
			[_vs + "vertfonce.paa","civ"],
			[_vs + "violet.paa","civ"]
		];
	};


	//Véhicules CL3
	case "cl3_range_rover_black":
	{
		_ret = 
		[
			["","civ","","","\cl3_vehiclefunctions\skins\lime_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\marina_blue_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\navy_blue_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\orange_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\red_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\silver_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\violet_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\skin_white_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\skin_yellow_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\skin_black_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\burgundy_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\cardinal_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\dark_green_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\grey_co.paa"]
		];
	};

	case "cl3_transit_black":
	{
		_ret = 
		[
			["","civ","","","\cl3_vehiclefunctions\skins\lime_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\marina_blue_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\navy_blue_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\orange_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\red_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\silver_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\violet_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\skin_white_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\skin_yellow_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\skin_black_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\burgundy_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\cardinal_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\dark_green_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\grey_co.paa"]
		];
	};

	case "cl3_q7_black":
	{
		_ret = 
		[
			["","civ","","","\cl3_vehiclefunctions\skins\lime_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\marina_blue_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\navy_blue_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\orange_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\red_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\silver_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\violet_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\skin_white_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\skin_yellow_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\skin_black_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\burgundy_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\cardinal_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\dark_green_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\grey_co.paa"]
		];
	};

	case "cl3_mackr_del_blue":
	{
		_ret = 
		[
			["","civ","","","\cl3_wheeled_truck\trucks\mackr\mackr_co.paa"],
			["","civ","","","\cl3_wheeled_truck\trucks\mackr\skin\american_co.paa"],
			["","civ","","","\cl3_wheeled_truck\trucks\mackr\skin\black_co.paa"],
			["","civ","","","\cl3_wheeled_truck\trucks\mackr\skin\black_gold_co.paa"],
			["","civ","","","\cl3_wheeled_truck\trucks\mackr\skin\black_white_co.paa"],
			["","civ","","","\cl3_wheeled_truck\trucks\mackr\skin\brown_camo_co.paa"],
			["","civ","","","\cl3_wheeled_truck\trucks\mackr\skin\forest_camo_co.paa"],
			["","civ","","","\cl3_wheeled_truck\trucks\mackr\skin\green_white_co.paa"],
			["","civ","","","\cl3_wheeled_truck\trucks\mackr\skin\orange_white_co.paa"],
			["","civ","","","\cl3_wheeled_truck\trucks\mackr\skin\purple_white_co.paa"],
			["","civ","","","\cl3_wheeled_truck\trucks\mackr\skin\red_white_co.paa"],
			["","civ","","","\cl3_wheeled_truck\trucks\mackr\skin\silver_co.paa"],
			["","civ","","","\cl3_wheeled_truck\trucks\mackr\skin\optimus_co.paa"]
		];
	};

		case "cl3_defender_110_yellow":
	{
		_ret = 
		[
			["","civ","","","\cl3_vehiclefunctions\skins\lime_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\marina_blue_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\navy_blue_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\orange_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\red_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\silver_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\violet_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\skin_white_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\skin_yellow_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\skin_black_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\burgundy_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\cardinal_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\dark_green_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\grey_co.paa"]
		];
	};

	case "cl3_golf_mk2_yellow":
	{
		_ret = 
		[
			["","civ","","","\cl3_vehiclefunctions\skins\lime_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\marina_blue_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\navy_blue_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\orange_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\red_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\silver_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\violet_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\skin_white_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\skin_yellow_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\skin_black_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\burgundy_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\cardinal_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\dark_green_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\grey_co.paa"]
		];
	};

	case "cl3_transit_gold":
	{
		_ret = 
		[
			["","civ","","","\cl3_vehiclefunctions\skins\lime_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\marina_blue_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\navy_blue_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\orange_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\red_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\silver_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\violet_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\skin_white_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\skin_yellow_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\skin_black_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\burgundy_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\cardinal_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\dark_green_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\grey_co.paa"]
		];
	};

	case "cl3_discovery_black":
	{
		_ret = 
		[
			["","civ","","","\cl3_vehiclefunctions\skins\lime_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\marina_blue_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\navy_blue_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\orange_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\red_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\silver_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\violet_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\skin_white_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\skin_yellow_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\skin_black_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\burgundy_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\cardinal_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\dark_green_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\grey_co.paa"]
		];
	};

	case "cl3_s5_aqua":
	{
		_ret = 
		[
			["","civ","","","\cl3_vehiclefunctions\skins\lime_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\marina_blue_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\navy_blue_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\orange_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\red_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\silver_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\violet_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\skin_white_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\skin_yellow_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\skin_black_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\burgundy_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\cardinal_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\dark_green_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\grey_co.paa"]
		];
	};

	case "cl3_e60_m5_blue":
	{
		_ret = 
		[
			["","civ","","","\cl3_vehiclefunctions\skins\lime_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\marina_blue_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\navy_blue_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\orange_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\red_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\silver_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\violet_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\skin_white_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\skin_yellow_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\skin_black_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\burgundy_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\cardinal_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\dark_green_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\grey_co.paa"]
		];
	};

	case "cl3_dbs_volante_aqua":
	{
		_ret = 
		[
			["","civ","","","\cl3_vehiclefunctions\skins\lime_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\marina_blue_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\navy_blue_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\orange_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\red_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\silver_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\violet_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\skin_white_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\skin_yellow_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\skin_black_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\burgundy_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\cardinal_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\dark_green_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\grey_co.paa"]
		];
	};

	case "cl3_458_2tone4":
	{
		_ret = 
		[
			["","civ","","","\cl3_vehiclefunctions\skins\lime_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\marina_blue_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\navy_blue_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\orange_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\red_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\silver_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\violet_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\skin_white_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\skin_yellow_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\skin_black_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\burgundy_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\cardinal_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\dark_green_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\grey_co.paa"]
		];
	};

	case "cl3_murcielago_2tone2":
	{
		_ret = 
		[
			["","civ","","","\cl3_vehiclefunctions\skins\lime_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\marina_blue_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\navy_blue_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\orange_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\red_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\silver_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\violet_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\skin_white_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\skin_yellow_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\skin_black_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\burgundy_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\cardinal_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\dark_green_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\grey_co.paa"]
		];
	};

	case "cl3_e63_amg_yellow":
	{
		_ret = 
		[
			["","civ","","","\cl3_vehiclefunctions\skins\lime_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\marina_blue_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\navy_blue_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\orange_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\red_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\silver_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\violet_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\skin_white_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\skin_yellow_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\skin_black_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\burgundy_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\cardinal_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\dark_green_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\grey_co.paa"]
		];
	};

	case "cl3_aventador_lp7004_2tone3":
	{
		_ret = 
		[
			["","civ","","","\cl3_vehiclefunctions\skins\lime_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\marina_blue_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\navy_blue_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\orange_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\red_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\silver_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\violet_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\skin_white_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\skin_yellow_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\skin_black_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\burgundy_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\cardinal_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\dark_green_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\grey_co.paa"]
		];
	};

	case "cl3_reventon_2tone4":
	{
		_ret = 
		[
			["","civ","","","\cl3_vehiclefunctions\skins\lime_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\marina_blue_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\navy_blue_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\orange_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\red_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\silver_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\violet_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\skin_white_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\skin_yellow_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\skin_black_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\burgundy_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\cardinal_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\dark_green_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\grey_co.paa"]
		];
	};

	case "cl3_z4_2008_aqua":
	{
		_ret = 
		[
			["","civ","","","\cl3_vehiclefunctions\skins\lime_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\marina_blue_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\navy_blue_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\orange_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\red_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\silver_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\violet_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\skin_white_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\skin_yellow_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\skin_black_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\burgundy_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\cardinal_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\dark_green_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\grey_co.paa"]
		];
	};

	case "cl3_carrera_gt_green":
	{
		_ret = 
		[
			["","civ","","","\cl3_vehiclefunctions\skins\lime_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\marina_blue_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\navy_blue_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\orange_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\red_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\silver_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\violet_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\skin_white_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\skin_yellow_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\skin_black_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\burgundy_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\cardinal_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\dark_green_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\grey_co.paa"]
		];
	};

	case "cl3_veyron_brn_blk":
	{
		_ret = 
		[
			["","civ","","","\cl3_vehiclefunctions\skins\lime_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\marina_blue_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\navy_blue_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\orange_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\red_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\silver_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\violet_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\skin_white_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\skin_yellow_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\skin_black_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\burgundy_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\cardinal_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\dark_green_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\grey_co.paa"]
		];
	};

	case "cl3_r8_spyder_2tone5":
	{
		_ret = 
		[
			["","civ","","","\cl3_vehiclefunctions\skins\lime_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\marina_blue_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\navy_blue_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\orange_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\red_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\silver_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\violet_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\skin_white_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\skin_yellow_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\skin_black_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\burgundy_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\cardinal_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\dark_green_co.paa"],
			["","civ","","","\cl3_vehiclefunctions\skins\grey_co.paa"]
		];
	};

// IVORY

case "ivory_gti":
	{
		_ret =
		[

			["#(argb,8,8,3)color(1,1,1,1,co)","civ"],
			["#(argb,8,8,3)color(0,0,1,1,co)","civ"],
			["#(argb,8,8,3)color(0,0,0.545,1,co)","civ"],
			["#(argb,8,8,3)color(0.502,0.502,0.502,1,co)","civ"],
			["#(argb,8,8,3)color(1,1,0,1,co)","civ"],
			["#(argb,8,8,3)color(0,0,0,1,co)","civ"],
			["#(argb,8,8,3)color(1,0.647,0,1,co)","civ"],
			["#(argb,8,8,3)color(1,0.753,0.796,1,co)","civ"],
			["#(argb,8,8,3)color(1,0,0,1,co)","civ"],
			["#(argb,8,8,3)color(0.545,0,0,1,co)","civ"],
			["#(argb,8,8,3)color(0,1,0,1,co)","civ"],
			["#(argb,8,8,3)color(0.004,0.196,0.125,1,co)","civ"]
		];
	};

case "ivory_suburban":
	{
		_ret =
		[

			["#(argb,8,8,3)color(1,1,1,1,co)","civ"],
			["#(argb,8,8,3)color(0,0,1,1,co)","civ"],
			["#(argb,8,8,3)color(0,0,0.545,1,co)","civ"],
			["#(argb,8,8,3)color(0.502,0.502,0.502,1,co)","civ"],
			["#(argb,8,8,3)color(1,1,0,1,co)","civ"],
			["#(argb,8,8,3)color(0,0,0,1,co)","civ"],
			["#(argb,8,8,3)color(1,0.647,0,1,co)","civ"],
			["#(argb,8,8,3)color(1,0.753,0.796,1,co)","civ"],
			["#(argb,8,8,3)color(1,0,0,1,co)","civ"],
			["#(argb,8,8,3)color(0.545,0,0,1,co)","civ"],
			["#(argb,8,8,3)color(0,1,0,1,co)","civ"],
			["#(argb,8,8,3)color(0.004,0.196,0.125,1,co)","civ"]
		];
	};

case "Jonzie_Tow_Truck":
	{
		_ret = 
		[
			[_vs + "blanc.paa","civ"],
			[_vs + "bleu.paa","civ"],
			[_vs + "bleufonce.paa","civ"],
			[_vs + "carbon.paa","civ"],
			[_vs + "gris.paa","civ"],
			[_vs + "jaune.paa","civ"],
			[_vs + "noir.paa","civ"],
			[_vs + "orange.paa","civ"],
			[_vs + "rose.paa","civ"],
			[_vs + "rouge.paa","civ"],
			[_vs + "rougefonce.paa","civ"],
			[_vs + "vert.paa","civ"],
			[_vs + "vertfonce.paa","civ"],
			[_vs + "violet.paa","civ"]
		];
	};
case "Jonzie_Tanker_Truck":
	{
		_ret = 
		[
			[_vs + "blanc.paa","civ"],
			[_vs + "bleu.paa","civ"],
			[_vs + "bleufonce.paa","civ"],
			[_vs + "carbon.paa","civ"],
			[_vs + "gris.paa","civ"],
			[_vs + "jaune.paa","civ"],
			[_vs + "noir.paa","civ"],
			[_vs + "orange.paa","civ"],
			[_vs + "rose.paa","civ"],
			[_vs + "rouge.paa","civ"],
			[_vs + "rougefonce.paa","civ"],
			[_vs + "vert.paa","civ"],
			[_vs + "vertfonce.paa","civ"],
			[_vs + "violet.paa","civ"]
		];
	};	
case "Jonzie_Box_Truck":
	{
		_ret = 
		[
			[_vs + "blanc.paa","civ"],
			[_vs + "bleu.paa","civ"],
			[_vs + "bleufonce.paa","civ"],
			[_vs + "carbon.paa","civ"],
			[_vs + "gris.paa","civ"],
			[_vs + "jaune.paa","civ"],
			[_vs + "noir.paa","civ"],
			[_vs + "orange.paa","civ"],
			[_vs + "rose.paa","civ"],
			[_vs + "rouge.paa","civ"],
			[_vs + "rougefonce.paa","civ"],
			[_vs + "vert.paa","civ"],
			[_vs + "vertfonce.paa","civ"],
			[_vs + "violet.paa","civ"]
		];
	}

};

_ret;