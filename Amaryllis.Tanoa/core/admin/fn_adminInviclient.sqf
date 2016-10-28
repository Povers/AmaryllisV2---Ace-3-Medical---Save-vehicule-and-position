private["_unit"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

if (isNull _unit) exitWith {};
if (_unit == player) then {

_unit hideObject true;
}