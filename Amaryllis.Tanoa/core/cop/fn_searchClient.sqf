/*
	File: fn_searchClient.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Searches the player and he returns information back to the player.
*/
private["_cop","_inv","_var","_val"];
_cop = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

if(isNull _cop) exitWith {};
_inv = [];
//_robber = false;
//Illegal items
{
	//_var = [_x select 0,0] call life_fnc_varHandle;
	_val = missionNamespace getVariable _x;
	if(_val > 0) then
	{
		_inv pushBack [_x,_val];
		//[false,(_x select 0),_val] call life_fnc_handleInv;
	};
} foreach life_inv_items;
/*
if(!life_use_atm) then 
{
	life_cash = 0;
	_robber = true;
};*/

[[player,_inv,life_cash],"life_fnc_copSearch",_cop,false] spawn life_fnc_MP;