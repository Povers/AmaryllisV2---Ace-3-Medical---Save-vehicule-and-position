/*
	File: fn_beer.sqf
	Author: James  Craig pour amaryllis


*/

closeDialog 0;
sleep 3;
enableCamShake true;
hint "Une bonne biére tiens !";

for "_i" from 0 to 59 do // 60 secondes d'effets
{

PP_film = ppEffectCreate ["FilmGrain",2000];
PP_film ppEffectEnable true;
PP_film ppEffectAdjust [0.86,4.93,4.02,1.71,2,true];
PP_film ppEffectCommit 0;
PP_colorI = ppEffectCreate ["ColorInversion",2500];
PP_colorI ppEffectEnable true;
PP_colorI ppEffectAdjust [0,0.18,0.29];
PP_colorI ppEffectCommit 0;
//[[false,100,[0.05,0.05,0.3,0.3]],[false,200,[0.1,0.1,true]],[false,300,[2,0.4,0.4,2,1,-2,-1,0.1,0.01,0.1,0.01,0.02,0.05,1,1]],[false,1500,[1,1,0,[0,0,0,0],[1,1,1,1],[0,0,0,0],[0,0,0,0,0,0,4]]],[false,500,[10]],[true,2000,[0.86,4.93,4.02,1.71,2,true]],[true,2500,[0,0.18,0.29]]];
addcamShake[random 3, 1, random 3];
    sleep 1;

};

PP_film ppEffectEnable false; // Fin des effets
PP_film ppEffectCommit 1;
PP_colorI ppEffectEnable false;
PP_colorI ppEffectCommit 1;
sleep 6;