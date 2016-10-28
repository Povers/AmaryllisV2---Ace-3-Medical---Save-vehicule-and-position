/*
	File: fn_clothing_ordre.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for Altis Diving Shop.
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Friperie de l'Ordre"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
			//["ice123_apo_cloak",nil,5000]
		];
	};
	
	//Hats
	case 1:
	{
		[
			//["ice123_apo_hood",nil,500]
		];
	};
	
	//Glasses
	case 2:
	{
		[
		];
	};
	
	//Vest
	case 3:
	{
		[
			//["ice_123_apo_bag",nil,2500]
		];
	};
	
	//Backpacks
	case 4:
	{
		[
		];
	};
};