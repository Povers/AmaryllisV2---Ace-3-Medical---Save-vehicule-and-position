if(isServer OR !hasInterface) exitwith {};
/*
	File: fn_respawned.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Sets the player up if he/she used the respawn option.
*/
private["_handle"];
//Reset our weight and other stuff
life_use_atm = TRUE;
life_hunger = 100;
life_thirst = 100;
life_carryWeight = 0;
life_cash = 0; //Make sure we don't get our cash back.
life_respawned = false;
player playMove "amovpercmstpsnonwnondnon";

[profileName, "COMA"] remoteExecCall ["life_fnc_deleteMarker",[independent,west]];

if (_unit getVariable ["ACE_captives_isHandcuffed", false]) then {
	[_unit, false] call ACE_captives_setHandcuffed;
};
if (_unit getVariable ["ACE_captives_isSurrendering", false]) then {
	[_unit, false] call ACE_captives_setSurrendered;
};
 if (_unit getVariable ["ACE_captives_isEscorting", false]) then {
	_unit setVariable["ACE_captives_isEscorting",false,true];
};
if (_unit getVariable ["ACE_isUnconscious", false]) then {
	_unit setVariable["ACE_isUnconscious",false,true];
};

//player setVariable ["tf_receivingDistanceMultiplicator", 0.5];
//player setVariable ["tf_sendingDistanceMultiplicator", 0.5];

//Load gear for a 'new life'
switch(playerSide) do
{
	case west: {
		_handle = [] spawn life_fnc_copLoadout;
	};
	case civilian: {
		_handle = [] spawn life_fnc_civLoadout;
	};
	case independent: {
		_handle = [] spawn life_fnc_medicLoadout;
	};
	waitUntil {sleep 0.1; scriptDone _handle};
};

//Bad boy
if(life_is_arrested) exitWith {
	hint localize "STR_Jail_Suicide";
	life_is_arrested = false;
	[player,TRUE] spawn life_fnc_jail;
	spawnmenuon = 0;
};

[] call SOCK_fnc_updateRequest;
[] call life_fnc_hudUpdate; //Request update of hud.