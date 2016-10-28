/*
	File: fn_amphetamine.sqf
	Author: James  Craig pour amaryllis


*/

closeDialog 0;

hint "Tu va être poser frére !";
sleep 3;


enableCamShake true;

for "_i" from 0 to 44 do // 45 secondes d'effets
{
    PP_radial = ppEffectCreate ["radialBlur",100];
PP_radial ppEffectEnable true;
PP_radial ppEffectAdjust [0.17,0.17,0.44,0.46];
PP_radial ppEffectCommit 0;
PP_wetD = ppEffectCreate ["WetDistortion",300];
PP_wetD ppEffectEnable true;
PP_wetD ppEffectAdjust [2.77,0.4,0.4,2,1,-2,-1,0.1,0.01,0.1,0.01,0.02,0.05,1,1];
PP_wetD ppEffectCommit 0;
PP_colorC = ppEffectCreate ["ColorCorrections",1500];
PP_colorC ppEffectEnable true;
PP_colorC ppEffectAdjust [1.31,1.53,-0.94,[0.25,0.33,0.55,-0.37],[-1.78,0.93,-1.63,1],[6.08,8.19,5.63,-0.34],[0.76,0.45,0.65,0.53,0.41,0,5]];
PP_colorC ppEffectCommit 0;
PP_film = ppEffectCreate ["FilmGrain",2000];
PP_film ppEffectEnable true;
PP_film ppEffectAdjust [0.98,4.32,4.68,1.97,2,true];
PP_film ppEffectCommit 0;
PP_colorI = ppEffectCreate ["ColorInversion",2500];
PP_colorI ppEffectEnable true;
PP_colorI ppEffectAdjust [0.6,0.61,0.59];
PP_colorI ppEffectCommit 0;

//[[true,100,[0.17,0.17,0.44,0.46]],[false,200,[0.1,0.1,true]],[true,300,[2.77,0.4,0.4,2,1,-2,-1,0.1,0.01,0.1,0.01,0.02,0.05,1,1]],[true,1500,[1.31,1.53,-0.94,[0.25,0.33,0.55,-0.37],[-1.78,0.93,-1.63,1],[6.08,8.19,5.63,-0.34],[0.76,0.45,0.65,0.53,0.41,0,5]]],[false,500,[30]],[true,2000,[0.98,4.32,4.68,1.97,2,true]],[true,2500,[0.6,0.61,0.59]]];
    addcamShake[random 3, 1, random 3];
    sleep 1;
};

PP_radial ppEffectEnable false;
PP_radial ppEffectCommit 1;
PP_wetD ppEffectEnable false;
PP_wetD ppEffectCommit 1;
PP_colorC ppEffectEnable false;
PP_colorC ppEffectCommit 1;
PP_film ppEffectEnable false;
PP_film ppEffectCommit 1;
PP_colorI ppEffectEnable false;
PP_colorI ppEffectCommit 1;
sleep 6;

