/*
	File: fn_clothing_gunprivate.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Reb shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Friperie Privée"];

switch (_filter) do
{
	//Uniforms
	// Forme : ["classname","Vet 1",0],
	case 0:
	{
		[
		];
	};
	
	//Hats
	// Forme : ["classname","Vet 1",0],
	case 1:
	{
		[
		];
	};
	
	//Glasses
	// Forme : ["classname","Vet 1",0],
	case 2:
	{
		[	
		];
	};
	
	//Vest
	// Forme : ["classname","Vet 1",0],
	case 3:
	{
		[
        
        ["V_Chestrig_oli","Chest Rig Olive",2500],
        ["V_Chestrig_blk","Chest Rig Noir",2500],
		["rhs_vest_pistol_holster","Holster",1500]
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