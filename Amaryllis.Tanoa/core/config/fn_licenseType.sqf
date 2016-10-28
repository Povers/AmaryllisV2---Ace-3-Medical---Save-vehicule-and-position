/*
	File: fn_licenseType.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Returns the short-var of the license name to a long var and display name.
*/
private["_type","_ret","_var","_mode"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
_mode = [_this,1,-1,[0]] call BIS_fnc_param;
if(_type == "" OR _mode == -1) exitWith {[]};

switch (_mode) do
{
	case 0:
	{
		switch (_type) do
		{
			case "driver": {_var = "license_civ_driver"}; 																// Permis de Conduire
			case "boat": {_var = "license_civ_boat"}; 																	// Permis Bateau
			case "air": {_var = "license_civ_air"}; 																	// Licence Air
			case "para": {_var = "license_cop_para"}; 																	// Licence Para
			case "sniper": {_var = "license_cop_sniper"}; 																// Licence Sniper
			case "arti": {_var = "license_cop_arti"}; 																	// Licence Pilote
			case "gun": {_var = "license_civ_gun"}; 																	// Port D'arme
			case "dive": {_var = "license_civ_dive"}; 																	// Plongé
			case "air": {_var = "license_cop_air"}; 																	// Pilote Armée
			case "cg": {_var = "license_cop_cg"}; 																		// Garde Côte
			case "truck":{_var = "license_civ_truck"};																	// Camions
			case "air": {_var = "license_med_air"};																		// Pilote Medecin
			case "home": {_var = "license_civ_home"};
			case "gouv": {_var = "license_civ_gouv"};
			case "pilotciv": {_var = "license_civ_pilotciv"};																	// Propriété
			
			/* Ressources */

			case "seigle": {_var = "license_civ_seigle"};																		
			case "orge": {_var = "license_civ_orge"};
			case "bois": {_var = "license_civ_bois"};																
			case "banane": {_var = "license_civ_banane"};																	
			case "cacao":  {_var = "license_civ_cacao"};															
			case "charbon": {_var = "license_civ_charbon"};																			
			case "fer":{_var = "license_civ_fer"};																	
			case "diamant":{_var = "license_civ_diamant"};
			case "huitre":{_var = "license_civ_huitre"};																	
			case "petrole":{_var = "license_civ_petrole"};
			case "cannabis": {_var = "license_civ_cannabis"};																
			case "cocaine":  {_var = "license_civ_cocaine"};														
			case "vestige": {_var = "license_civ_vestige"};											
			
			/* Autres */
			case "depannage": {_var = "license_civ_depannage"};	
			case "criminel": {_var = "license_civ_criminel"};
			case "gangster": {_var = "license_civ_gangster"};
			case "gunpriv": {_var = "license_civ_parmurerie"};
			case "ordre": {_var = "license_civ_ordre"};
			case "concess_lux": {_var = "license_civ_concess_lux"};
			case "entreprise": {_var = "license_civ_entreprise"};
			case "tanoil": {_var = "license_civ_tanoil"};
			case "tanoilt": {_var = "license_civ_ttanoil"};
			case "monte": {_var = "license_civ_monte"};
			case "montet": {_var = "license_civ_tmonte"};
			case "yunque": {_var = "license_civ_yunque"};
			case "yunquet": {_var = "license_civ_tyunque"};
			case "sosovu": {_var = "license_civ_sosovu"};
			case "sosovut": {_var = "license_civ_tsosovu"};
															
			default {_var = ""};
		};
	};
	
	case 1:
	{
		switch (_type) do
		{
			case "license_civ_driver": {_var = "driver"}; 																// Permis de Conduire
			case "license_civ_boat": {_var = "boat"}; 																	// Permis Bateau
			case "license_civ_pilot": {_var = "pilot"}; 																// Licence Pilote
			case "license_civ_air": {_var = "air"}; 																	// Licence Air
			case "license_cop_para": {_var = "para"}; 																	// Licence Para
			case "license_cop_sniper": {_var = "sniper"}; 																// Licence Sniper
			case "license_cop_arti": {_var = "arti"}; 																	// Licence Sniper
			case "license_civ_gun": {_var = "gun"}; 																	// Port D'arme
			case "license_civ_dive": {_var = "dive"}; 																	// Plongé
			case "license_cop_air": {_var = "cair"}; 																	// Pilote Armée
			case "license_cop_cg": {_var = "cg"}; 																		// Garde Côte
			case "license_civ_truck":{_var = "truck"};																	// Camions
			case "license_med_air": {_var = "mair"};																	// Pilote Medecin
			case "license_civ_home": {_var = "home"};
			case "license_civ_gouv": {_var = "gouv"};	
			case "license_civ_pilotciv": {_var = "pilotciv"};																	// Propriété

			//License traitement ressources
			case "license_civ_seigle": {_var = "seigle"};																		
			case "license_civ_orge": {_var = "orge"};
			case "license_civ_bois": {_var = "bois"};																
			case "license_civ_banane": {_var = "banane"};																	
			case "license_civ_cacao":  {_var = "cacao"};															
			case "license_civ_charbon": {_var = "charbon"};																			
			case "license_civ_fer":{_var = "fer"};																	
			case "license_civ_diamant":{_var = "diamant"};
			case "license_civ_huitre":{_var = "huitre"};																	
			case "license_civ_petrole":{_var = "petrole"};
			case "license_civ_cannabis": {_var = "cannabis"};																
			case "license_civ_cocaine":  {_var = "cocaine"};														
			case "license_civ_vestige": {_var = "vestige"};											
			
			/* Autres */
			case "license_civ_depannage": {_var = "depannage"};
			case "license_civ_criminel": {_var = "criminel"};	
			case "license_civ_gangster": {_var = "gangster"};
			case "license_civ_parmurerie": {_var = "gunpriv"};
			case "license_civ_concess_lux": {_var = "concess_lux"};
			case "license_civ_entreprise": {_var = "entreprise"};
			case "license_civ_tanoil": {_var = "tanoil"};
			case "license_civ_ttanoil": {_var = "tanoilt"};
			case "license_civ_monte": {_var = "monte"};
			case "license_civ_tmonte": {_var = "montet"};
			case "license_civ_yunque": {_var = "yunque"};
			case "license_civ_tyunque": {_var = "yunquet"};
			case "license_civ_sosovu": {_var = "sosovu"};
			case "license_civ_tsosovu": {_var = "sosovut"};
			
			default {_var = ""};
		};
	};
};

_ret = [_var,(if(_var != "") then {([_var] call life_fnc_varToStr)})];
_ret;