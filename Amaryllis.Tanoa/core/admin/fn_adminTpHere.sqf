#include <macro.h>

if(__GETC__(life_adminlevel) < 1) exitWith {closeDialog 0; playSound "Error";};

private["_target"];
_target = lbData[2902,lbCurSel (2902)];
_target = call compile format["%1", _target];
if(isNil "_target") exitwith {playSound "Error";};
if(isNull _target) exitWith {playSound "Error";};
if(_unit == player) exitWith {hint localize "STR_ANOTF_Error"; playSound "Error";};

_target setPos (getPos player);
hint format["Vous avez téléporté le joueur %1 sur votre position.",_target getVariable["realname",name _target]];
//[[0,format["%1 utilise TP (<-).",profileName]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
playSound "Succes";