/*
	File: fn_licenseCheck.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Returns the licenses to the cop.
*/
private["_cop"];
_cop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _cop) exitWith {}; //Bad entry

_licenses = "";
_lichide = ["license_civ_depannage","license_civ_parmurerie","license_civ_concess_lux","license_civ_tanoil","license_civ_entreprise","license_civ_ordre","license_civ_gangster","license_civ_criminel","license_civ_banane","license_civ_seigle","license_civ_orge","license_civ_bois","license_civ_cacao","license_civ_charbon","license_civ_fer","license_civ_diamant","license_civ_huitre","license_civ_petrole","license_civ_cannabis","license_civ_cocaine","license_civ_vestige"];
//Licenses
{
	if(missionNamespace getVariable (_x select 0) && _x select 1 == "civ" && !(_x in _lichide)) then
	{
		_licenses = _licenses + ([_x select 0] call life_fnc_varToStr) + "<br/>";
	};
} foreach life_licenses;


if(_licenses == "") then {_licenses = (localize "STR_Cop_NoLicensesFound");};

[[profileName,_licenses],"life_fnc_licensesRead",_cop,FALSE] spawn life_fnc_MP;