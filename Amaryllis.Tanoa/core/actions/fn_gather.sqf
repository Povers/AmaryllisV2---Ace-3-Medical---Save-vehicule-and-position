/*
	File: fn_gather.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main functionality for gathering.
*/

if(isNil "life_action_gathering") then {life_action_gathering = false;};
private["_gather","_itemWeight","_diff","_itemName","_val","_resourceZones","_axePickResources","_zone"];
_resourceZones = ["coco_take_1","coco_take_2","coco_take_3","coco_take_4","cacao_take","diam_take","fer_take","sei_take","orge_take","banane_take","petrole_take","char_take"];
_waterRessource = ["huitre_take"];
_drogues = ["cocaine_take","cannabis_take","vestige_take"];
_axePickResources = ["bois_take"];
_zone = "";

if(life_action_gathering) exitWith {}; //Action is in use, exit to prevent spamming.
life_action_gathering = true;
//Find out what zone we're near
{
	if(player distance (getMarkerPos _x) < 25) exitWith {_zone = _x;};
} foreach _resourceZones;
{
	if(player distance (getMarkerPos _x) < 25) exitWith {_zone = _x;};
} foreach _axePickResources;
{
	if(player distance (getMarkerPos _x) < 20) exitWith {_zone = _x;};
} foreach _drogues;
{
	if(player distance (getMarkerPos _x) < 25) exitWith {_zone = _x;};
} foreach _waterRessource;

if(_zone == "") exitWith {
	life_action_inUse = false;
};

//Get the resource that will be gathered from the zone name...
switch(true) do {
	case (_zone in ["coco_take_1"]):			 {_gather = "coco"; _val = 2 + (round random 4);};
	case (_zone in ["coco_take_2"]):			 {_gather = "coco"; _val = 2 + (round random 4);};
	case (_zone in ["coco_take_3"]):			 {_gather = "coco"; _val = 2 + (round random 4);};
	case (_zone in ["coco_take_4"]):			 {_gather = "coco"; _val = 2 + (round random 4);};
	case (_zone in ["cacao_take"]):				  {_gather = "cacao"; _val = 2;};
	case (_zone in ["bois_take"]):				  {_gather = "bois"; _val = 2;};
	case (_zone in ["char_take"]):				  {_gather = "charbon"; _val = 2;};
	case (_zone in ["diam_take"]):				  {_gather = "diamant"; _val = 2;};
	case (_zone in ["petrole_take"]):			  {_gather = "petrole"; _val = 2;};
	case (_zone in ["huitre_take"]):			  {_gather = "huitre"; _val = 2;};
	case (_zone in ["fer_take"]):				  {_gather = "fer"; _val = 2;};
	case (_zone in ["orge_take"]):				  {_gather = "orge"; _val = 2;};
	case (_zone in ["sei_take"]):				  {_gather = "seigle"; _val = 2;};
	case (_zone in ["banane_take"]):				  {_gather = "banane"; _val = 1 + (round random 3);};
	case (_zone in ["cocaine_take"]):				  {_gather = "cocaine"; _val = 2;};
	case (_zone in ["cannabis_take"]):				  {_gather = "cannabis"; _val = 2;};
	case (_zone in ["vestige_take"]):				  {_gather = "vestige"; _val = 2;};




	default {""};
};
_itemName = [([_gather,0] call life_fnc_varHandle)] call life_fnc_varToStr;
//gather check??
if(vehicle player != player) exitWith {};

while {life_carryWeight < life_maxWeight} do
{
	if (!(alive player)) exitWith {};
	if (speed player > 1) exitWith { titleText["Récolte annulée. Vous devez rester immobile pendant la récolte.","PLAIN"]; life_action_gathering = false;};
	if (vehicle player != player) exitWith { titleText["Récolte annulée. On sort de son véhicule pour récolter !","PLAIN"]; life_action_gathering = false;};
	_diff = [_gather,_val,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
	if((_gather in ["charbon","fer","diamant","petrole"]) && (life_inv_pickaxe < 1)) exitWith {hint "Vous avez besoin d'une pioche pour effectuer cette action.";life_action_inUse = false;life_action_gathering = false;};
	if((_gather in ["bois"]) && (life_inv_axe < 1)) exitWith {hint "Vous avez besoin d'une hache pour effectuer cette action.";life_action_inUse = false;life_action_gathering = false;};
	if((_gather in ["orge","seigle"]) && (life_inv_faux < 1)) exitWith {hint "Vous avez besoin d'une faux pour effectuer cette action.";life_action_inUse = false;life_action_gathering = false;};

	if(!(_diff > 0)) exitWith {hint localize "STR_NOTF_InvFull"};
	life_action_inUse = true;
	for "_i" from 0 to 2 do
	{
		player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
		waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
		sleep 2.5;
	};

	if(([true,_gather,_diff] call life_fnc_handleInv)) then
	{
		_itemName = [([_gather,0] call life_fnc_varHandle)] call life_fnc_varToStr;
		titleText[format["Vous avez récolté %1 %2",_diff,_itemName],"PLAIN"];
	};
	if (life_carryWeight >= life_maxWeight) exitWith { titleText [format["Récolte terminée. Vous n'avez plus de place pour stocker plus de %1.", _itemName],"PLAIN"]; };
};

	life_action_inUse = false;
