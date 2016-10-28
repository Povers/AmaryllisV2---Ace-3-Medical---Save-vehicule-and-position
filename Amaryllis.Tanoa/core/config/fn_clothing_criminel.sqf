/*
	File: fn_clothing_reb.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Reb shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Friperie Criminel"];

switch (_filter) do
{
	//Uniforms
	// Forme : ["classname","Vet 1",0],
	case 0:
	{
		[

		["rhs_uniform_g3_blk","Uniforme G3 noir",5000],
		["rhs_uniform_g3_rgr","Uniforme G3 vert",5000],
		["TRYK_U_B_BLK3CD","Uniforme TRYK 1",5000],
		["TRYK_U_B_BLK3CD_Tshirt","Uniforme TRYK 2",5000],
		["TRYK_U_B_Sage_Tshirt","Uniforme TRYK 3",5000],
		["TRYK_U_hood_nc","Uniforme TRYK 4",5000],
		["TRYK_U_taki_BLK","Takistan 1",5000],
		["TRYK_U_taki_COY","Takistan 2",5000],
		["TRYK_U_taki_wh","Takistan 3",5000],
		["U_BG_Guerilla1_1","Uniforme de guérilla 1",5000],
	    ["U_I_C_Soldier_Para_3_F","Uniforme de guérilla 2",5000],
		["U_I_C_Soldier_Para_4_F","Uniforme de guérilla 3",5000],
		["U_I_C_Soldier_Para_5_F","Uniforme de guérilla 4",5000],
		["U_I_C_Soldier_Para_1_F","Uniforme de guérilla 5",5000],
		["U_I_C_Soldier_Para_2_F","Uniforme de guérilla 6",5000]
		];
	};
	
	//Hats
	// Forme : ["classname","Vet 1",0],
	case 1:
	{
		[
		["H_Beret_blk","Béret noir",2500],
		["H_Booniehat_oli","Chapeau de brousse vert",500],
		["H_Booniehat_khk","Chapeau de brousse khaki",500],
		["H_Booniehat_tan","Chapeau de brousse sable",500],
		["TRYK_H_Booniehat_WOOD","Chapeau de brousse bois",500],
		["rhs_beanie","Bonnet flora",500],
		["H_ShemagOpen_khk","Shemag blanc",5000],
		["H_ShemagOpen_tan","Shemag marron",5000],
		["H_Shemag_olive","Shemag vert",5000]
		];
	};
	
	//Glasses
	// Forme : ["classname","Vet 1",0],
	case 2:
	{
		[
		["G_Bandanna_blk","Bandana noir",500],
		["G_Bandanna_oli","Bandana vert",500],
		["G_Bandanna_aviator","Bandana aviateur",500],
		["G_Bandanna_tan","Bandana sable",500],
		["G_Bandanna_beast","Bandana fauve",500],
		["TRYK_kio_balaclavas","Balaclava Skul",500]
		];
	};
	
	//Vest
	// Forme : ["classname","Vet 1",0],
	case 3:
	{
		[
	    ["V_PlateCarrier2_blk","Gilet modulable noir",40000],
		["V_PlateCarrier2_rgr_noflag_F","Gilet modulable vert",40000],
		["TRYK_V_ArmorVest_Delta","Gilet léger noir",30000],
		["TRYK_V_ArmorVest_green","Gilet léger vert",30000]
		];
	};
	
	//Backpacks
	// Forme : ["classname","Vet 1",0],
	case 4:
	{
		[
	   ];
	};
};