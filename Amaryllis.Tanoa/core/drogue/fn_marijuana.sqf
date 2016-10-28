/*
	File: fn_marijuana.sqf
	Author: Povers


*/

closeDialog 0;

sleep 3;

"chromAberration" ppEffectEnable true; // Liste des effets activés
"radialBlur" ppEffectEnable true;
"colorCorrections" ppEffectEnable true;
enableCamShake true;

for "_i" from 0 to 35 do // 35 secondes d'effets
{
    	"colorCorrections" ppEffectEnable true;
		"colorCorrections" ppEffectAdjust [1, 1.5, 0.5, [0,0,0,0], [0.2,0.2,0.2,0.5], [0,0,0,0]];
		"colorCorrections" ppEffectCommit 1;
		"chromAberration" ppEffectAdjust [random 0.25,random 0.25,true];
        "chromAberration" ppEffectCommit 1;
        player setFatigue 1;
	    player enableFatigue true;
	    player setAnimSpeedCoef 0.5;
	    sleep 1;


};

"colorCorrections" ppEffectAdjust [0, 0.0, 0.0, [0,0,0,0], [0.0,0.0,0.0,0.0], [0,0,0,0]];
"colorCorrections" ppEffectCommit 5;
"chromAberration" ppEffectAdjust [0,0,true];
"chromAberration" ppEffectCommit 5;
"radialBlur" ppEffectAdjust  [0,0,0,0];
"radialBlur" ppEffectCommit 5;
  player setFatigue 1;
	    player enableFatigue true;
	    player setAnimSpeedCoef 1;
sleep 6;


"chromAberration" ppEffectEnable false;
"colorCorrections" ppEffectEnable false;
"radialBlur" ppEffectEnable false;
resetCamShake;

