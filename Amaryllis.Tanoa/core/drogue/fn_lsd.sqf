/*
	File: fn_lsd.sqf
	Author: James  Craig pour amaryllis


*/

closeDialog 0;

hint "Oh sheet ! ";
sleep 3;

"dynamicBlur" ppEffectEnable true; // Liste des effets activés
"radialBlur" ppEffectEnable true;
enableCamShake true;

for "_i" from 0 to 44 do // 45 secondes d'effets
{
	PP_wetD = ppEffectCreate ["WetDistortion",300];
PP_wetD ppEffectEnable true;
PP_wetD ppEffectAdjust [2,0.4,0.4,2,1,-2,-1,0.1,0.01,0.1,0.01,0.02,0.05,1,1];
PP_wetD ppEffectCommit 0;
//[[false,100,[0.05,0.05,0.3,0.3]],[false,200,[0.1,0.1,true]],[true,300,[2,0.4,0.4,2,1,-2,-1,0.1,0.01,0.1,0.01,0.02,0.05,1,1]],[false,1500,[1,1,0,[0,0,0,0],[1,1,1,1],[0,0,0,0],[0,0,0,0,0,0,4]]],[false,500,[30]],[false,2000,[0.3,5,5,2,2,true]],[false,2500,[1,1,1]]]
    "dynamicBlur" ppEffectAdjust [600];
    "dynamicBlur" ppEffectCommit 1;
    "radialBlur" ppEffectAdjust  [random 0.02,random 0.02,0.15,0.15];
    "radialBlur" ppEffectCommit 1;
    addcamShake[random 3, 1, random 3];
    player setFatigue 0;
	    player enableFatigue false;
	    player setAnimSpeedCoef 1.3;
    sleep 1;
};

"dynamicBlur" ppEffectAdjust [400]; // Fin des effets
"dynamicBlur" ppEffectCommit 1;
"radialBlur" ppEffectAdjust  [0,0,0,0];
"radialBlur" ppEffectCommit 5;
sleep 6;

"dynamicBlur" ppEffectEnable false;
"radialBlur" ppEffectEnable false;
PP_wetD ppEffectEnable false;
PP_wetD ppEffectCommit 1;
 player setFatigue 1;
	    player enableFatigue true;
	    player setAnimSpeedCoef 1;
resetCamShake;
