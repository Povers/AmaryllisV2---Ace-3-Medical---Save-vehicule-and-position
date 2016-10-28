/*
File: fn_cellphone2.sqf
Author: Timo

Description:
With no radio cant use Cellphone
*/

if (player getVariable['ACE_Captives_isHandcuffed',false]) then {
	hint parseText format ["Vous n'êtes pas en mesure de prendre votre téléphone"];
} else{
if("ama_nokia" in assignedItems player) then {
	createDialog "Life_my_smartphone";// or /** Life_my_smartphone **\ if you use the SQL Based Smartphone By Silex ( http://www.altisliferpg.com/topic/4522-howto-sql-based-smartphone/ )
} else{
	hint parseText format ["Vous n'avez pas de téléphone !"];
};
};