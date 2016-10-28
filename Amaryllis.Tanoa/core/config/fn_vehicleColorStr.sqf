/*
	File: fn_vehicleColorStr.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for color strings depending on their index location.
*/
private["_vehicle","_color","_index"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
_index = [_this,1,-1,[0]] call BIS_fnc_param;
_color = "";

switch (_vehicle) do
{
	case "C_Offroad_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Rouge";};
			case 1: {_color = "Moutarde";};
			case 2: {_color = "Blanc";};
			case 3: {_color = "Bleu";};
			case 4: {_color = "Rouge Foncé";};
			case 5: {_color = "Blanc/Bleu"};
			case 6: {_color = "Noir"};
			case 7: {_color = "Noir"};
			case 8: {_color = "Jaune"};
		};
	};
	
	case "ama_prowler_at":
	{
		switch (_index) do
		{
			case 0: {_color = "Armée";};

		};
	};
	
	case "C_Hatchback_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Beige";};
			case 1: {_color = "Vert";};
			case 2: {_color = "Bleu";};
			case 3: {_color = "Bleu Foncé";};
			case 4: {_color = "Jaune";};
			case 5: {_color = "Blanc"};
			case 6: {_color = "Gris"};
			case 7: {_color = "Noir"};
		};
	};
	
	case "C_Hatchback_01_sport_F":
	{
		switch(_index) do
		{
			case 0: {_color = "Rouge"};
			case 1: {_color = "Bleu Foncé"};
			case 2: {_color = "Orange"};
			case 3: {_color = "Noir/Blanc"};
			case 4: {_color = "Sable"};
			case 5: {_color = "Vert"};
		};
	};
	

	case "C_Offroad_02_unarmed_F":
	{
		switch(_index) do
		{
			case 0: {_color = "Noir"};
			case 1: {_color = "Bleu"};
			case 2: {_color = "Vert"};
			case 3: {_color = "Orange"};
			case 4: {_color = "Rouge"};
			case 5: {_color = "Blanc"};
			case 6: {_color = "Marron"};
			case 7: {_color = "Olive"};
		};
	};

	case "C_SUV_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Rouge Foncé";};
			case 1: {_color = "Noir";};
			case 2: {_color = "Argent";};
			case 3: {_color = "Orange";};
		};
	};
	
	case "C_Van_01_box_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Rouge"};
		};
	};
	
	case "C_Van_01_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Rouge"};
		};
	};
	
	case "C_Van_01_fuel_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Rouge"};
		};
	};
	
	case "C_Quadbike_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Marron"};
			case 1: {_color = "Digi Desert"};
			case 2: {_color = "Noir"};
			case 3: {_color = "Bleu"};
			case 4: {_color = "Rouge"};
			case 5: {_color = "Blanc"};
			case 6: {_color = "Digi Green"};
			case 7: {_color = "Hunter Camo"};
			case 8: {_color = "Rebel Camo"};
		};
	};
	
	case "B_Heli_Light_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Sheriff"};
			case 1: {_color = "Noir"};
			case 2: {_color = "Bleu"};
			case 3: {_color = "Rouge"};
			case 4: {_color = "Digi Green"};
			case 5: {_color = "Blueline"};
			case 6: {_color = "Elliptical"};
			case 7: {_color = "Furious"};
			case 8: {_color = "Jeans Blue"};
			case 9: {_color = "Speedy Redline"};
			case 10: {_color = "Sunset"};
			case 11: {_color = "Vrana"};
			case 12: {_color = "Waves Blue"};
			case 13: {_color = "Rebel Digital"};
			case 14: {_color = "EMS Blanc"};
		};
	};
	
	case "O_Heli_Light_02_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Noir"};
			case 1: {_color = "Blanc/Bleu"};
			case 2: {_color = "Digi Green"};
			case 3: {_color = "Desert Digi"};
			case 4: {_color = "EMS Blanc"};
		};
	};
	
	case "B_MRAP_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Regular"};
			case 1: {_color = "Noir"};
		};
	};
	
	case "I_Truck_02_covered_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Noir"};
		};
	};
	
	case "I_Truck_02_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Noir"};
		};
	};
	
	case "B_APC_Wheeled_01_cannon_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Noir"};
		};
	};
	
	case "O_Heli_Attack_02_black_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Noir"};
		};
	};
	
	case "I_Heli_Transport_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Ion"};
			case 1: {_color = "Dahoman"};
		};
	};
	
	case "B_APC_Wheeled_01_cannon_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Noir"};
		};
	};
    
    //Véhicules Shounka
    case "Mrshounka_Volkswagen_Touareg_civ":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Bleu"};
			case 2: {_color = "Bleu Foncé"};
			case 3: {_color = "Carbon"};
			case 4: {_color = "Gris"};
			case 5: {_color = "Jaune"};
			case 6: {_color = "Noir"};
			case 7: {_color = "Orange"};
			case 8: {_color = "Rose"};
			case 9: {_color = "Rouge"};
			case 10: {_color = "Rouge Foncé"};
			case 11: {_color = "Vert"};
			case 12: {_color = "Vert Foncé"};
			case 13: {_color = "Violet"};
		};
	};

    case "Mrshounka_twingo_p":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Bleu"};
			case 2: {_color = "Bleu Foncé"};
			case 3: {_color = "Carbon"};
			case 4: {_color = "Gris"};
			case 5: {_color = "Jaune"};
			case 6: {_color = "Noir"};
			case 7: {_color = "Orange"};
			case 8: {_color = "Rose"};
			case 9: {_color = "Rouge"};
			case 10: {_color = "Rouge Foncé"};
			case 11: {_color = "Vert"};
			case 12: {_color = "Vert Foncé"};
			case 13: {_color = "Violet"};
		};
	};

    case "Mrshounka_megane_rs_2015_civ":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Bleu"};
			case 2: {_color = "Bleu Foncé"};
			case 3: {_color = "Carbon"};
			case 4: {_color = "Gris"};
			case 5: {_color = "Jaune"};
			case 6: {_color = "Noir"};
			case 7: {_color = "Orange"};
			case 8: {_color = "Rose"};
			case 9: {_color = "Rouge"};
			case 10: {_color = "Rouge Foncé"};
			case 11: {_color = "Vert"};
			case 12: {_color = "Vert Foncé"};
			case 13: {_color = "Violet"};
		};
	};

    case "Mrshounka_a3_308_civ":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Bleu"};
			case 2: {_color = "Bleu Foncé"};
			case 3: {_color = "Carbon"};
			case 4: {_color = "Gris"};
			case 5: {_color = "Jaune"};
			case 6: {_color = "Noir"};
			case 7: {_color = "Orange"};
			case 8: {_color = "Rose"};
			case 9: {_color = "Rouge"};
			case 10: {_color = "Rouge Foncé"};
			case 11: {_color = "Vert"};
			case 12: {_color = "Vert Foncé"};
			case 13: {_color = "Violet"};
		};
	};

    case "Mrshounka_207_civ":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Bleu"};
			case 2: {_color = "Bleu Foncé"};
			case 3: {_color = "Carbon"};
			case 4: {_color = "Gris"};
			case 5: {_color = "Jaune"};
			case 6: {_color = "Noir"};
			case 7: {_color = "Orange"};
			case 8: {_color = "Rose"};
			case 9: {_color = "Rouge"};
			case 10: {_color = "Rouge Foncé"};
			case 11: {_color = "Vert"};
			case 12: {_color = "Vert Foncé"};
			case 13: {_color = "Violet"};
		};
	};

    case "shounka_a3_spr_civ":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Bleu"};
			case 2: {_color = "Bleu Foncé"};
			case 3: {_color = "Carbon"};
			case 4: {_color = "Gris"};
			case 5: {_color = "Jaune"};
			case 6: {_color = "Noir"};
			case 7: {_color = "Orange"};
			case 8: {_color = "Rose"};
			case 9: {_color = "Rouge"};
			case 10: {_color = "Rouge Foncé"};
			case 11: {_color = "Vert"};
			case 12: {_color = "Vert Foncé"};
			case 13: {_color = "Violet"};
		};
	};

	

	case "shounka_a3_renaultmagnum_f":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Bleu"};
			case 2: {_color = "Bleu Foncé"};
			case 3: {_color = "Carbon"};
			case 4: {_color = "Gris"};
			case 5: {_color = "Jaune"};
			case 6: {_color = "Noir"};
			case 7: {_color = "Orange"};
			case 8: {_color = "Rose"};
			case 9: {_color = "Rouge"};
			case 10: {_color = "Rouge Foncé"};
			case 11: {_color = "Vert"};
			case 12: {_color = "Vert Foncé"};
			case 13: {_color = "Violet"};
		};
	};

    case "shounka_a3_cliors_civ":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Bleu"};
			case 2: {_color = "Bleu Foncé"};
			case 3: {_color = "Carbon"};
			case 4: {_color = "Gris"};
			case 5: {_color = "Jaune"};
			case 6: {_color = "Noir"};
			case 7: {_color = "Orange"};
			case 8: {_color = "Rose"};
			case 9: {_color = "Rouge"};
			case 10: {_color = "Rouge Foncé"};
			case 11: {_color = "Vert"};
			case 12: {_color = "Vert Foncé"};
			case 13: {_color = "Violet"};
		};
	};

    case "shounka_a3_ds4_civ":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Bleu"};
			case 2: {_color = "Bleu Foncé"};
			case 3: {_color = "Carbon"};
			case 4: {_color = "Gris"};
			case 5: {_color = "Jaune"};
			case 6: {_color = "Noir"};
			case 7: {_color = "Orange"};
			case 8: {_color = "Rose"};
			case 9: {_color = "Rouge"};
			case 10: {_color = "Rouge Foncé"};
			case 11: {_color = "Vert"};
			case 12: {_color = "Vert Foncé"};
			case 13: {_color = "Violet"};
		};
	};

    case "Mrshounka_a3_ds3_civ":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Bleu"};
			case 2: {_color = "Bleu Foncé"};
			case 3: {_color = "Carbon"};
			case 4: {_color = "Gris"};
			case 5: {_color = "Jaune"};
			case 6: {_color = "Noir"};
			case 7: {_color = "Orange"};
			case 8: {_color = "Rose"};
			case 9: {_color = "Rouge"};
			case 10: {_color = "Rouge Foncé"};
			case 11: {_color = "Vert"};
			case 12: {_color = "Vert Foncé"};
			case 13: {_color = "Violet"};
		};
	};

    case "Mrshounka_yamaha_p":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Bleu"};
			case 2: {_color = "Bleu Foncé"};
			case 3: {_color = "Carbon"};
			case 4: {_color = "Gris"};
			case 5: {_color = "Jaune"};
			case 6: {_color = "Noir"};
			case 7: {_color = "Orange"};
			case 8: {_color = "Rose"};
			case 9: {_color = "Rouge"};
			case 10: {_color = "Rouge Foncé"};
			case 11: {_color = "Vert"};
			case 12: {_color = "Vert Foncé"};
			case 13: {_color = "Violet"};
		};
	};

    case "shounka_porsche911":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Bleu"};
			case 2: {_color = "Bleu Foncé"};
			case 3: {_color = "Carbon"};
			case 4: {_color = "Gris"};
			case 5: {_color = "Jaune"};
			case 6: {_color = "Noir"};
			case 7: {_color = "Orange"};
			case 8: {_color = "Rose"};
			case 9: {_color = "Rouge"};
			case 10: {_color = "Rouge Foncé"};
			case 11: {_color = "Vert"};
			case 12: {_color = "Vert Foncé"};
			case 13: {_color = "Violet"};
		};
	};

    case "Mrshounka_pagani_c":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Bleu"};
			case 2: {_color = "Bleu Foncé"};
			case 3: {_color = "Carbon"};
			case 4: {_color = "Gris"};
			case 5: {_color = "Jaune"};
			case 6: {_color = "Noir"};
			case 7: {_color = "Orange"};
			case 8: {_color = "Rose"};
			case 9: {_color = "Rouge"};
			case 10: {_color = "Rouge Foncé"};
			case 11: {_color = "Vert"};
			case 12: {_color = "Vert Foncé"};
			case 13: {_color = "Violet"};
		};
	};

    case "Mrshounka_a3_gtr_civ":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Bleu"};
			case 2: {_color = "Bleu Foncé"};
			case 3: {_color = "Carbon"};
			case 4: {_color = "Gris"};
			case 5: {_color = "Jaune"};
			case 6: {_color = "Noir"};
			case 7: {_color = "Orange"};
			case 8: {_color = "Rose"};
			case 9: {_color = "Rouge"};
			case 10: {_color = "Rouge Foncé"};
			case 11: {_color = "Vert"};
			case 12: {_color = "Vert Foncé"};
			case 13: {_color = "Violet"};
		};
	};

    case "shounka_clk":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Bleu"};
			case 2: {_color = "Bleu Foncé"};
			case 3: {_color = "Carbon"};
			case 4: {_color = "Gris"};
			case 5: {_color = "Jaune"};
			case 6: {_color = "Noir"};
			case 7: {_color = "Orange"};
			case 8: {_color = "Rose"};
			case 9: {_color = "Rouge"};
			case 10: {_color = "Rouge Foncé"};
			case 11: {_color = "Vert"};
			case 12: {_color = "Vert Foncé"};
			case 13: {_color = "Violet"};
		};
	};

    case "Mrshounka_mercedes_190_p_civ":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Bleu"};
			case 2: {_color = "Bleu Foncé"};
			case 3: {_color = "Carbon"};
			case 4: {_color = "Gris"};
			case 5: {_color = "Jaune"};
			case 6: {_color = "Noir"};
			case 7: {_color = "Orange"};
			case 8: {_color = "Rose"};
			case 9: {_color = "Rouge"};
			case 10: {_color = "Rouge Foncé"};
			case 11: {_color = "Vert"};
			case 12: {_color = "Vert Foncé"};
			case 13: {_color = "Violet"};
		};
	};

    case "shounka_mp4":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Bleu"};
			case 2: {_color = "Bleu Foncé"};
			case 3: {_color = "Carbon"};
			case 4: {_color = "Gris"};
			case 5: {_color = "Jaune"};
			case 6: {_color = "Noir"};
			case 7: {_color = "Orange"};
			case 8: {_color = "Rose"};
			case 9: {_color = "Rouge"};
			case 10: {_color = "Rouge Foncé"};
			case 11: {_color = "Vert"};
			case 12: {_color = "Vert Foncé"};
			case 13: {_color = "Violet"};
		};
	};

    case "Mrshounka_lincoln_civ":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Bleu"};
			case 2: {_color = "Bleu Foncé"};
			case 3: {_color = "Carbon"};
			case 4: {_color = "Gris"};
			case 5: {_color = "Jaune"};
			case 6: {_color = "Noir"};
			case 7: {_color = "Orange"};
			case 8: {_color = "Rose"};
			case 9: {_color = "Rouge"};
			case 10: {_color = "Rouge Foncé"};
			case 11: {_color = "Vert"};
			case 12: {_color = "Vert Foncé"};
			case 13: {_color = "Violet"};
		};
	};

    case "mrshounka_huracan_":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Bleu"};
			case 2: {_color = "Bleu Foncé"};
			case 3: {_color = "Carbon"};
			case 4: {_color = "Gris"};
			case 5: {_color = "Jaune"};
			case 6: {_color = "Noir"};
			case 7: {_color = "Orange"};
			case 8: {_color = "Rose"};
			case 9: {_color = "Rouge"};
			case 10: {_color = "Rouge Foncé"};
			case 11: {_color = "Vert"};
			case 12: {_color = "Vert Foncé"};
			case 13: {_color = "Violet"};
		};
	};

    case "shounka_f430_spider":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Bleu"};
			case 2: {_color = "Bleu Foncé"};
			case 3: {_color = "Carbon"};
			case 4: {_color = "Gris"};
			case 5: {_color = "Jaune"};
			case 6: {_color = "Noir"};
			case 7: {_color = "Orange"};
			case 8: {_color = "Rose"};
			case 9: {_color = "Rouge"};
			case 10: {_color = "Rouge Foncé"};
			case 11: {_color = "Vert"};
			case 12: {_color = "Vert Foncé"};
			case 13: {_color = "Violet"};
		};
	};

    case "Mrshounka_ducati_p":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Bleu"};
			case 2: {_color = "Bleu Foncé"};
			case 3: {_color = "Carbon"};
			case 4: {_color = "Gris"};
			case 5: {_color = "Jaune"};
			case 6: {_color = "Noir"};
			case 7: {_color = "Orange"};
			case 8: {_color = "Rose"};
			case 9: {_color = "Rouge"};
			case 10: {_color = "Rouge Foncé"};
			case 11: {_color = "Vert"};
			case 12: {_color = "Vert Foncé"};
			case 13: {_color = "Violet"};
		};
	};

    case "shounka_a3_peugeot508_civ":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Bleu"};
			case 2: {_color = "Bleu Foncé"};
			case 3: {_color = "Carbon"};
			case 4: {_color = "Gris"};
			case 5: {_color = "Jaune"};
			case 6: {_color = "Noir"};
			case 7: {_color = "Orange"};
			case 8: {_color = "Rose"};
			case 9: {_color = "Rouge"};
			case 10: {_color = "Rouge Foncé"};
			case 11: {_color = "Vert"};
			case 12: {_color = "Vert Foncé"};
			case 13: {_color = "Violet"};
		};
	};
    
    case "shounka_limo_civ":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Bleu"};
			case 2: {_color = "Bleu Foncé"};
			case 3: {_color = "Carbon"};
			case 4: {_color = "Gris"};
			case 5: {_color = "Jaune"};
			case 6: {_color = "Noir"};
			case 7: {_color = "Orange"};
			case 8: {_color = "Rose"};
			case 9: {_color = "Rouge"};
			case 10: {_color = "Rouge Foncé"};
			case 11: {_color = "Vert"};
			case 12: {_color = "Vert Foncé"};
			case 13: {_color = "Violet"};
		};
	};
    
    case "Mrshounka_cherokee":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Bleu"};
			case 2: {_color = "Bleu Foncé"};
			case 3: {_color = "Carbon"};
			case 4: {_color = "Gris"};
			case 5: {_color = "Jaune"};
			case 6: {_color = "Noir"};
			case 7: {_color = "Orange"};
			case 8: {_color = "Rose"};
			case 9: {_color = "Rouge"};
			case 10: {_color = "Rouge Foncé"};
			case 11: {_color = "Vert"};
			case 12: {_color = "Vert Foncé"};
			case 13: {_color = "Violet"};
		};
	};

	case "C_Heli_Light_01_civil_F":
    {
        switch (_index) do
        {
            case 0: {_color = "Bleu"};
            case 1: {_color = "Rouge"};
            case 2: {_color = "Blueline"};
            case 3: {_color = "Elliptical"};
            case 4: {_color = "Furious"};
            case 5: {_color = "Jeans Blue"};
            case 6: {_color = "Speedy Redline"};
            case 7: {_color = "Sunset"};
            case 8: {_color = "Vrana"};
            case 9: {_color = "Waves Blue"};
        };
    };

	case "Mrshounka_Alfa_Romeo_civ":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Bleu"};
			case 2: {_color = "Bleu Foncé"};
			case 3: {_color = "Carbon"};
			case 4: {_color = "Gris"};
			case 5: {_color = "Jaune"};
			case 6: {_color = "Noir"};
			case 7: {_color = "Orange"};
			case 8: {_color = "Rose"};
			case 9: {_color = "Rouge"};
			case 10: {_color = "Rouge Foncé"};
			case 11: {_color = "Vert"};
			case 12: {_color = "Vert Foncé"};
			case 13: {_color = "Violet"};
		};
	};

	case "Mrshounka_cherokee_noir":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Bleu"};
			case 2: {_color = "Bleu Foncé"};
			case 3: {_color = "Carbon"};
			case 4: {_color = "Gris"};
			case 5: {_color = "Jaune"};
			case 6: {_color = "Noir"};
			case 7: {_color = "Orange"};
			case 8: {_color = "Rose"};
			case 9: {_color = "Rouge"};
			case 10: {_color = "Rouge Foncé"};
			case 11: {_color = "Vert"};
			case 12: {_color = "Vert Foncé"};
			case 13: {_color = "Violet"};
		};
	};

	case "Mrshounka_bmwm6_civ":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Bleu"};
			case 2: {_color = "Bleu Foncé"};
			case 3: {_color = "Carbon"};
			case 4: {_color = "Gris"};
			case 5: {_color = "Jaune"};
			case 6: {_color = "Noir"};
			case 7: {_color = "Orange"};
			case 8: {_color = "Rose"};
			case 9: {_color = "Rouge"};
			case 10: {_color = "Rouge Foncé"};
			case 11: {_color = "Vert"};
			case 12: {_color = "Vert Foncé"};
			case 13: {_color = "Violet"};
		};
	};

	case "Mrshounka_bmwm1_civ":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Bleu"};
			case 2: {_color = "Bleu Foncé"};
			case 3: {_color = "Carbon"};
			case 4: {_color = "Gris"};
			case 5: {_color = "Jaune"};
			case 6: {_color = "Noir"};
			case 7: {_color = "Orange"};
			case 8: {_color = "Rose"};
			case 9: {_color = "Rouge"};
			case 10: {_color = "Rouge Foncé"};
			case 11: {_color = "Vert"};
			case 12: {_color = "Vert Foncé"};
			case 13: {_color = "Violet"};
		};
	};

	case "Mrshounka_raptor_civ":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Bleu"};
			case 2: {_color = "Bleu Foncé"};
			case 3: {_color = "Carbon"};
			case 4: {_color = "Gris"};
			case 5: {_color = "Jaune"};
			case 6: {_color = "Noir"};
			case 7: {_color = "Orange"};
			case 8: {_color = "Rose"};
			case 9: {_color = "Rouge"};
			case 10: {_color = "Rouge Foncé"};
			case 11: {_color = "Vert"};
			case 12: {_color = "Vert Foncé"};
			case 13: {_color = "Violet"};
		};
	};

	case "Mrshounka_Vandura_civ":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Bleu"};
			case 2: {_color = "Bleu Foncé"};
			case 3: {_color = "Carbon"};
			case 4: {_color = "Gris"};
			case 5: {_color = "Jaune"};
			case 6: {_color = "Noir"};
			case 7: {_color = "Orange"};
			case 8: {_color = "Rose"};
			case 9: {_color = "Rouge"};
			case 10: {_color = "Rouge Foncé"};
			case 11: {_color = "Vert"};
			case 12: {_color = "Vert Foncé"};
			case 13: {_color = "Violet"};
		};
	};


// Vehicule CL3
	case "cl3_range_rover_black":
	{
		switch (_index) do
		{
			case 0: {_color = "Citron vert"};
			case 1: {_color = "Bleu"};
			case 2: {_color = "Bleu Nuit"};
			case 3: {_color = "Orange"};
			case 4: {_color = "Rouge"};
			case 5: {_color = "Argent"};
			case 6: {_color = "Violet"};
			case 7: {_color = "Blanc"};
			case 8: {_color = "Jaune"};
			case 9: {_color = "Noir"};
			case 10: {_color = "Rouge Bordeaux"};
			case 11: {_color = "Rouge Cardinal"};
			case 12: {_color = "Vert"};
			case 13: {_color = "Gris"};
		};
	};

	case "cl3_transit_black":
	{
		switch (_index) do
		{
			case 0: {_color = "Citron vert"};
			case 1: {_color = "Bleu"};
			case 2: {_color = "Bleu Nuit"};
			case 3: {_color = "Orange"};
			case 4: {_color = "Rouge"};
			case 5: {_color = "Argent"};
			case 6: {_color = "Violet"};
			case 7: {_color = "Blanc"};
			case 8: {_color = "Jaune"};
			case 9: {_color = "Noir"};
			case 10: {_color = "Rouge Bordeaux"};
			case 11: {_color = "Rouge Cardinal"};
			case 12: {_color = "Vert"};
			case 13: {_color = "Gris"};
		};
	};

	case "cl3_q7_black":
	{
		switch (_index) do
		{
			case 0: {_color = "Citron vert"};
			case 1: {_color = "Bleu"};
			case 2: {_color = "Bleu Nuit"};
			case 3: {_color = "Orange"};
			case 4: {_color = "Rouge"};
			case 5: {_color = "Argent"};
			case 6: {_color = "Violet"};
			case 7: {_color = "Blanc"};
			case 8: {_color = "Jaune"};
			case 9: {_color = "Noir"};
			case 10: {_color = "Rouge Bordeaux"};
			case 11: {_color = "Rouge Cardinal"};
			case 12: {_color = "Vert"};
			case 13: {_color = "Gris"};
		};
	};

	case "cl3_mackr_del_blue":
	{
		switch (_index) do
		{
			case 0: {_color = "Blue"};
			case 1: {_color = "American"};
			case 2: {_color = "Black"};
			case 3: {_color = "Black Gold"};
			case 4: {_color = "Black White"};
			case 5: {_color = "Brown Camo"};
			case 6: {_color = "Forest Camo"};
			case 7: {_color = "Green White"};
			case 8: {_color = "Orange White"};
			case 9: {_color = "Purple White"};
			case 10: {_color = "Red White"};
			case 11: {_color = "Silver"};
			case 12: {_color = "Optimus"};
		};
	};

	case "cl3_defender_110_yellow":
	{
		switch (_index) do
		{
			case 0: {_color = "Citron vert"};
			case 1: {_color = "Bleu"};
			case 2: {_color = "Bleu Nuit"};
			case 3: {_color = "Orange"};
			case 4: {_color = "Rouge"};
			case 5: {_color = "Argent"};
			case 6: {_color = "Violet"};
			case 7: {_color = "Blanc"};
			case 8: {_color = "Jaune"};
			case 9: {_color = "Noir"};
			case 10: {_color = "Rouge Bordeaux"};
			case 11: {_color = "Rouge Cardinal"};
			case 12: {_color = "Vert"};
			case 13: {_color = "Gris"};
		};
	};

	case "cl3_golf_mk2_yellow":
	{
		switch (_index) do
		{
			case 0: {_color = "Citron vert"};
			case 1: {_color = "Bleu"};
			case 2: {_color = "Bleu Nuit"};
			case 3: {_color = "Orange"};
			case 4: {_color = "Rouge"};
			case 5: {_color = "Argent"};
			case 6: {_color = "Violet"};
			case 7: {_color = "Blanc"};
			case 8: {_color = "Jaune"};
			case 9: {_color = "Noir"};
			case 10: {_color = "Rouge Bordeaux"};
			case 11: {_color = "Rouge Cardinal"};
			case 12: {_color = "Vert"};
			case 13: {_color = "Gris"};
		};
	};

	case "cl3_transit_gold":
	{
		switch (_index) do
		{
			case 0: {_color = "Citron vert"};
			case 1: {_color = "Bleu"};
			case 2: {_color = "Bleu Nuit"};
			case 3: {_color = "Orange"};
			case 4: {_color = "Rouge"};
			case 5: {_color = "Argent"};
			case 6: {_color = "Violet"};
			case 7: {_color = "Blanc"};
			case 8: {_color = "Jaune"};
			case 9: {_color = "Noir"};
			case 10: {_color = "Rouge Bordeaux"};
			case 11: {_color = "Rouge Cardinal"};
			case 12: {_color = "Vert"};
			case 13: {_color = "Gris"};
		};
	};

	case "cl3_discovery_black":
	{
		switch (_index) do
		{
			case 0: {_color = "Citron vert"};
			case 1: {_color = "Bleu"};
			case 2: {_color = "Bleu Nuit"};
			case 3: {_color = "Orange"};
			case 4: {_color = "Rouge"};
			case 5: {_color = "Argent"};
			case 6: {_color = "Violet"};
			case 7: {_color = "Blanc"};
			case 8: {_color = "Jaune"};
			case 9: {_color = "Noir"};
			case 10: {_color = "Rouge Bordeaux"};
			case 11: {_color = "Rouge Cardinal"};
			case 12: {_color = "Vert"};
			case 13: {_color = "Gris"};
		};
	};

	case "cl3_s5_aqua":
	{
		switch (_index) do
		{
			case 0: {_color = "Citron vert"};
			case 1: {_color = "Bleu"};
			case 2: {_color = "Bleu Nuit"};
			case 3: {_color = "Orange"};
			case 4: {_color = "Rouge"};
			case 5: {_color = "Argent"};
			case 6: {_color = "Violet"};
			case 7: {_color = "Blanc"};
			case 8: {_color = "Jaune"};
			case 9: {_color = "Noir"};
			case 10: {_color = "Rouge Bordeaux"};
			case 11: {_color = "Rouge Cardinal"};
			case 12: {_color = "Vert"};
			case 13: {_color = "Gris"};
		};
	};

	case "cl3_e60_m5_blue":
	{
		switch (_index) do
		{
			case 0: {_color = "Citron vert"};
			case 1: {_color = "Bleu"};
			case 2: {_color = "Bleu Nuit"};
			case 3: {_color = "Orange"};
			case 4: {_color = "Rouge"};
			case 5: {_color = "Argent"};
			case 6: {_color = "Violet"};
			case 7: {_color = "Blanc"};
			case 8: {_color = "Jaune"};
			case 9: {_color = "Noir"};
			case 10: {_color = "Rouge Bordeaux"};
			case 11: {_color = "Rouge Cardinal"};
			case 12: {_color = "Vert"};
			case 13: {_color = "Gris"};
		};
	};

	case "cl3_dbs_volante_aqua":
	{
		switch (_index) do
		{
			case 0: {_color = "Citron vert"};
			case 1: {_color = "Bleu"};
			case 2: {_color = "Bleu Nuit"};
			case 3: {_color = "Orange"};
			case 4: {_color = "Rouge"};
			case 5: {_color = "Argent"};
			case 6: {_color = "Violet"};
			case 7: {_color = "Blanc"};
			case 8: {_color = "Jaune"};
			case 9: {_color = "Noir"};
			case 10: {_color = "Rouge Bordeaux"};
			case 11: {_color = "Rouge Cardinal"};
			case 12: {_color = "Vert"};
			case 13: {_color = "Gris"};
		};
	};

	case "cl3_458_2tone4":
	{
		switch (_index) do
		{
			case 0: {_color = "Citron vert"};
			case 1: {_color = "Bleu"};
			case 2: {_color = "Bleu Nuit"};
			case 3: {_color = "Orange"};
			case 4: {_color = "Rouge"};
			case 5: {_color = "Argent"};
			case 6: {_color = "Violet"};
			case 7: {_color = "Blanc"};
			case 8: {_color = "Jaune"};
			case 9: {_color = "Noir"};
			case 10: {_color = "Rouge Bordeaux"};
			case 11: {_color = "Rouge Cardinal"};
			case 12: {_color = "Vert"};
			case 13: {_color = "Gris"};
		};
	};

	case "cl3_murcielago_2tone2":
	{
		switch (_index) do
		{
			case 0: {_color = "Citron vert"};
			case 1: {_color = "Bleu"};
			case 2: {_color = "Bleu Nuit"};
			case 3: {_color = "Orange"};
			case 4: {_color = "Rouge"};
			case 5: {_color = "Argent"};
			case 6: {_color = "Violet"};
			case 7: {_color = "Blanc"};
			case 8: {_color = "Jaune"};
			case 9: {_color = "Noir"};
			case 10: {_color = "Rouge Bordeaux"};
			case 11: {_color = "Rouge Cardinal"};
			case 12: {_color = "Vert"};
			case 13: {_color = "Gris"};
		};
	};

	case "cl3_e63_amg_yellow":
	{
		switch (_index) do
		{
			case 0: {_color = "Citron vert"};
			case 1: {_color = "Bleu"};
			case 2: {_color = "Bleu Nuit"};
			case 3: {_color = "Orange"};
			case 4: {_color = "Rouge"};
			case 5: {_color = "Argent"};
			case 6: {_color = "Violet"};
			case 7: {_color = "Blanc"};
			case 8: {_color = "Jaune"};
			case 9: {_color = "Noir"};
			case 10: {_color = "Rouge Bordeaux"};
			case 11: {_color = "Rouge Cardinal"};
			case 12: {_color = "Vert"};
			case 13: {_color = "Gris"};
		};
	};

	case "cl3_aventador_lp7004_2tone3":
	{
		switch (_index) do
		{
			case 0: {_color = "Citron vert"};
			case 1: {_color = "Bleu"};
			case 2: {_color = "Bleu Nuit"};
			case 3: {_color = "Orange"};
			case 4: {_color = "Rouge"};
			case 5: {_color = "Argent"};
			case 6: {_color = "Violet"};
			case 7: {_color = "Blanc"};
			case 8: {_color = "Jaune"};
			case 9: {_color = "Noir"};
			case 10: {_color = "Rouge Bordeaux"};
			case 11: {_color = "Rouge Cardinal"};
			case 12: {_color = "Vert"};
			case 13: {_color = "Gris"};
		};
	};

	case "cl3_reventon_2tone4":
	{
		switch (_index) do
		{
			case 0: {_color = "Citron vert"};
			case 1: {_color = "Bleu"};
			case 2: {_color = "Bleu Nuit"};
			case 3: {_color = "Orange"};
			case 4: {_color = "Rouge"};
			case 5: {_color = "Argent"};
			case 6: {_color = "Violet"};
			case 7: {_color = "Blanc"};
			case 8: {_color = "Jaune"};
			case 9: {_color = "Noir"};
			case 10: {_color = "Rouge Bordeaux"};
			case 11: {_color = "Rouge Cardinal"};
			case 12: {_color = "Vert"};
			case 13: {_color = "Gris"};
		};
	};

	case "cl3_z4_2008_aqua":
	{
		switch (_index) do
		{
			case 0: {_color = "Citron vert"};
			case 1: {_color = "Bleu"};
			case 2: {_color = "Bleu Nuit"};
			case 3: {_color = "Orange"};
			case 4: {_color = "Rouge"};
			case 5: {_color = "Argent"};
			case 6: {_color = "Violet"};
			case 7: {_color = "Blanc"};
			case 8: {_color = "Jaune"};
			case 9: {_color = "Noir"};
			case 10: {_color = "Rouge Bordeaux"};
			case 11: {_color = "Rouge Cardinal"};
			case 12: {_color = "Vert"};
			case 13: {_color = "Gris"};
		};
	};

	case "cl3_carrera_gt_green":
	{
		switch (_index) do
		{
			case 0: {_color = "Citron vert"};
			case 1: {_color = "Bleu"};
			case 2: {_color = "Bleu Nuit"};
			case 3: {_color = "Orange"};
			case 4: {_color = "Rouge"};
			case 5: {_color = "Argent"};
			case 6: {_color = "Violet"};
			case 7: {_color = "Blanc"};
			case 8: {_color = "Jaune"};
			case 9: {_color = "Noir"};
			case 10: {_color = "Rouge Bordeaux"};
			case 11: {_color = "Rouge Cardinal"};
			case 12: {_color = "Vert"};
			case 13: {_color = "Gris"};
		};
	};

	case "cl3_veyron_brn_blk":
	{
		switch (_index) do
		{
			case 0: {_color = "Citron vert"};
			case 1: {_color = "Bleu"};
			case 2: {_color = "Bleu Nuit"};
			case 3: {_color = "Orange"};
			case 4: {_color = "Rouge"};
			case 5: {_color = "Argent"};
			case 6: {_color = "Violet"};
			case 7: {_color = "Blanc"};
			case 8: {_color = "Jaune"};
			case 9: {_color = "Noir"};
			case 10: {_color = "Rouge Bordeaux"};
			case 11: {_color = "Rouge Cardinal"};
			case 12: {_color = "Vert"};
			case 13: {_color = "Gris"};
		};
	};

	case "cl3_r8_spyder_2tone5":
	{
		switch (_index) do
		{
			case 0: {_color = "Citron vert"};
			case 1: {_color = "Bleu"};
			case 2: {_color = "Bleu Nuit"};
			case 3: {_color = "Orange"};
			case 4: {_color = "Rouge"};
			case 5: {_color = "Argent"};
			case 6: {_color = "Violet"};
			case 7: {_color = "Blanc"};
			case 8: {_color = "Jaune"};
			case 9: {_color = "Noir"};
			case 10: {_color = "Rouge Bordeaux"};
			case 11: {_color = "Rouge Cardinal"};
			case 12: {_color = "Vert"};
			case 13: {_color = "Gris"};
		};
	};

	// IVORY
	    case "ivory_gti":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Bleu"};
			case 2: {_color = "Bleu Foncé"};
			case 3: {_color = "Gris"};
			case 4: {_color = "Jaune"};
			case 5: {_color = "Noir"};
			case 6: {_color = "Orange"};
			case 7: {_color = "Rose"};
			case 8: {_color = "Rouge"};
			case 9: {_color = "Rouge Foncé"};
			case 10: {_color = "Vert"};
			case 11: {_color = "Vert Foncé"};
			case 12: {_color = "Violet"};
		};
	};

		    case "ivory_suburban":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Bleu"};
			case 2: {_color = "Bleu Foncé"};
			case 3: {_color = "Gris"};
			case 4: {_color = "Jaune"};
			case 5: {_color = "Noir"};
			case 6: {_color = "Orange"};
			case 7: {_color = "Rose"};
			case 8: {_color = "Rouge"};
			case 9: {_color = "Rouge Foncé"};
			case 10: {_color = "Vert"};
			case 11: {_color = "Vert Foncé"};
			case 12: {_color = "Violet"};
		};
	};
	case "Jonzie_Tow_Truck":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Bleu"};
			case 2: {_color = "Bleu Foncé"};
			case 3: {_color = "Carbon"};
			case 4: {_color = "Gris"};
			case 5: {_color = "Jaune"};
			case 6: {_color = "Noir"};
			case 7: {_color = "Orange"};
			case 8: {_color = "Rose"};
			case 9: {_color = "Rouge"};
			case 10: {_color = "Rouge Foncé"};
			case 11: {_color = "Vert"};
			case 12: {_color = "Vert Foncé"};
			case 13: {_color = "Violet"};
		};
	};
	case "Jonzie_Tanker_Truck":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Bleu"};
			case 2: {_color = "Bleu Foncé"};
			case 3: {_color = "Carbon"};
			case 4: {_color = "Gris"};
			case 5: {_color = "Jaune"};
			case 6: {_color = "Noir"};
			case 7: {_color = "Orange"};
			case 8: {_color = "Rose"};
			case 9: {_color = "Rouge"};
			case 10: {_color = "Rouge Foncé"};
			case 11: {_color = "Vert"};
			case 12: {_color = "Vert Foncé"};
			case 13: {_color = "Violet"};
		};
	};
	case "Jonzie_Box_Truck":
	{
		switch (_index) do
		{
			case 0: {_color = "Blanc"};
			case 1: {_color = "Bleu"};
			case 2: {_color = "Bleu Foncé"};
			case 3: {_color = "Carbon"};
			case 4: {_color = "Gris"};
			case 5: {_color = "Jaune"};
			case 6: {_color = "Noir"};
			case 7: {_color = "Orange"};
			case 8: {_color = "Rose"};
			case 9: {_color = "Rouge"};
			case 10: {_color = "Rouge Foncé"};
			case 11: {_color = "Vert"};
			case 12: {_color = "Vert Foncé"};
			case 13: {_color = "Violet"};
		};
	};

};

_color;