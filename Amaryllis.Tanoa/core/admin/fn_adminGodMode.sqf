#include <macro.h>

if(__GETC__(life_adminlevel) < 1) exitWith {closeDialog 0; hint localize "STR_ANOTF_ErrorLevel"; playSound "Error";};
 
if(life_god) then {
	life_god = false;
	titleText ["Mode Dieu désactivé","PLAIN"]; titleFadeOut 2;
    //[[0,format["%1 n'utilise plus Dieu.",profileName]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
	playSound "Succes";
	player allowDamage true;
} else {
	life_god = true;
	titleText ["Mode Dieu activé","PLAIN"]; titleFadeOut 2;
	//[[0,format["%1 utilise Dieu.",profileName]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
	playSound "Succes";
	player allowDamage false;
};