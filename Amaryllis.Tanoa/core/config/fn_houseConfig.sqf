/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for buyable houses?
*/
private["_house"];
_house = [_this,0,"",[""]] call BIS_fnc_param;
if(_house == "") exitWith {[]};

/*
	Return Format:
	[price,# of containers allowed]
*/
switch (true) do {
	case (_house in ["Land_i_Garage_V1_F","Land_i_Garage_V2_F"]): {[500000,0]};
	case (_house in ["Land_House_Big_03_F"]): {[700000,3]};
	case (_house in ["Land_House_Big_04_F"]): {[500000,3]};
	case (_house in ["Land_Addon_04_F"]): {[400000,2]};
	case (_house in ["Land_House_Small_05_F"]): {[350000,2]};
	case (_house in ["Land_House_Small_04_F"]): {[400000,2]};
	case (_house in ["Land_House_Big_02_F"]): {[600000,2]};
	case (_house in ["Land_House_Small_06_F"]): {[350000,2]};
	case (_house in ["Land_House_Big_01_F"]): {[400000,2]};
	case (_house in ["Land_House_Small_03_F"]): {[400000,2]};
	case (_house in ["Land_House_Small_02_F"]): {[350000,2]};
	case (_house in ["Land_Slum_01_F"]): {[250000,1]};
	case (_house in ["Land_Slum_03_F"]): {[350000,2]};
	case (_house in ["Land_Shed_05_F"]): {[250000,1]};
	//case (_house in ["Land_Shed_02_F"]): {[250000,1]};
	case (_house in ["Land_GarageShelter_01_F"]): {[500000,1]};
	case (_house in ["Land_Hotel_02_F"]): {[1000000,5]};
	case (_house in ["Land_SM_01_shed_F"]): {[1000000,10]};
	case (_house in ["Land_i_Shed_Ind_F"]): {[1000000,10]};

	default {[]};
};