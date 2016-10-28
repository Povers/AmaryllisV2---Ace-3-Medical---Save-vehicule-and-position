/*
	File: fn_vehicleRefuel.sqf
	Author: John "Paratus" VanderZwet
	
	Description:
	Refuel a vehicle!
*/

private ["_vehicle","_capacity","_fuel","_cost","_level","_tick","_delay","_exit","_costfinal"];

if (vehicle player != player) exitWith { hint "Veuillez descendre du véhicule pour remettre de l'essence !"; };
_vehicle = nearestObjects [(_this select 0), ["Air", "LandVehicle"], 10];
if (count _vehicle == 0) exitWith { hint "Aucun véhicule dans les 10m !"; };
_vehicle = _vehicle select 0;

if (isEngineOn _vehicle) exitWith { hint "Veuillez couper le moteur pour remettre de l'essence !"; };

_capacity = getNumber(configFile >> "CfgVehicles" >> typeOf _vehicle >> "fuelCapacity");

_fuel = 0;
_cost = 0;
_level = fuel _vehicle;
_delay = 0.5;
_exit = false;
if (_vehicle isKindOf "Air") then { _delay = _delay / 3; };

while {_level < 1} do
{
	sleep _delay;
	if (speed player > 1) exitWith {};
	if (player distance (_this select 0) > 5) exitWith {};
	if (vehicle player != player) exitWith {};
	
	_costfinal = _cost + (20 * 1);
	if (life_cash < _costfinal) exitWith {_exit = true;};
	_cost = _costfinal;
	_fuel = _fuel + 1;

	_tick = 1 / _capacity;
	_level = _level + _tick;
	if (_level > 1) then { _level = 1; };
	  
      hintSilent parseText format["<t size=2 color='#ff0000'>Tan'Oil</t> <br/><t color='#cec25b'>Litres:</t> %1<br/><t color='#cec25b'>Prix du litre :</t> 20€<br/><t color='#cec25b'>Prix total :</t> %2€<br/><t color='#cec25b'>Réservoir à :</t> %3%4", _fuel, [_cost] call life_fnc_numberText, floor (_level * 100), "%"]; 
};
if(_exit) then { hint "Vous n'avez pas assez d'argent pour faire le plein d'essence !";  };



if(_fuel<1) exitwith {};

if(!local _vehicle) then
{
	[_vehicle,_level] remoteExecCall ["life_fnc_setFuel",_vehicle];
}
else
{
	_vehicle setFuel _level;
};

life_cash = life_cash - _cost;
playSound "caching";
[0] call SOCK_fnc_updatePartial;
