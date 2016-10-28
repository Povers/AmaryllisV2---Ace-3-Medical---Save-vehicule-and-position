/*
	File: fn_clothing_bruce.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Bruce's Outback Outfits.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Friperie"];

switch (_filter) do
{
	// Uniforms
	// Forme : ["classname","Vet 1",0],
	case 0:
	{
		[
		["U_I_C_Soldier_Bandit_4_F","Tenue décontracté 1",15],
		["U_I_C_Soldier_Bandit_5_F","Tenue décontracté 2",15],
		["U_I_C_Soldier_Bandit_1_F","Tenue décontracté 3",15],
		["U_I_C_Soldier_Bandit_2_F","Tenue décontracté 4",15],
		["U_I_C_Soldier_Bandit_3_F","Tenue décontracté 5",15],
		["U_C_Man_casual_4_F","Tenue décontracté 6",15],
		["U_C_Man_casual_5_F","Tenue décontracté 7",15],
		["U_C_Man_casual_6_F","Tenue décontracté 8",15],
		["U_C_man_sport_3_F","Tenue de surfeur 1",25],
		["U_C_man_sport_2_F","Tenue de surfeur 2",25],
		["U_C_man_sport_1_F","Tenue de surfeur 3",25],
		["U_C_Man_casual_1_F","Tenue de ville 1",25],
		["U_C_Man_casual_2_F","Tenue de ville 2",25],
		["U_C_Man_casual_3_F","Tenue de ville 3",25],
		["U_I_HeliPilotCoveralls","Combinaison de Pilote d'hélico",50],
		["U_C_HunterBody_grn","Habit de chasse",20],
		["U_C_Poloshirt_blue","Habit ordinaire bleu 1",25],
		["U_C_Poloshirt_burgundy","Habit ordinaire bordeaux",25],
		["U_C_Poloshirt_stripped","Habit ordinaire rayés 1",25],
		["U_C_Poloshirt_redwhite","Habit ordinaire rouge-blanc",25],
		["U_C_Poloshirt_salmon","Habit ordinaire saumon 1",25],
		["U_C_Poloshirt_tricolour","Habit ordinaire tricolore",25],
		["U_BG_Guerilla3_1","Saurrau de guérillero",20],
		["U_BG_Guerrilla_6_1","Tenue de guérilla",20],
		["TRYK_U_B_C02_Tsirt","TRYK casual Uniform",25],
		["TRYK_U_B_BLK_OD_Rollup_CombatUniform","TRYK RollUp BDU1",25],
		["TRYK_U_B_BLK_tan_Rollup_CombatUniform","TRYK RollUp BDU2",25],
		["TRYK_U_B_wh_OD_Rollup_CombatUniform","TRYK RollUp BDU4",20],
		["TRYK_shirts_DENIM_BK","TRYK Shurt Denin1",35],
		["TRYK_shirts_DENIM_BWH","TRYK Shurt Denin2",35],
		["TRYK_shirts_DENIM_od","TRYK Shurt Denin3",25],
		["TRYK_shirts_DENIM_R","TRYK Shurt Denin4",15],
		["TRYK_U_denim_jersey_blk","TRYK Jogging1",15],
		["TRYK_U_denim_jersey_blu","TRYK Jogging2",15],
		["TRYK_U_taki_G_WH","TRYK mideast1",10],
		["TRYK_U_taki_G_COY","TRYK mideast2",10],
		["TRYK_SUITS_BLK_F","Costume 1",250],
		["TRYK_SUITS_BR_F","Costume 2",250],
		["TRYK_U_B_BLK_T_BK","TRYK short1",40],
		["TRYK_U_B_Denim_T_WH","TRYK short2",40],
		["U_BG_Guerilla2_2","Unité de guérilla1",40],
		["U_BG_Guerilla2_3","Unité de guérilla2",40],
		["U_BG_Guerilla2_1","Unité de guérilla3",40],
		["U_OrestesBody","Tenue de plagiste",35],
		["U_C_Driver_1_white","Combinaison de pilote blanche",100],
		["U_C_Driver_1_red","Combinaison de pilote rouge",100],
		["U_C_Driver_1_black","Combinaison de pilote noir",100],
		["U_C_Driver_1_green","Combinaison de pilote verte",100],
		["U_C_Driver_1_yellow","Combinaision de pilote jaune",100]

		
		];
	};
	
	//Hats
	// Forme : ["classname","Vet 1",0],
	case 1:
	{
		[
			["H_Bandanna_blu","Bandana bleu ",5],
			["H_Bandanna_gry","Bandana noir",5],
			["H_Bandanna_cbr","Bandana marron",5],
			["H_Bandanna_khk","Bandana vert",5],
			["H_Watchcap_cbr","Bonnet marron ",10],
			["H_Watchcap_camo","Bonnet vert",10],
			["H_Cap_blk_CMMG","Casquette M4A1",10],
			["H_Cap_tan","asquette marron clair ",10],
			["H_Cap_usblack","Casquette noir US",10],
			["H_Cap_blk","Casquette noir",10],
			["H_Cap_oli","Casquette verte",10],
			["H_Cap_khaki_specops_UK","Casquette UK",10],
			["H_Cap_surfer","Casquette Surfeur",10],
			["H_Hat_blue","Chapeau bleu",20],
			["H_Hat_checker","Chapeau a carreau",15],
			["H_Hat_grey","Chapeau gris ",15],
			["H_Hat_tan","Chapeau marron clair",15],
			["H_Hat_brown","Chapeau marron",15],
			["H_StrawHat","Chapeau de paille",15],
			["TRYK_H_Bandana_H","TRYK bandana",5],
			["TRYK_R_CAP_OD_US","Casquette US a l'envers",10],
			["H_RacingHelmet_1_white_F","Casque de course blanc",125],
			["H_RacingHelmet_1_red_F","Casque de course rouge",125],
			["H_RacingHelmet_1_black_F","Casque de course noir",125],
			["H_RacingHelmet_1_green_F","Casque de course vert",125],
			["H_RacingHelmet_1_yellow_F","Casque de course jaune",125]
		];
	};
	
	//Glasses
	// Forme : ["classname","Vet 1",0],
	case 2:
	{
		[
		["G_Sport_BlackWhite","L.soleil sport (Ombre)",10],
		["G_Sport_Blackyellow","L.soleil sport (Poison)",10],
		["G_Shades_Blue","L. de soleil (bleu)",10],
		["G_Shades_Black","L. de soleil (noir) ",10],
		["G_Shades_Red","L. de soleil (rouge)",10],
		["G_Spectacles","L. Carrées",25],
		["G_Spectacles_Tinted","Lunette Hipster",25],
		["G_Aviator","Lunette d'aviateur",25],
		["G_Squares","Lunette carré",25]
		 
		];
	};
	
	//Vest
	// Forme : ["classname","Vet 1",0],
	case 3:
	{
		[
		["rhs_6sh46","Pochette olive",25],
		["rhs_vest_commander","Pochette en cuir",25]
		];
	};
	
	//Backpacks
	// Forme : ["classname","Vet 1",0],
	case 4:
	{
		[
			["B_Carryall_mcamo","Sac a dos grand MTP",150],
			["B_Carryall_oli","Sac a dos grand vert",150],
			["B_Carryall_oucamo","Sac a dos grand ville",150],
			["B_Carryall_cbr","Sac a dos grand coyote",150],
			["B_Carryall_khk","Sac a dos grand kaki",150],
			["B_TacticalPack_blk","Sac a dos tactique noir",100],
			["B_TacticalPack_rgr","Sac a dos tactique MTP",100],
			["B_TacticalPack_mcamo","Sac a dos tactique MTP",100],
			["TRYK_B_Kitbag_blk","Sac a dos léger noir",75],
			["TRYK_B_Kitbag_Base","Sac a dos léger vert",75]
		];
	};
};