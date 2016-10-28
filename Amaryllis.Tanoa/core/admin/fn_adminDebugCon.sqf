#include <macro.h>
/*
	File: fn_adminDebugCon.sqf
	Author: ColinM9991
	
	Description:
	Opens the Debug Console.
*/

if(__GETC__(life_adminlevel) < 3) exitWith {closeDialog 0; hint localize "STR_ANOTF_ErrorLevel"; playSound "Error";};

createDialog "RscDisplayDebugPublic";

//[[0,format["%1 utilise la Console.",profileName]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
playSound "Succes";