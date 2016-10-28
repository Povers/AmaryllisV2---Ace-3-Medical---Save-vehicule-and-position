#include <macro.h>
/*
	File: fn_adminFreeze.sqf
	Author: ColinM9991
 
	Description: Freezes selected player
*/

if(__GETC__(life_adminlevel) < 1) exitWith {closeDialog 0; hint localize "STR_ANOTF_ErrorLevel"; playSound "Error";};

private["_unit"];
_unit = lbData[2902,lbCurSel (2902)];
_unit = call compile format["%1", _unit];
if(isNil "_unit") exitWith {playSound "Error";};
if(isNull _unit) exitWith {playSound "Error";};
if(_unit == player) exitWith{playSound "Error"; hint localize "STR_ANOTF_Error";};

//[[0,format["%1 utilise Freeze.",profileName]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
playSound "Succes";

[[player],"life_fnc_freezePlayer",_unit,false] spawn life_fnc_MP; 