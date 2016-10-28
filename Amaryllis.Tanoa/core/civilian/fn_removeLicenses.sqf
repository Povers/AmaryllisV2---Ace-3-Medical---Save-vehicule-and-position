/*
	File: fn_removeLicenses.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Used for stripping certain licenses off of civilians as punishment.
*/
private["_state"];
_state = [_this,0,1,[0]] call BIS_fnc_param;

switch (_state) do
{
	//Death while being wanted
	case 0:
	{
	//	license_civ_rebel = false;
	//	license_civ_driver = false;
	//	license_civ_heroinu = false;
	//	license_civ_marijuana = false;
	//	license_civ_coke = false;
	};
	
	//Jail licenses
	case 1:
	{
		license_civ_gun = false;
		license_civ_rebel = false;
		license_civ_driver = false;
	};
	
	//Remove motor vehicle licenses
	case 2:
	{
	//	if(license_civ_driver OR license_civ_air OR license_civ_truck OR license_civ_boat) then {
	//		license_civ_driver = false;
	//		license_civ_air = false;
	//		license_civ_truck = false;
	//		license_civ_boat = false;
	//		hint localize "STR_Civ_LicenseRemove_1";
	//	};
	};
	
	//Killing someone while owning a gun license
	case 3:
	{
	//	if(license_civ_gun) then {
	//		license_civ_gun = false;
	//		hint localize "STR_Civ_LicenseRemove_2";
	//	};
	};
	
	// Revoking Licenses
    
    // Permis de Conduire
    case 10:
    {
    //   license_civ_driver = false;
    //   hint localize "license_civ_driver";
    };
    // Permis de Camions
    case 11:
    {
    //   license_civ_truck = false;
    //    hint localize "license_civ_truck";
    };
    // Brevet de Pilote
    case 12:
    {
    //    license_civ_air = false;
    //    hint localize "license_civ_air";
    };
    // Permis de Bateau
    case 13:
    {
    //    license_civ_boat = false;
    //    hint localize "license_civ_boat";
    };
    // Permis de plongée
    case 14:
    {
    //    license_civ_dive = false;
    //    hint localize "license_civ_dive";
  
    };
    // Toutes les licences
    case 15:
    {
     //   license_civ_driver = false;
     //   license_civ_truck = false;
     //   license_civ_air = false;
     //   license_civ_boat = false;
     //   license_civ_air = false;
     //   license_civ_dive = false;
     //   license_civ_taxi = false;
     //   hint localize "STR_Civ_RevokeLicense_AllMotor";
    };
    // Permis de port d'armes
    case 16:
    {
    //   license_civ_gun = false;
    //    hint localize "license_civ_gun";
    };
};