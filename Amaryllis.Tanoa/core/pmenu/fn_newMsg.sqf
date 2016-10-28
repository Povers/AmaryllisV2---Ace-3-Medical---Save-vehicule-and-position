#include <macro.h>
/*
	
	file: fn_newMsg.sqf
	Author: Silex
	
*/

private["_to","_type","_playerData","_msg"];
disableSerialization;

_type = [_this,0,-1] call BIS_fnc_param;
_playerData = [_this,1,-1] call BIS_fnc_param;
_msg = [_this,2,"",[""]] call BIS_fnc_param;

_display = findDisplay 88888;
_cPlayerList = _display displayCtrl 88881;
_cMessageEdit = _display displayCtrl 88884;

switch(_type) do
{
	case 0:
	{
		life_smartphoneTarget = call compile format["%1",_playerData];
		ctrlSetText[88886, format["Message à: %1",name life_smartphoneTarget]];
		if((__GETC__(life_adminlevel) < 1)) then
		{
			ctrlShow[888897,false];
		};
	};
	
	//normal message
	case 1:
	{
		if(isNUll life_smartphoneTarget) exitWith {hint format["Alors, ça envoie des messages dans le vide ?"];};
		ctrlShow[88885, false];
		if(_msg == "") exitWith {hint "Alors ça envoie des messages vides?";ctrlShow[88885, true];};
		[[life_smartphoneTarget,_msg,player,0],"TON_fnc_handleMessages",false] spawn life_fnc_MP;
		hint format["Vous avez envoyé un message à %1: %2",name life_smartphoneTarget,_msg];	
		ctrlShow[88885, true];
		closeDialog 88883;
	};
	
	//copmessage
	case 2:
	{
		if(({side _x == west} count playableUnits) == 0) exitWith {hint format["L'armée fait la sieste."];};
		ctrlShow[888895,false];
		if(_msg == "") exitWith {hint "Alors ça envoie des messages vides?";ctrlShow[888895,true];};
		[[ObjNull,_msg,player,1],"TON_fnc_handleMessages",false] spawn life_fnc_MP;
		_to = "Armée";
		hint format["Vous avez envoyé un message à l'armée: %2",_to,_msg];
		ctrlShow[888895,true];
		closeDialog 887890;
	};
	
	//msgadmin
	case 3:
	{
		ctrlShow[888896,false];
		if(_msg == "") exitWith {hint "Alors, ça envoie des messages vides ?";ctrlShow[888896,true];};
		[[ObjNull,_msg,player,2],"TON_fnc_handleMessages",false] spawn life_fnc_MP;
		_to = "Staff";
		hint format["Vous avez envoyé un message au Staff: %2",_to,_msg];
		ctrlShow[888896,true];
		closeDialog 887890;
	};
	
	//emsrequest
	case 4:
	{
		if(({side _x == independent} count playableUnits) == 0) exitWith {hint format["Les médecins font la sieste."];};
		ctrlShow[888899,false];
		if(_msg == "") exitWith {hint "Alors ça envoie des messages vides ?";ctrlShow[888899,true];};
		[[ObjNull,_msg,player,3],"TON_fnc_handleMessages",false] spawn life_fnc_MP;
		hint format["Vous avez appelé les médecins.",_msg];
		ctrlShow[888899,true];
		closeDialog 887890;
	};
	
	//adminToPerson
	case 5:
	{
		if((call life_adminlevel) < 3) exitWith {hint "Vous n'êtes pas membre du Staff";};
		if(isNULL life_smartphoneTarget) exitWith {hint format["Sélectionnez quelqu'un dans votre liste de contact."];};
		if(_msg == "") exitWith {hint "Alors, ça envoie des messages vides?";};
		[[life_smartphoneTarget,_msg,player,4],"TON_fnc_handleMessages",false] spawn life_fnc_MP;
		hint format["Vous avez envoyé un message en tant que Staff à %1: %2",name life_smartphoneTarget,_msg];
		closeDialog 88883;
	};
	
	//emergencyloading
	case 6:
	{
		if((__GETC__(life_adminlevel) < 1)) then
		{
			ctrlShow[888898,false];
			ctrlShow[888896,true];
		} else {
			ctrlShow[888898,true];
			ctrlShow[888896,false];
		};
	};
	
	//adminMsgAll
	case 7:
	{
		if((call life_adminlevel) < 1) exitWith {hint "Vous n'êtes pas membre du Staff.";};
		if(_msg == "") exitWith {hint "Alors, ça envoie des messages vides?";};
		[[ObjNull,_msg,player,5],"TON_fnc_handleMessages",false] spawn life_fnc_MP;
		hint format["Admin à tous: %1",_msg];
		closeDialog 887890;
	};

	//inconnu message
	case 8:
	{
		if(isNUll life_smartphoneTarget) exitWith {hint format["Alors, ça envoie des messages dans le vide ?"];};
		ctrlShow[88885, false];
		if(_msg == "") exitWith {hint "Alors ça envoie des messages vides?";ctrlShow[88885, true];};
		[[life_smartphoneTarget,_msg,player,6],"TON_fnc_handleMessages",false] spawn life_fnc_MP;
		hint format["Vous avez envoyé un message en inconnu à %1: %2",name life_smartphoneTarget,_msg];	
		ctrlShow[88885, true];
		closeDialog 88883;
	};

};