/*
	File: fn_giveMoney.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gives the selected amount of money to the selected player.
*/

if((time - life_action_delay) < 0.5) exitWith {hint "Vous ne pouvez pas effectuer cette action aussi vite !"};
life_action_delay = time;
private["_unit","_amount"];
_amount = ctrlText 2018;
ctrlShow[2001,false];
if((lbCurSel 2022) == -1) exitWith {hint "Personne n'a été sélectionné !";ctrlShow[2001,true];};
_unit = lbData [2022,lbCurSel 2022];

if(_unit == "targetgiveitemmoney") then {
  _unit = cursorTarget;
} else {
  _unit = call compile format["%1",_unit];
};
if(!isPlayer _unit) exitWith {hint "Il n'y a personne face à vous !";ctrlShow[2001,true];};
if(isNil "_unit") exitWith {hint "Il n'y a personne face à vous !";ctrlShow[2001,true];};
if(_unit == player) exitWith {hint "Il n'y a personne face à vous !";ctrlShow[2001,true];};
if(isNull _unit) exitWith {hint "Il n'y a personne face à vous !";ctrlShow[2001,true];};
if(player distance _unit > 4) exitWith {hint "Il n'y a personne face à vous !";ctrlShow[2001,true];};

//A series of checks *ugh*
if(!life_use_atm) exitWith {hint "Vous avez récemment volé la banque! Vous ne pouvez pas donner de l'argent tout de suite.";ctrlShow[2001,true];};
if(!([_amount] call TON_fnc_isnumber)) exitWith {hint "Vous n'avez pas saisi un format accepté.";ctrlShow[2001,true];};
if(parseNumber(_amount) <= 0) exitWith {hint "Vous n'avez pas saisi un format accepté.";ctrlShow[2001,true];};
if(parseNumber(_amount) > life_cash) exitWith {hint "Vous n'avez pas autant !";ctrlShow[2001,true];};
if(isNull _unit) exitWith {ctrlShow[2001,true];};
if(isNil "_unit") exitWith {ctrlShow[2001,true]; hint "Le joueur selectionné n'est pas à proximité.";};
if(player distance _unit > 10) exitWith {ctrlShow[2001,true]; hint "Le joueur selectionné n'est pas à proximité.";};
hint format["Vous avez donné %1 € à quelqu'un",[(parseNumber(_amount))] call life_fnc_numberText,_unit getVariable["realname",name _unit]];



//log donner argent
/*
[["Liquide",player getVariable["realname",name player],getPlayerUID player,_unit getVariable["realname",name _unit],getPlayerUID _unit,_amount],"TON_fnc_logMoney",false,false] spawn life_fnc_MP;
*/


life_cash = life_cash - (parseNumber(_amount));
[0] call SOCK_fnc_updatePartial;
[[_unit,_amount,player],"life_fnc_receiveMoney",_unit,false] spawn life_fnc_MP;
[] call life_fnc_p_updateMenu;

ctrlShow[2001,true];