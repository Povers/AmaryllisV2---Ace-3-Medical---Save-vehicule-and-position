/*
	File: fn_cocaine.sqf
	Author: James  Craig pour amaryllis


*/

closeDialog 0;

sleep 3;

"colorinversion" ppEffectEnable true; // Liste des effets activés
enableCamShake true;

for "_i" from 0 to 44 do // 45 secondes d'effets
{
	PP_wetD = ppEffectCreate ["WetDistortion",300];
PP_wetD ppEffectEnable true;
PP_wetD ppEffectAdjust [3.22,1.86,0.4,2,1,-2,-1,0.1,0.01,0.1,0.01,0.02,0.05,1,1];
PP_wetD ppEffectCommit 0;
//[[false,100,[0.05,0.05,0.3,0.3]],[false,200,[0.1,0.1,true]],[true,300,[3.22,1.86,0.4,2,1,-2,-1,0.1,0.01,0.1,0.01,0.02,0.05,1,1]],[false,1500,[1,1,0,[0,0,0,0],[1,1,1,1],[0,0,0,0],[0,0,0,0,0,0,4]]],[false,500,[10]],[false,2000,[0.3,5,5,2,2,true]],[false,2500,[1,1,1]]]
    "colorinversion" ppEffectAdjust [1,1,1];
    "colorinversion" ppEffectCommit 1;
    addcamShake[random 3, 1, random 3];
      player setFatigue 0;
	    player enableFatigue false;
	    player setAnimSpeedCoef 1.2;
    sleep 1;
};

"colorinversion" ppEffectAdjust [0,0,0]; // Fin des effets
"colorinversion" ppEffectCommit 5;
 player setFatigue 1;
	    player enableFatigue true;
	    player setAnimSpeedCoef 1;
PP_wetD ppEffectEnable false;
PP_wetD ppEffectCommit 1;
sleep 6;
resetCamShake;

