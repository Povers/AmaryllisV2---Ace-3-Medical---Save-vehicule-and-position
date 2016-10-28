//Def variable
private["_thirst"];
disableSerialization;
if(life_action_inUse) exitWith {};
life_interrupted = false;
	_thirst = life_thirst;
	life_action_inUse = true;
    
	       // Si joueur sans arme
           if (currentWeapon player == "") then {
		      player playMoveNow "AmovPknlMstpSnonWnonDnon";
		      sleep 0.2;
		      //playSound "drink";
		      while{true} do
        		{ 
        			sleep 0.27;
        			if(_thirst >= 100) exitWith {};
        			_thirst = _thirst + 1;
        			life_thirst = _thirst;
        			[] call life_fnc_hudUpdate;
        			if(_thirst >= 100) exitWith {};
        			if(life_interrupted) exitWith {};
                    if(!alive player) exitWith {};
        			if(player != vehicle player) exitWith {};
        			
        		};
		
           		life_action_inUse = false;
        		life_thirst = _thirst;
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
		player playMoveNow "AmovPknlMstpSnonWnonDnon";
		sleep 0.2;
		// playSound "drink";
		while{true} do
		{
			sleep 0.27;
			if(_thirst >= 100) exitWith {};
			_thirst = _thirst + 1;
			life_thirst = _thirst;
			[] call life_fnc_hudUpdate;
			if(_thirst >= 100) exitWith {};
			if(life_interrupted) exitWith {};
            if(!alive player) exitWith {};
			if(player != vehicle player) exitWith {};
			
		};

		life_action_inUse = false;
		life_thirst = _thirst;
		player setFatigue 0;
		if(life_interrupted) exitWith {life_interrupted = false; titleText[localize "STR_NOTF_ActionCancel","PLAIN"]; life_action_inUse = false;};
		player selectWeapon life_curWep_h;
		player playMoveNow "AmovPercMstpSnonWnonDnon";
	};
