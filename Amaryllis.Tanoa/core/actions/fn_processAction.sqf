/*
	File: fn_processAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master handling for processing an item.
*/

if((time - life_action_delay) < 0.5) exitWith {hint "Vous ne pouvez pas effectuer cette action aussi vite !"};
life_action_delay = time;
private["_vendor","_type","_double","_itemInfo","_oldItem","_oldItem2","_newItem","_cost","_upp","_hasLicense","_itemName","_oldVal","_oldVal2","_ui","_progress","_pgText","_cP"];
_vendor = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_type = [_this,3,"",[""]] call BIS_fnc_param;
//Error check
if(isNull _vendor OR _type == "" OR (player distance _vendor > 4)) exitWith {};

//unprocessed item,processed item, cost if no license,Text to display (I.e Processing  (percent) ..."
_itemInfo = switch (_type) do
{

	case "seigle": {["seigle","seiglep",5000000000,"Mouture du Seigle",false];};
	case "orge": {["orge","orgep",50000000000,"Mouture de l'Orge",false];};
	case "bois": {["bois","boisp",50000000000,"Sciage du Bois",false];};
	case "banane": {["banane","bananep",500000000000,"Pressage de la Banane",false];};
	case "cacao": {["cacao","cacaop",50000000000,"Broyage du Cacao ",false];};
	case "charbon": {["charbon","charbonp",500000000000,"Concassage du Charbon",false];};
	case "fer": {["fer","ferp",500000000000,"Fonte du Fer",false];};
	case "diamant": {["diamant","diamantp",500000000000,"Taillage du Diamant",false];};
	case "huitre": {["huitre","huitrep",50000000000000,"Nettoyage d'Huître",false];};
	case "petrole": {["petrole","petrolep",500000000000,"Raffinage du Pétrole",false];};
	case "gazole": {["petrolep","gazole",500000000000,"Transformation du Pétrole",false];};
	case "cannabis": {["cannabis","cannabisp",500000000000,"Séchage du Cannabis",false];};
	case "cocaine": {["cocaine","cocainep",500000000000,"Mélange des produits",false];};
	case "vestige": {["vestige","vestigep",500000000000,"Nettoyage des Vestiges",false];};
	case "monte": {["cacaop","cacaopp",500000000000,"Fonte du Cacao",false];};
	case "yunque": {["ferp","ferpp",500000000000,"Transformation du Fer",false];};
	case "sosovu": {["huitrep","huitrepp",500000000000,"Récuperation des perles",false];};
	
	default {[];};
};

//Error checking
if(count _itemInfo == 0) exitWith {};

//Setup vars.
_oldItem = _itemInfo select 0;
_newItem = _itemInfo select 1;
_cost = _itemInfo select 2;
_upp = _itemInfo select 3;
_double = _itemInfo select 4;

//Double Processing
if(_double) then { 
_oldItem2 = _itemInfo select 5;
_oldVal2 = missionNamespace getVariable ([_oldItem2,0] call life_fnc_varHandle);
_oldItemName2 = [([_oldItem2,0] call life_fnc_varHandle)] call life_fnc_varToStr;
};

_itemName = [([_newItem,0] call life_fnc_varHandle)] call life_fnc_varToStr;
_oldVal = missionNamespace getVariable ([_oldItem,0] call life_fnc_varHandle);

//Double Processing
if(_double) then { 
	if(_oldVal !=_oldVal2) then {
		if(_oldVal > _oldVal2) then {_oldVal = _oldVal2;};
		if(_oldVal2 > _oldVal) then {_oldVal2 = _oldVal;};
	};   
};
_cost = _cost * _oldVal;
//Some more checks
if(_oldVal == 0) exitWith {};

//Setup our progress bar.
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
_progress progressSetPosition 0.01;
_cP = 0.01;

while{true} do
{
	sleep  0.3;
	_cP = _cP + 0.01;
	_progress progressSetPosition _cP;
	_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
	if(_cP >= 1) exitWith {};
	if(player distance _vendor > 10) exitWith {};
	if(vehicle player != player) exitWith {};
};

if(player distance _vendor > 10) exitWith {hint localize "STR_Process_Stay"; 5 cutText ["","PLAIN"]; life_is_processing = false;};
if(vehicle player != player) exitWith {titleText["Traitement annulée. On sort de son véhicule pour traiter !","PLAIN"]; 5 cutText ["","PLAIN"]; life_is_processing = false;};

if(!([false,_oldItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; life_is_processing = false;};
if(!([true,_newItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; [true,_oldItem,_oldVal] call life_fnc_handleInv; life_is_processing = false;};
5 cutText ["","PLAIN"];
titleText[format["Vous avez traité %1 %2",_oldVal,_itemName],"PLAIN"];

//Double Processing
if(_double) then 
{
	([false,_oldItem2,_oldVal2] call life_fnc_handleInv);
	titleText[format["Vous avez traité vos %1",_itemName],"PLAIN"];
}else{
	titleText[format["Vous avez traité %1 %2",_oldVal,_itemName],"PLAIN"];
};
life_is_processing = false;