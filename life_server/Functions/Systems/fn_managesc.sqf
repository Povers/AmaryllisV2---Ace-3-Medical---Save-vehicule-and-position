/*
	File: fn_managesc.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	User management of whether or not they want to be on a sidechat for their side.
*/
private["_unit","_bool","_side"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_bool = [_this,1,false,[false]] call BIS_fnc_param;
_side = [_this,2,civilian,[west]] call BIS_fnc_param;

if(isNull _unit) exitWith {};
