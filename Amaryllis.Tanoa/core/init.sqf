#include <macro.h>
/*
	Master client initialization file
*/
life_firstSpawn = true;
life_session_completed = false;
private["_handle","_timeStamp"];
0 cutText["Initialisation en cours, merci de patienter...","BLACK FADED"];
0 cutFadeOut 9999999;
_timeStamp = diag_tickTime;
diag_log "------------------------------------------------------------------------------------------------------";
diag_log "--------------------------------- Initialisation Client Altis Life ----------------------------------";
diag_log "------------------------------------------------------------------------------------------------------";
waitUntil {!isNull player && player == player}; //Wait till the player is ready
[] call compile PreprocessFileLineNumbers "core\clientValidator.sqf";
//Setup initial client core functions
diag_log "::Life Client:: Initialisation Variables";
[] call compile PreprocessFileLineNumbers "core\configuration.sqf";
diag_log "::Life Client:: Variables initialisé";
diag_log "::Life Client:: Setting up Eventhandlers";
[] call life_fnc_setupEVH;
diag_log "::Life Client:: Eventhandlers completed";
diag_log "::Life Client:: Setting up user actions";
[] call life_fnc_setupActions;
diag_log "::Life Client:: User actions completed";
diag_log "::Life Client:: Waiting for server functions to transfer..";
waitUntil {(!isNil {TON_fnc_clientGangLeader})};
diag_log "::Life Client:: Received server functions.";
0 cutText ["En attente du serveur...","BLACK FADED"];
0 cutFadeOut 99999999;
diag_log "::Life Client:: Waiting for the server to be ready..";
waitUntil{!isNil "life_server_isReady"};
waitUntil{(life_server_isReady OR !isNil "life_server_extDB_notLoaded")};
if(!isNil "life_server_extDB_notLoaded") exitWith {
	diag_log "::Life Client:: Server did not load extDB";
	999999 cutText ["extDB non chargé","BLACK FADED"];
	999999 cutFadeOut 99999999;
};
[] call SOCK_fnc_dataQuery;
waitUntil {life_session_completed};
0 cutText["Finalisation de l'initialisation","BLACK FADED"];
0 cutFadeOut 9999999;

//diag_log "::Life Client:: Group Base Execution";
[] spawn life_fnc_escInterupt;

switch (playerSide) do
{
	case west:
	{
         // Init Bluefor   
		_handle = [] spawn life_fnc_initCop;
		waitUntil {scriptDone _handle};
	};
	
	case civilian:
	{
		//Initialize Civilian Settings
		_handle = [] spawn life_fnc_initCiv;
		waitUntil {scriptDone _handle};
	};
	
	case independent:
	{
		//Initialize Medics and blah
		_handle = [] spawn life_fnc_initMedic;
		waitUntil {scriptDone _handle};
	};
    
    case sideLogic:

    {
        //Init Zeus
        _handle = [] spawn life_fnc_initZeus;

        waitUntil {scriptDone _handle};

    };
};

if(__GETC__(life_adminlevel) < 1) then {
[] spawn {
		while {true} do 
		{
			_serverts = [] call TFAR_fnc_getTeamSpeakServerName;										
			_channelts = [] call TFAR_fnc_getTeamSpeakChannelName;

			if (_serverts != "Amaryllis RP") then
			{
				hint "Vous devez être sur l'onglet de notre teamspeak pour pouvoir jouer, vous avez 10 secondes pour régulariser votre situation ...";
				sleep 10;
				_serverts = [] call TFAR_fnc_getTeamSpeakServerName;		
				if (_serverts != "Amaryllis RP") then
				{
					[] call SOCK_fnc_updateRequest;
                    sleep 2;
                    [[player], "TON_fnc_cleanupRequest", false] spawn life_fnc_MP;
					["ServerTs", false, true] call BIS_fnc_endMission;
				};
			};
		sleep 10;
		};
	};
};

player setVariable["restrained",false,true];
player setVariable["Escorting",false,true];
player setVariable["transporting",false,true];
diag_log "Past Settings Init";
[] execFSM "core\fsm\client.fsm";
diag_log "Executing client.fsm";
waitUntil {!(isNull (findDisplay 46))};
diag_log "Display 46 Found";
(findDisplay 46) displayAddEventHandler ["KeyDown", "_this call life_fnc_keyHandler"];
player addRating 99999999;

diag_log "::Life Client:: Gestion station essences";
_pumps = [];
_pumpClass = "Land_FuelStation_01_pump_F";
_pumpClassbis = "Land_FuelStation_02_pump_F";

_pumps = [[1865.37,12128,-0.236609],[1864.93,12122,-0.331924],[1873.69,12121.5,-0.248567],[1874.1,12127.6,-0.203133],[5403.54,9905.04,0.00549698],[5409.42,9905.04,0.00515461],[5403.81,9913.74,0.00502348],[5409.69,9913.75,0.00508261],[5681.72,10164.6,-0.0340471],[5683.21,10182,-0.0282073],[5685.9,10173,-0.0219851],[5677.78,10173.8,-0.0185199],[5771.14,4229.01,-0.235736],[5781.14,4224.93,-0.229755],[5775.74,4221.55,-0.232986],[5771.25,4239.42,-0.205085],[5776.41,4232.31,-0.232585],[5767.14,4236.94,-0.182347],[5810.71,10825.1,0.0521221],[5801.99,10825,0.039825],[5793.18,10825.1,0.0337515],[5801.93,10816.8,0.0450912],[5810.65,10816.9,0.0893035],[5793.12,10817,0.0373325],[6592,13079.6,-0.231892],[6583.86,13082.9,-0.230913],[6594.32,13085.3,-0.230906],[6586.18,13088.6,-0.230906],[6600.12,13076.3,-0.249989],[6602.45,13082,-0.230906],[6886.99,7490.55,0],[7136.54,7407.68,7.62939e-006],[7366.7,7995.42,-0.212462],[7358.5,7998.4,-0.190624],[7360.96,8005.08,-0.171917],[7369.15,8002.09,-0.129763],[9953.85,13467,-0.23254],[9954.45,13475.7,-0.23254],[9954.69,13484.5,-0.23254],[9960.31,13466.6,-0.23254],[9961.15,13484.2,-0.23254],[9960.92,13475.4,-0.23254],[11635.3,13047.4,-0.229898],[11627,13050.4,-0.237558],[11620.6,13058.4,-0.237006],[11629,13055.8,-0.232919],[11618.7,13053,-0.255869],[11637.2,13052.8,-0.228891],[11694.3,2271.39,-0.203085],[11686.6,2267.25,-0.208622],[11697.6,2265.13,-0.199961],[11689.9,2260.98,-0.205484],[12613.3,7582.82,-0.264584],[12618.1,7580.01,-0.330997],[12622.3,7587.7,-0.245724],[12617.5,7590.52,-0.225117]];

_pumpsbis = [[2132.29,3360.43,-0.0607367],[2137.26,3360.77,-0.0583258],[2451.51,7434.7,-0.0931244],[2462.99,7430.69,-0.0870638],[3029.45,11316.1,-0.0828028],[5173.94,8806.35,-0.0822775],[5379.5,4092.98,-0.0942526],[5388.58,4090.7,-0.0951052],[5594.15,12508.2,-0.0947819],[7143.13,7400.86,-2.28882e-005],[7976.92,7427.11,-0.058516],[7978.23,7419.24,-0.100807],[8318.9,9708.81,-0.0886936],[8320.71,9712.02,-0.0936089],[8493.01,12437.9,-0.106827],[8492.14,12441.6,-0.0828552],[8494.36,12431.9,-0.110229],[8952.38,13678,-0.0624466],[8956.19,13677.8,-0.0624466],[8954.36,13678,-0.0624466],[8970.37,10332.2,-0.0989342],[10826.8,6489.7,-0.082561],[10940.8,9855.39,-0.122383],[10935.1,9856.06,-0.129646],[11146.1,5152,-0.0805874],[11154,5152.43,-0.0809298],[11631,2998.85,-0.0782437],[11642,2990.83,-0.0782394],[14260.9,11513,-0.114521],[14264.8,11508.9,-0.108963],[14364.7,8743.01,-0.0650101]];
{
	_pump = (nearestObject [_x, _pumpClass]);
	_pump setFuelCargo 0;
	_pump addAction ["Faire le plein", life_fnc_vehicleRefuel, 1, 3, true, true, "", ' _this distance _target < 5 && cursorObject == _target '];
} forEach _pumps;
{
	_pump = (nearestObject [_x, _pumpClassbis]);
	_pump setFuelCargo 0;
	_pump addAction ["Faire le plein", life_fnc_vehicleRefuel, 1, 3, true, true, "", ' _this distance _target < 5 && cursorObject == _target '];
} forEach _pumpsbis;

diag_log "------------------------------------------------------------------------------------------------------";
diag_log format["                Fin init Altis Life Client :: Executé en %1 secondes ",(diag_tickTime) - _timeStamp];
diag_log "------------------------------------------------------------------------------------------------------";
player setVariable ["tf_voiceVolume", 1, true];
player setVariable ["tf_globalVolume", 1];
player setVariable ["tf_unable_to_use_radio", false];
life_sidechat = true;
[[player,life_sidechat,playerSide],"TON_fnc_managesc",false,false] spawn life_fnc_MP;
0 cutText ["","BLACK IN"];
[] call life_fnc_hudSetup;
LIFE_ID_PlayerTags = ["LIFE_PlayerTags","onEachFrame","life_fnc_playerTags"] call BIS_fnc_addStackedEventHandler;
LIFE_ID_RevealObjects = ["LIFE_RevealObjects","onEachFrame","life_fnc_revealObjects"] call BIS_fnc_addStackedEventHandler;
[] call life_fnc_settingsInit;
player setVariable["steam64ID",getPlayerUID player];
player setVariable["realname",profileName,true];
life_fnc_moveIn = compileFinal
"
	player moveInCargo (_this select 0);
";

life_fnc_garageRefund = compileFinal
"
	_price = _this select 0;
	_unit = _this select 1;
	if(_unit != player) exitWith {};
	life_atmcash = life_atmcash + _price;
";

[] execVM "core\init_survival.sqf";

__CONST__(life_paycheck,life_paycheck); //Make the paycheck static.
player enableFatigue (__GETC__(life_enableFatigue));

[] spawn {
	while {true} do
	{
		// Appel de la fonction de sauvegarde automatique
		[] call SOCK_fnc_syncData;
		
		//3 minutes
		sleep 200;
	};
		};
DYNAMICMARKET_boughtItems = [];
[[getPlayerUID player],"TON_fnc_playerLogged",false,false] spawn life_fnc_MP;
		

[] spawn
{
	private["_isUnconscious"];
	while {true} do {
		
		waitUntil {sleep 0.1; player getvariable ["ACE_isUnconscious", false] };
		sleep 1;
		createDialog "DeathScreen";
		playSound "death";

		(findDisplay 7300) displaySetEventHandler ["KeyDown","if((_this select 1) == 1) then {true}"]; //Block the ESC menu
			
		player spawn
		{
			private["_maxTime","_RespawnBtn","_Timer"];
			disableSerialization;
			_RespawnBtn = ((findDisplay 7300) displayCtrl 7302);
			_Timer = ((findDisplay 7300) displayCtrl 7301);
				maxTimeRespawn = time + (life_respawn_timer * 60);
				_RespawnBtn ctrlEnable false;
				waitUntil {_Timer ctrlSetText format[localize "STR_Medic_Respawn",[(maxTimeRespawn - time),"MM:SS.MS"] call BIS_fnc_secondsToString];
				round(maxTimeRespawn - time) <= 0 OR isNull _this};
				_RespawnBtn ctrlEnable true;
				_Timer ctrlSetText localize "STR_Medic_Respawn_2";
				maxTimeRespawn = 0;
			
		};

		[player] spawn life_fnc_deathScreen;
		
		// not unconscious
		waitUntil { !(player getvariable ["ACE_isUnconscious", false]) };
		
		closeDialog 0;
		[profileName, "COMA"] remoteExecCall ["life_fnc_deleteMarker",[independent,west]];

	};
};

		
		