/*
	File: fn_heroin.sqf
	Author: James  Craig pour amaryllis


*/

closeDialog 0;

hint "Mets toi bien Gros...";
sleep 3;

// Liste des effets activés

enableCamShake true;

for "_i" from 0 to 44 do // 45 secondes d'effets
{
	PP_chrom = ppEffectCreate ["ChromAberration",200];
PP_chrom ppEffectEnable true;
PP_chrom ppEffectAdjust [0.1,0.1,true];
PP_chrom ppEffectCommit 0;
PP_wetD = ppEffectCreate ["WetDistortion",300];
PP_wetD ppEffectEnable true;
PP_wetD ppEffectAdjust [9.85,0.2,0.2,4.25,3.12,-5,-5,0.07,0.26,0.1,0.01,0.02,0.05,1,1];
PP_wetD ppEffectCommit 0;
//[[false,100,[0.14,0.13,0.3,0.3]],[true,200,[0.1,0.1,true]],[true,300,[9.85,0.2,0.2,4.25,3.12,-5,-5,0.07,0.26,0.1,0.01,0.02,0.05,1,1]],[false,1500,[1,1,0,[0,0,0,0],[1,1,1,1],[0,0,0,0],[0,0,0,0,0,0,4]]],[false,500,[10]],[false,2000,[0.3,5,5,2,2,true]],[false,2500,[1,1,1]]]

    addcamShake[random 3, 1, random 3];
    sleep 1;
};

PP_chrom ppEffectEnable false;
PP_chrom ppEffectCommit 1;
PP_wetD ppEffectEnable false;
PP_wetD ppEffectCommit 1;
sleep 6;
resetCamShake;


