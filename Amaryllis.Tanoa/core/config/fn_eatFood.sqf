/*
	File: fn_eatFood.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main handling system for eating food.
	*Needs to be revised and made more modular and more indept effects*
*/
private["_food","_val","_sum"];
_food = [_this,0,"",[""]] call BIS_fnc_param;
if(_food == "") exitWith {};

if([false,_food,1] call life_fnc_handleInv) then {
	switch (_food) do
	{
		case "apple": {_val = 10};
		case "chips": {_val = 20};
		case "sandwich_ham": {_val = 60};
		case "sandwich_chicken": {_val = 60};
		case "biscuit": {_val = 20};
		case "bread": {_val = 60};
		case "curly": {_val = 20};
		case "salema": {_val = 30};
		case "ornate": {_val = 25};
		case "mackerel": {_val = 30};
		case "tuna": {_val = 100};
		case "mullet": {_val = 80};
		case "catshark": {_val = 100};
		case "turtle": {_val = 100};
		case "turtlesoup": {_val = 100};
		case "grape": {_val = 10};
		case "choco": {_val = 50};
		case "barreenergie": {_val = 30};
		case "cassecroute": {_val = 100};
		case "rationarmee": {_val = 50};


		
	};

	_sum = life_hunger + _val;
	if(_sum > 100) then {_sum = 100; player setFatigue 1; hint "Vous avez trop mangé, vous vous sentez fatigué..";};
	life_hunger = _sum;
};