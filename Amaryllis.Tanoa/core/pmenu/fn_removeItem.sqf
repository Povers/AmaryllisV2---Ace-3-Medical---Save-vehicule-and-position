/*
	File: fn_removeItem.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Removes the selected item & amount to remove from the players
	virtual inventory.
*/
private["_data","_value","_obj","_pos","_ind"];
disableSerialization;
_data = lbData[2005,(lbCurSel 2005)];
_value = ctrlText 2010;
if(_data == "") exitWith {hint "Vous n'avez rien selectionné.";};
if(!([_value] call TON_fnc_isnumber)) exitWith {hint "Le nombre que vous avez saisi n'est pas correcte."};
if(parseNumber(_value) <= 0) exitWith {hint "Vous devez rentrer le bon nombre d'objet."};
_ind = [_data,life_illegal_items] call TON_fnc_index;
if(_ind != -1 && ([west,getPos player,100] call life_fnc_nearUnits)) exitWith {titleText["This is an illegal item and cops are near by, you cannot dispose of the evidence","PLAIN"]};
if(player != vehicle player) exitWith {titleText["Vous ne pouvez pas supprimer un objet pendant que vous êtes dans votre véhicule.","PLAIN"]};
if(!([false,_data,(parseNumber _value)] call life_fnc_handleInv)) exitWith {hint "Impossible de supprimer ce montant d''objet de votre inventaire."};
_type = [_data,0] call life_fnc_varHandle;
_type = [_type] call life_fnc_varToStr;
hint format["Vous avez supprimé avec succès %1 %2 de votre inventaire.",(parseNumber _value), _type];
	
[] call life_fnc_p_updateMenu;