#include <macro.h>
/*
	File: fn_copSearch.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Returns information on the search.
*/
life_action_inUse = false;
private["_cash"];
params [
	["_civ",Objnull,[Objnull]],
	["_invs",[],[[]]]
];

_cash = _this select 2;
if(isNull _civ) exitWith {};


_inv = "";
if(count _invs > 0) then
{
	{
		_inv = _inv + format["%2 [x%1]<br/>",_x select 1,[_x select 0] call life_fnc_varToStr];
	} foreach _invs;
}
else
{
	_inv = "Rien";
};

if(!alive _civ || player distance _civ > 5) exitWith {hint localize "STR_Cop_CouldntSearch"};
hint parseText format["<t color='#FF0000'><t size='2'>Cible</t></t><br/><t color='#FFD700'><t size='1.5'><br/>Objets virtuels</t></t><br/>%1<br/><br/><t color='#FFD700'><t size='1.5'>Argent</t></t><br/>%2€<br/><br/>"
,_inv,_cash];