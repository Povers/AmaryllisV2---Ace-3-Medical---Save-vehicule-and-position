/*
	File: fn_licensePrice.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Returns the license price.
*/
private["_type"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
if(_type == "") exitWith {-1};

switch (_type) do
{
	case "driver": {1500};																								// Permis de Conduire
	case "boat": {5000}; 																								// Permis Bateau
	case "pilotciv": {150000}; 																								// Licence Pilote
	case "gun": {60000};																								// Port D'arme
	case "dive": {5000};																								// Plongé																							// Pilote Armée
	case "cg": {1}; 																									// Garde Côte
	case "truck": {100000};																								// Camions
	case "home": {200000};
	case "gangster": {300000};																								// Propriété
	
	/* Ressources */

	case "seigle": {3500};	
	case "orge": {3500};
	case "bois": {3500};
	case "banane": {1};
	case "cacao": {33000};
	case "charbon": {33000};
	case "fer": {33000};
	case "diamant": {100000};
	case "huitre": {60000};
	case "petrole": {80000};
	case "cannabis": {250000};
	case "cocaine": {250000};
	case "vestige": {250000};
	};