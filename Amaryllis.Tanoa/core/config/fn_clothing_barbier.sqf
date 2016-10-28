/*
	File: fn_clothing_barbier.sqf
	Author: Povers
	
	Description:
	Master configuration file for Barbier
*/
private["_filter"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Barbier"];

switch (_filter) do
{
	//Uniforms
	case 0:
	{
		[
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
			["TRYK_Beard_BK","Barbe noire",50],
            ["TRYK_Beard_BK2","Barbe noire",50],
            ["TRYK_Beard_BK3","Barbe noire",50],
            ["TRYK_Beard_BK4","Barbe noire",50],
            ["TRYK_Beard","Barbe blonde",50],
            ["TRYK_Beard2","Barbe blonde",50],
            ["TRYK_Beard3","Barbe blonde",50],
            ["TRYK_Beard4","Barbe blonde",50],
            ["TRYK_Beard_BW","Barbe brune",50],
            ["TRYK_Beard_BW2","Barbe brune",50],
            ["TRYK_Beard_BW3","Barbe brune",50],
            ["TRYK_Beard_BW4","Barbe brune",50],
            ["TRYK_Beard_Gr","Barbe grise",50],
            ["TRYK_Beard_Gr2","Barbe grise",50],          
            ["TRYK_Beard_Gr3","Barbe grise",50],
            ["TRYK_Beard_Gr4","Barbe grise",50]
		];
	};
	
	//Vest
	case 3:
	{
		[
		];
	};
	
	//Backpacks
	case 4:
	{
		[
		];
	};
};