/*
	File: fn_methanphetamine.sqf
	Author: James  Craig pour amaryllis


*/

closeDialog 0;

sleep 3;

"chromAberration" ppEffectEnable true; // Liste des effets activés
"wetDistortion" ppEffectEnable true;
"radialBlur" ppEffectEnable true;
enableCamShake true;

for "_i" from 0 to 44 do // 45 secondes d'effets
{
    PP_wetD = ppEffectCreate ["WetDistortion",300];
PP_wetD ppEffectEnable true;
PP_wetD ppEffectAdjust [9.4,1.26,-0.85,4.02,3.57,1.99,-1,0.83,0.14,0.22,0.2,-2,-0.11,-0.35,-0.35];
PP_wetD ppEffectCommit 0;
//[[false,100,[0.11,0.19,0,0]],[false,200,[0.1,0.1,true]],[true,300,[9.4,1.26,-0.85,4.02,3.57,1.99,-1,0.83,0.14,0.22,0.2,-2,-0.11,-0.35,-0.35]],[false,1500,[1,1,0,[0,0,0,0],[1,1,1,1],[0,0,0,0],[0,0,0,0,0,0,4]]],[false,500,[10]],[false,2000,[0.3,5,5,2,2,true]],[false,2500,[1,1,1]]];
PP_colorC = ppEffectCreate ["ColorCorrections",1500];
PP_colorC ppEffectEnable true;
PP_colorC ppEffectAdjust [0.48,1.23,0.2,[2.29,1.61,2.51,0.01],[1.16,2.36,2.74,0.74],[0.51,0,0,0],[0,0,0,0,0,0,4]];
PP_colorC ppEffectCommit 0;

//[[false,100,[0.05,0.05,0.3,0.3]],[false,200,[0.1,0.1,true]],[false,300,[2,0.4,0.4,2,1,-2,-1,0.1,0.01,0.1,0.01,0.02,0.05,1,1]],[true,1500,[0.48,1.23,0.2,[2.29,1.61,2.51,0.01],[1.16,2.36,2.74,0.74],[0.51,0,0,0],[0,0,0,0,0,0,4]]],[false,500,[10]],[false,2000,[0.3,5,5,2,2,true]],[false,2500,[1,1,1]]]
    "chromAberration" ppEffectAdjust [random 0.25,random 0.25,true];
    "chromAberration" ppEffectCommit 1;
    "radialBlur" ppEffectAdjust [random 0.02,random 0.02,0.15,0.15];
    "radialBlur" ppEffectCommit 1;
      player setFatigue 0;
	    player enableFatigue false;
	    player setAnimSpeedCoef 1.3;
    sleep 1;
};

"chromAberration" ppEffectAdjust [0,0,true];
"chromAberration" ppEffectCommit 5;
"wetDistortion" ppEffectAdjust [300];
"wetDistortion" ppEffectCommit 1;
"radialBlur" ppEffectAdjust  [0,0,0,0];
"radialBlur" ppEffectCommit 5;
PP_wetD ppEffectEnable false;
PP_wetD ppEffectCommit 1;
PP_colorC ppEffectEnable false;
PP_colorC ppEffectCommit 1;
 player setFatigue 1;
	    player enableFatigue true;
	    player setAnimSpeedCoef 1;
sleep 6;
"chromAberration" ppEffectEnable false;
"wetDistortion" ppEffectEnable false;
hint "C'était quoi ça ?";
