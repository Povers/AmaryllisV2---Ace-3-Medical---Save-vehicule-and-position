private["_target", "_lvl","_typ"];

_target = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_lvl = 0;
_typ = _this select 1;

if(isNull _target) exitwith {};
if( !(_target isKindOf "Man") ) exitwith {};
if( !(alive _target) ) exitwith {};

switch (playerSide) do
{
	case west: 
	{
		_lvl = (call life_coplevel);
	};
	case independent: 
	{
		_lvl = (call life_medicLevel);
	};
};

[player,_lvl,_typ] remoteExecCall ["life_fnc_Carte",_target];