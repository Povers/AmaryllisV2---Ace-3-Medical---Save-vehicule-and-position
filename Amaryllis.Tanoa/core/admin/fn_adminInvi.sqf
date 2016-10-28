#include <macro.h>

if(__GETC__(life_adminlevel) < 1) exitWith {};
[player] remoteExecCall ["life_fnc_adminInviclient",0];
//[[0,format["%1 utilise Invisibilité.",profileName]],"life_fnc_broadcast",nil,false] spawn life_fnc_MP;