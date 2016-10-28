#include <macro.h>
/*
	File: fn_adminArsenal.sqf
	Author: Povers
	
	Description:
	Open Arsenal.
*/

if(__GETC__(life_adminlevel) < 1) exitWith {closeDialog 0; hint localize "STR_ANOTF_ErrorLevel"; playSound "Error";};

["Open",true] spawn BIS_fnc_arsenal;

//[[0,format["%1 utilise l'Arsenal.",profileName]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
playSound "Succes";