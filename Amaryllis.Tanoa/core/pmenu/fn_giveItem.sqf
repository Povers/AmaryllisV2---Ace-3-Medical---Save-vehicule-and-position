/*
	File: fn_giveItem.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gives the selected item & amount to the selected player and
	removes the item & amount of it from the players virtual
	inventory.
*/
if((time - life_action_delay) < 0.5) exitWith {hint "Vous ne pouvez pas effectuer cette action aussi vite !"};
life_action_delay = time;
private["_unit","_val"];
_val = ctrlText 2010;
ctrlShow[2002,false];
if((lbCurSel 2023) == -1) exitWith {hint "Personne n'a été sélectionné!";ctrlShow[2002,true];};
_unit = lbData [2023,lbCurSel 2023];
if(_unit == "targetgiveitemmoney") then {
  _unit = cursorTarget;
} else {
  _unit = call compile format["%1",_unit];
};
if(!isPlayer _unit) exitWith {ctrlShow[2002,true];};
if((lbCurSel 2005) == -1) exitWith {hint "Vous n'avez rien sélectionné";ctrlShow[2002,true];};
_item = lbData [2005,(lbCurSel 2005)];
if(isNil "_unit") exitWith {hint "Il n'y a personne face à vous !";ctrlShow[2002,true];};
if(_unit == player) exitWith {hint "Il n'y a personne face à vous !";ctrlShow[2002,true];};
if(isNull _unit) exitWith {hint "Il n'y a personne face à vous !";ctrlShow[2002,true];};
if(player distance _unit > 4) exitWith {hint "Il n'y a personne face à vous !";ctrlShow[2001,true];};
if(life_is_processing) exitWith {hint "Vous êtes en train d'effectuer un traitement ...";ctrlShow[2002,true];};

//A series of checks *ugh*
if(!([_val] call TON_fnc_isnumber)) exitWith {hint "Vous n'avez pas saisi un format accepté.";ctrlShow[2002,true];};
if(parseNumber(_val) <= 0) exitWith {hint "Vous n'avez pas saisi un format accepté.";ctrlShow[2002,true];};
if(isNil "_unit") exitWith {ctrlShow[2001,true]; hint "Le joueur selectionné n'est pas à proximité.";};
if(player distance _unit > 10) exitWith {ctrlShow[2001,true]; hint "Le joueur selectionné n'est pas à proximité.";};
if(!([false,_item,(parseNumber _val)] call life_fnc_handleInv)) exitWith {hint "Vous n'avez pas autant.'";ctrlShow[2002,true];};
[[_unit,_val,_item,player],"life_fnc_receiveItem",_unit,false] spawn life_fnc_MP;
_type = [_item,0] call life_fnc_varHandle;
_type = [_type] call life_fnc_varToStr;
hint format["Vous avez donné %2 %3 à quelqu'un",_unit getVariable["realname",name _unit],_val,_type];
[] call life_fnc_p_updateMenu;

ctrlShow[2002,true];