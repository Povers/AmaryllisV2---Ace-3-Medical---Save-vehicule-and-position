/*
	File: fn_clothing_gangster.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Reb shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Friperie Gangster"];

switch (_filter) do
{
	//Uniforms
	
	case 0:
	{
		[
			["U_I_G_resistanceLeader_F","Stavrou",2500],
			["TRYK_U_Bts_PCUs","TRYK PCU",2500],
			["TRYK_U_B_PCUGs_BLK_R","TRYK PCU Jacket",2500],
			["TRYK_U_B_UCP_PCUs_R","TRYK PCU Jacket ACU",2500],
			["TRYK_U_pad_hood_Blod","TRYK Special Force",2500],
			["TRYK_U_pad_hood_Cl_blk","TRYK Special Force hood",2500]
		];
	};
	
	//Hats
	case 1:
	{
		[
		];
	};
	
	//Glasses
	case 2:
	{
		[
			["G_Balaclava_blk","Balaclava noir",5000],
			["G_Balaclava_oli","Balaclava olive",5000]
		];
	};
	
	//Vest
	case 3:
	{
		[
			["V_TacVest_khk","Gilet marron",20000],
			["V_TacVest_oli","Gilet vert",20000],
			["V_TacVest_blk","Gilet noir",20000]
			
		];
	};
	
	//Backpacks
	case 4:
	{
		[
		];
	};
};