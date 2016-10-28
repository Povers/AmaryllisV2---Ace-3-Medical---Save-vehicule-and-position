/*
	File: fn_clothing_creb.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Reb shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Friperie Chef-Criminel"];

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