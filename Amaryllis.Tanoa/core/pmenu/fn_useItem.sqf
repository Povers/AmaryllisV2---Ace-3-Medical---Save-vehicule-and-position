/*
	File: fn_useItem.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main function for item effects and functionality through the player menu.
*/
if((time - life_action_delay) < 0.5) exitWith {hint "Vous ne pouvez pas effectuer cette action aussi vite !"};
life_action_delay = time;
private["_item"];
disableSerialization;
if((lbCurSel 2005) == -1) exitWith {hint localize "STR_ISTR_SelectItemFirst";};
_item = lbData[2005,(lbCurSel 2005)];

switch (true) do
{
	case (_item == "water" or _item == "coffee" or _item == "waterarmee" or _item == "watersmt" or _item == "apple_juice" or _item == "soda" or _item == "limonade" or _item =="desperados" or _item == "barbar"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
            playSound "drink";
			life_thirst = 100;
			player setFatigue 0;
		};
	};

	case (_item == "boltcutter"): {
		[cursorTarget] spawn life_fnc_boltcutter;
		closeDialog 0;
	};
	
	case (_item == "blastingcharge"): {
		player reveal fed_bank;
		(group player) reveal fed_bank;
		[cursorTarget] spawn life_fnc_blastingCharge;
	};
	
	case (_item == "defusekit"): {
		[cursorTarget] spawn life_fnc_defuseKit;
	};
	
	case (_item in ["storagesmall","storagebig"]): {
		[_item] call life_fnc_storageBox;
	};
	
	case (_item == "redgull" or _item == "redgullarmee" or _item == "boissonenergie"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_thirst = 100;
			player setFatigue 0;
			[] spawn
			{
                playSound "drink";
				life_redgull_effect = time;
				titleText[localize "STR_ISTR_RedGullEffect","PLAIN"];
				player enableFatigue false;
				waitUntil {!alive player OR ((time - life_redgull_effect) > (3 * 60))};
				player enableFatigue true;
			};
		};
	};
	
	case (_item == "spikeStrip"):
	{
		if(!isNull life_spikestrip) exitWith {hint localize "STR_ISTR_SpikesDeployment"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_spikeStrip;
		};
	};
	
	case (_item == "fuelF"):
	{
		if(vehicle player != player) exitWith {hint localize "STR_ISTR_RefuelInVehicle"};
		[] spawn life_fnc_jerryRefuel;
	};
	
	case (_item == "lockpick"):
	{
		[] spawn life_fnc_lockpick;
	};

	case ( _item == "lockpickarmee"):
	{
		[] spawn life_fnc_lockpickb;
	};
	
	case (_item in ["chips","sandwich_ham","sandwich_chicken","curly","biscuit","bread","apple","rabbit","salema","ornate","mackerel","tuna","mullet","catshark","turtle","turtlesoup","donuts","tbacon","peach","grape","rationarmee","choco","barreenergie","cassecroute"]):
	{
		[_item] call life_fnc_eatFood;
        playSound "eat";
	};

	case (_item == "pickaxe"):
	{
		[] spawn life_fnc_pickAxeUse;
	};
	
	case (_item == "axe"):
	{
		[] spawn life_fnc_AxeUse;
	};

	case (_item == "faux"):
	{
		[] spawn life_fnc_FauxUse;
	};
	
	case (_item == "cannabisp"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[_item] spawn life_fnc_marijuana;
		};
	};

	case (_item == "cocainep"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_cocaine;
		};
	};

	case (_item == "beer"):
    {
      if(([false,_item,1] call life_fnc_handleInv)) then
			{
        [] spawn life_fnc_beer;
      };
    };
    case (_item == "wine"):
    {
      if(([false,_item,1] call life_fnc_handleInv)) then
      {
        [] spawn life_fnc_wine;
      };
    };
	default
	{
		hint localize "STR_ISTR_NotUsable";
	};
};
	
[] call life_fnc_p_updateMenu;
[] call life_fnc_hudUpdate;