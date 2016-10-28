/*
	File: fn_clothing_medic.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Friperie Medic"];

switch (_filter) do
{
	// Uniforms
	// Forme : ["classname","Vet 1",0],
	case 0:
	{
		[
			["TRYK_U_B_wh_blk_Rollup_CombatUniform","Chemisette",0],
			["TRYK_U_B_BLKBLK_R_CombatUniform","Uniforme noir",0]
		];
	};
	
	//Hats
	// Forme : ["classname","Vet 1",0],
	case 1:
	{
		[
			["H_Bandanna_blu","Bandana bleu ",0],
			["H_Bandanna_gry","Bandana noir",0],
			["H_Bandanna_cbr","Bandana marron",0],
			["H_Bandanna_khk","Bandana vert",0],
			["H_Watchcap_cbr","Bonnet marron ",0],
			["H_Watchcap_camo","Bonnet vert",0],
			["policia_pilot_helmet","Casque de pilote",0]
			
		];
	};
	
	//Glasses
	// Forme : ["classname","Vet 1",0],
	case 2:
	{
		[
		["G_Sport_BlackWhite","L.soleil sport (Ombre)",0],
		["G_Sport_Blackyellow","L.soleil sport (Poison)",0],
		["G_Shades_Blue","L. de soleil (bleu)",0],
		["G_Shades_Black","L. de soleil (noir) ",0],
		["G_Shades_Red","L. de soleil (rouge)",0],
		["G_Spectacles","L. Carrées",0],
		["G_Spectacles_Tinted","Lunettes Hipster",0],
		["G_Aviator","Lunettes d'aviateur",0]

		];
	};
	
	//Vest
	// Forme : ["classname","Vet 1",0],
	case 3:
	{
		[
			["TRYK_V_Bulletproof_BLK","Gilet blanc",0],
			["ama_giletnoir_smt","Gilet blanc",0]
		];
	};
	
	//Backpacks
	// Forme : ["classname","Vet 1",0],
	case 4:
	{
		[
			["TRYK_B_Coyotebackpack_SMT","Sac blanc",0],
			["TRYK_B_Coyotebackpack_BLK","Sac noir",0],
			["B_Bolsa_camp_cruz","Tente médicale",0]
		];
	};
};