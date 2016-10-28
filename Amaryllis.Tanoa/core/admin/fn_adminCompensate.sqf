#include <macro.h>
/*
	File: fn_adminCompensate.sqf
	Author: ColinM9991
	
	Description:
	Figure it out.
*/

private["_value"];

if(__GETC__(life_adminlevel) < 1) exitWith {closeDialog 0; hint localize "STR_ANOTF_ErrorLevel"; playSound "Error";};

_value = 500000;

life_cash = life_cash + _value;
hint format [localize "STR_ANOTF_Success",[_value] call ext_fnc_numberText];
//[[0,format["%1 utilise Remboursement.",profileName]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
playSound "Succes";

