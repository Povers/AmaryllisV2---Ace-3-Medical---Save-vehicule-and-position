#include <macro.h>

if(__GETC__(life_adminlevel) < 1) exitWith {closeDialog 0; playSound "Error";};

private["_target"];
_target = lbData[2902,lbCurSel (2902)];
_target = call compile format["%1", _target];
if(isNil "_target") exitwith {playSound "Error";};
if(isNull _target) exitWith {playSound "Error";};
if(_target == player) exitWith {hint localize "STR_ANOTF_Error"; playSound "Error";};

player setPos (getPos _target);
hint format["Vous vous êtes téléporté sur la position du joueur %1.",_target getVariable["realname", name _target]];
//[[0,format["%1 utilise TP (->)",profileName]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;
playSound "Succes";