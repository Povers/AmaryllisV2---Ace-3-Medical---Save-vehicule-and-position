//Def variable
private["_hunger"];
disableSerialization;
if(life_action_inUse) exitWith {};
life_interrupted = false;
	_hunger = life_hunger;
	life_action_inUse = true;
    
	       // Si joueur sans arme
           if (currentWeapon player == "") then {
              player playMoveNow "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
		      sleep 0.2;
		      //playSound 
		      while{true} do
        		{ 
        			sleep 0.27;
        			if(_hunger >= 100) exitWith {};
        			_hunger = _hunger + 10;
        			life_hunger = _hunger;
        			[] call life_fnc_hudUpdate;
        			if(_hunger >= 100) exitWith {};
        			if(!alive player) exitWith {};
        			if(player != vehicle player) exitWith {};
        			if(life_interrupted) exitWith {};
        		};
		
           		life_action_inUse = false;
        		life_hunger = _hunger;
        		player setFatigue 0;
        		if(life_interrupted) exitWith {life_interrupted = false; titleText[localize "STR_NOTF_ActionCancel","PLAIN"]; life_action_inUse = false;};
        		player playMoveNow "AmovPercMstpSnonWnonDnon";
          }

    else{
	
		// Si joueur armé
		life_curWep_h = currentWeapon player;
		player action ["SwitchWeapon", player, player, 100];
		player switchcamera cameraView;
		sleep 0.2;
        player playMoveNow "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
		sleep 0.2;
		// playSound
		while{true} do
		{
			sleep 0.27;
			if(_hunger >= 100) exitWith {};
			_hunger = _hunger + 10;
			life_hunger = _hunger;
			[] call life_fnc_hudUpdate;
			if(_hunger >= 100) exitWith {};
			if(!alive player) exitWith {};
			if(player != vehicle player) exitWith {};
			if(life_interrupted) exitWith {};
		};

		life_action_inUse = false;
		life_hunger = _hunger;
		player setFatigue 0;
		if(life_interrupted) exitWith {life_interrupted = false; titleText[localize "STR_NOTF_ActionCancel","PLAIN"]; life_action_inUse = false;};
		player selectWeapon life_curWep_h;
		player playMoveNow "AmovPercMstpSnonWnonDnon";
	};
