#include <macro.h>
/*
	file: fn_smartphone.sqf
	Author: Silex
	
*/

private["_display","_units","_type","_data","_rowData","_msg"];
_type = [_this,0,0] call BIS_fnc_param;
_data = [_this,1,0,["",[],0]] call BIS_fnc_param;


disableSerialization;
waitUntil {!isNull findDisplay 88888};
_display = findDisplay 88888;
_cPlayerList = _display displayCtrl 88881;
_cMessageList = _display displayCtrl 88882;
_cMessageHeader = _display displayCtrl 88886;
_cMessageHeader ctrlSetText format["De:                 Message:"];
ctrlEnable[887892,false];
switch(_type) do
{
	case 0:
	{
		lbClear _cPlayerList;
		{
			if(alive _x && _x != player) then
            //&& (('tel_nokia' in (assignedItems _x)) || ('tel_wiko' in (assignedItems _x)) || ('tel_samsung' in (assignedItems _x)) || ('tel_iphone' in (assignedItems _x)))) then
			{
				switch(side _x) do
				{
					case west: {_type = "Armée"};
					case civilian: {_type = "Civil"};
					// case east: {_type = "none"};
					case independent: {_type = "Médecins"};
				};
				_cPlayerList lbAdd format["%1",_x getVariable["realname", name _x],_type];
				_cPlayerList lbSetData [(lbSize _cPlayerList)-1,str(_x)];
			};
		} forEach playableUnits;
        
        lbSort [_cPlayerList, "ASC"];
		
		[[getPlayerUID player, player],"TON_fnc_msgRequest",false] spawn life_fnc_MP;
		ctrlEnable[887892,false];
	};
	
	case 1:
	{
		_msg = [_data select 2,40] call KRON_StrLeft;
		_rowData = [_data select 0, _data select 1, _data select 2, _data select 3];
		_cMessageList lnbAddRow[_data select 3,format["%1 ...",_msg]];
		_cMessageList lnbSetData[[((lnbSize _cMessageList) select 0)-1,0],str(_rowData)];
	};
	
	case 2:
	{
		ctrlEnable[887892,true];
		_target = lbData[88881,(lbCurSel 88881)];
		if(_target == "Inconnu") then{
			ctrlEnable[887892, false];
		}else{
			life_smartphoneTarget = call compile format["%1",_target];
		};
	};
	
	case 4:
	{
		createDialog "Life_smartphone_schreiben";
		ctrlSetText[88886, format["Message à: %1",name life_smartphoneTarget]];
		
		// Accès Admin
		if((__GETC__(life_adminlevel) < 1)) then
		{
			ctrlShow[888897,false];
		};
	};

};