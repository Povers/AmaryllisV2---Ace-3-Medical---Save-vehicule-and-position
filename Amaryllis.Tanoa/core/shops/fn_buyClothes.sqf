/*
	File: fn_buyClothes.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Buys the current set of clothes and closes out of the shop interface.
*/
if((time - life_action_delay) < 0.5) exitWith {hint "Vous ne pouvez pas effectuer cette action aussi vite !"};
life_action_delay = time;
private["_price"];
if((lbCurSel 3101) == -1) exitWith {titleText[localize "STR_Shop_NoClothes","PLAIN"];};

_price = 0;
{
	if(_x != -1) then
	{
		_price = _price + _x;
	};
} foreach life_clothing_purchase;

if(_price > life_cash) exitWith {titleText[localize "STR_Shop_NotEnoughClothes","PLAIN"];};
life_cash = life_cash - _price;
playSound "caching";
life_clothesPurchased = true;
closeDialog 0;