life_fnc_sidechat =
compileFinal "
	if(life_sidechat) then {life_sidechat = false;} else {life_sidechat = true;};
	[[player,life_sidechat,playerSide],""TON_fnc_managesc"",false,false] spawn life_fnc_MP;
	[] call life_fnc_settingsMenu;
";

publicVariable "life_fnc_sidechat";

TON_fnc_index =
compileFinal "
	private[""_item"",""_stack""];
	_item = _this select 0;
	_stack = _this select 1;
	_return = -1;

	{
		if(_item in _x) exitWith {
			_return = _forEachIndex;
		};
	} foreach _stack;

	_return;
";

TON_fnc_player_query =
compileFinal "
	private[""_ret""];
	_ret = _this select 0;
	if(isNull _ret) exitWith {};
	if(isNil ""_ret"") exitWith {};
	
	[[life_atmcash,life_cash,owner player,player],""life_fnc_admininfo"",_ret,false] spawn life_fnc_MP;
";
publicVariable "TON_fnc_player_query";

publicVariable "TON_fnc_index";

TON_fnc_clientWireTransfer =
compileFinal "
	private[""_unit"",""_val"",""_from""];
	_val = _this select 0;
	_from = _this select 1;
	if(!([str(_val)] call TON_fnc_isnumber)) exitWith {};
	if(_from == """") exitWith {};
	life_atmcash = life_atmcash + _val;
	hint format[""%1 vous a transféré %2€."",_from,[_val] call life_fnc_numberText];
	
";
publicVariable "TON_fnc_clientWireTransfer";

TON_fnc_isnumber =
compileFinal "
	private[""_valid"",""_value"",""_compare""];
	_value = _this select 0;
	_valid = [""0"",""1"",""2"",""3"",""4"",""5"",""6"",""7"",""8"",""9""];
	_array = [_value] call KRON_StrToArray;
	_return = true;
	
	{
		if(_x in _valid) then	
		{}
		else
		{
			_return = false;
		};
	} foreach _array;
	_return;
";

publicVariable "TON_fnc_isnumber";

TON_fnc_clientGangKick =
compileFinal "
	private[""_unit"",""_group""];
	_unit = _this select 0;
	_group = _this select 1;
	if(isNil ""_unit"" OR isNil ""_group"") exitWith {};
	if(player == _unit && (group player) == _group) then
	{
		life_my_gang = ObjNull;
		[player] joinSilent (createGroup civilian);
		hint ""Vous avez été exclu de votre groupe !"";
		
	};
";
publicVariable "TON_fnc_clientGangKick";

TON_fnc_clientGetKey =
compileFinal "
	private[""_vehicle"",""_unit"",""_giver""];
	_vehicle = _this select 0;
	_unit = _this select 1;
	_giver = _this select 2;
	if(isNil ""_unit"" OR isNil ""_giver"") exitWith {};
	if(player == _unit && !(_vehicle in life_vehicles)) then
	{
		_name = getText(configFile >> ""CfgVehicles"" >> (typeOf _vehicle) >> ""displayName"");
		hint format[""Quelqu'un vous a donné ses clés""];
		life_vehicles pushBack _vehicle;
		[[getPlayerUID player,playerSide,_vehicle,1],""TON_fnc_keyManagement"",false,false] spawn life_fnc_MP;
	};
";

publicVariable "TON_fnc_clientGetKey";

TON_fnc_clientGangLeader =
compileFinal "
	private[""_unit"",""_group""];
	_unit = _this select 0;
	_group = _this select 1;
	if(isNil ""_unit"" OR isNil ""_group"") exitWith {};
	if(player == _unit && (group player) == _group) then
	{
		player setRank ""COLONEL"";
		_group selectLeader _unit;
		hint ""Vous êtes désormais Leader de votre groupe."";
	};
";

publicVariable "TON_fnc_clientGangLeader";

//Cell Phone Messaging
/*
	-fnc_cell_textmsg
	-fnc_cell_textcop
	-fnc_cell_textadmin
	-fnc_cell_adminmsg
	-fnc_cell_adminmsgall
*/

//To EMS
TON_fnc_cell_emsrequest = 
compileFinal "
private[""_msg"",""_to""];
	ctrlShow[3022,false];
	_msg = ctrlText 3003;
	_to = ""EMS Units"";
	if(_msg == """") exitWith {hint ""Vous devez entrer un message !"";ctrlShow[3022,true];};
		
	[[_msg,name player,5],""TON_fnc_clientMessage"",independent,false] spawn life_fnc_MP;
	[] call life_fnc_cellphone;
	hint format[""Vous avez envoyé un message aux médecins"",_to,_msg];
	ctrlShow[3022,true];
";
//To One Person
TON_fnc_cell_textmsg =
compileFinal "
	private[""_msg"",""_to""];
	ctrlShow[3015,false];
	_msg = ctrlText 3003;
	if(lbCurSel 3004 == -1) exitWith {hint ""Vous devez sélectionner un destinataire !""; ctrlShow[3015,true];};
	_to = call compile format[""%1"",(lbData[3004,(lbCurSel 3004)])];
	if(isNull _to) exitWith {ctrlShow[3015,true];};
	if(isNil ""_to"") exitWith {ctrlShow[3015,true];};
	if(_msg == """") exitWith {hint ""You must enter a message to send!"";ctrlShow[3015,true];};
	
	[[_msg,name player,0],""TON_fnc_clientMessage"",_to,false] spawn life_fnc_MP;
	[] call life_fnc_cellphone;
	hint format[""Vous avez envoyé un message à %1: %2"",name _to,_msg];
	ctrlShow[3015,true];
";
//To All Cops
TON_fnc_cell_textcop =
compileFinal "
	private[""_msg"",""_to""];
	ctrlShow[3016,false];
	_msg = ctrlText 3003;
	_to = ""l'Armée"";
	if(_msg == """") exitWith {hint ""You must enter a message to send!"";ctrlShow[3016,true];};
		
	[[_msg,name player,1],""TON_fnc_clientMessage"",true,false] spawn life_fnc_MP;
	[] call life_fnc_cellphone;
	hint format[""Vous avez envoyé un message à l'Armée : %2"",_to,_msg];
	ctrlShow[3016,true];
";
//To All Admins
TON_fnc_cell_textadmin =
compileFinal "
	private[""_msg"",""_to"",""_from""];
	ctrlShow[3017,false];
	_msg = ctrlText 3003;
	_to = ""Staff"";
	if(_msg == """") exitWith {hint ""You must enter a message to send!"";ctrlShow[3017,true];};
		
	[[_msg,name player,2],""TON_fnc_clientMessage"",true,false] spawn life_fnc_MP;
	[] call life_fnc_cellphone;
	hint format[""Vous avez envoyé un message au Staff: %2"",_to,_msg];
	ctrlShow[3017,true];
";
//Admin To One Person
TON_fnc_cell_adminmsg =
compileFinal "
	if(isServer) exitWith {};
	if((call life_adminlevel) < 1) exitWith {hint ""Vous n'êtes pas membre du Staff"";};
	private[""_msg"",""_to""];
	_msg = ctrlText 3003;
	_to = call compile format[""%1"",(lbData[3004,(lbCurSel 3004)])];
	if(isNull _to) exitWith {};
	if(_msg == """") exitWith {hint ""You must enter a message to send!"";};
	
	[[_msg,name player,3],""TON_fnc_clientMessage"",_to,false] spawn life_fnc_MP;
	[] call life_fnc_cellphone;
	hint format[""Vous avez envoyé un message à %1 en tant que membre du Staff: %2"",name _to,_msg];
";

TON_fnc_cell_adminmsgall =
compileFinal "
	if(isServer) exitWith {};
	if((call life_adminlevel) < 1) exitWith {hint ""Vous n'êtes pas membre du Staff"";};
	private[""_msg"",""_from""];
	_msg = ctrlText 3003;
	if(_msg == """") exitWith {hint ""You must enter a message to send!"";};
	
	[[_msg,name player,4],""TON_fnc_clientMessage"",true,false] spawn life_fnc_MP;
	[] call life_fnc_cellphone;
	hint format[""Vous avez envoyé un message à tous les joueurs en tant que membre du Staff: %1"",_msg];
";

publicVariable "TON_fnc_cell_textmsg";
publicVariable "TON_fnc_cell_textcop";
publicVariable "TON_fnc_cell_textadmin";
publicVariable "TON_fnc_cell_adminmsg";
publicVariable "TON_fnc_cell_adminmsgall";
publicVariable "TON_fnc_cell_emsrequest";
//Client Message
/*
	0 = private message
	1 = police message
	2 = message to admin
	3 = message from admin
	4 = admin message to all
    5 = player to EMS
*/
TON_fnc_clientMessage =
compileFinal "
	if(isServer) exitWith {};
	if(""ama_nokia"" in (assignedItems player)) then {
	private[""_msg"",""_from"", ""_type""];
	_msg = _this select 0;
	_from = _this select 1;
	_type = _this select 2;
	if(_from == """") exitWith {};
	switch (_type) do
	{
		case 0 :
		{
			private[""_message""];
			_message = format["">>>Message de %1: %2"",_from,_msg];
			hint parseText format [""<t color='#FFCC00'><t size='2'><t align='center'>Nouveau Message<br/><br/><t color='#33CC33'><t align='left'><t size='1'>Expéditeur: <t color='#ffffff'>%1<br/><t color='#33CC33'>Destinataire: <t color='#ffffff'>Moi<br/><br/><t color='#33CC33'>Message:<br/><t color='#ffffff'>%2"",_from,_msg];
			
			[""Nouveau Message"",[format[""Vous avez reçu un message de %1"",_from]]];
			systemChat _message;
            player say3D ""vibreur"";
		};
		
		case 1 :
		{
			if(side player != west) exitWith {};
			private[""_message""];
			_message = format[""[Armée] Message de %1: %2"",_from,_msg];
			hint parseText format [""<t color='#316dff'><t size='2'><t align='center'>Message d'urgence<br/><br/><t color='#33CC33'><t align='left'><t size='1'>Expéditeur: <t color='#ffffff'>%1<br/><t color='#33CC33'>Destinataire: <t color='#ffffff'>Armée<br/><br/><t color='#33CC33'>Message:<br/><t color='#ffffff'>%2"",_from,_msg];
			
			[""Message d'urgence"",[format[""Nouveau message d'urgence de: %1"",_from]]];
            systemChat _message;
            player say3D ""vibreur"";
		};
		
		case 2 :
		{
			if((call life_adminlevel) < 1) exitWith {};
			private[""_message""];
			_message = format[""[Requête Staff] Nouveau message de %1: %2"",_from,_msg];
			hint parseText format [""<t color='#ffcefe'><t size='2'><t align='center'>Requête Staff<br/><br/><t color='#33CC33'><t align='left'><t size='1'>Expéditeur: <t color='#ffffff'>%1<br/><t color='#33CC33'>Destinataire: <t color='#ffffff'>Staff<br/><br/><t color='#33CC33'>Message:<br/><t color='#ffffff'>%2"",_from,_msg];
			
			[""Requête Staff"",[format[""Nouveau message de %1"",_from]]];
			systemChat _message;
            playSound3D ""message"";
		};
		
		case 3 :
		{
			private[""_message""];
			_message = format[""[Gouvernement]: %1"",_msg];
			_admin = format[""Envoyé par: %1"", _from];
			hint parseText format [""<t color='#FF0000'><t size='2'><t align='center'>Gf<br/><br/><t color='#33CC33'><t align='left'><t size='1'>Expéditeur: <t color='#ffffff'>Gouvernement<br/><t color='#33CC33'>Destinataire: <t color='#ffffff'>Moi<br/><br/><t color='#33CC33'>Message:<br/><t color='#ffffff'>%1"",_msg];
			
			[""Message du Staff"",[""Vous avez reçu un message privé du Staff""]];
			systemChat _message;
			if((call life_adminlevel) > 0) then {systemChat _admin;};
            playSound ""message"";
            playSound ""message"";
		};
		
		case 4 :
		{
			private[""_message"",""_admin""];
			_message = format[""[Gouvernement]: %1"",_msg];
			_admin = format[""Envoyé par: %1"", _from];
			hint parseText format [""<t color='#FF0000'><t size='2'><t align='center'>Gouvernement<br/><br/><t color='#33CC33'><t align='left'><t size='1'>Expéditeur: <t color='#ffffff'>Gouvernement<br/><t color='#33CC33'>Destinataire: <t color='#ffffff'>À toute la population<br/><br/><t color='#33CC33'>Message:<br/><t color='#ffffff'>%1"",_msg];
			
			[""Message du Staff"",[""Vous avez reçu un message global du Staff""]];
			systemChat _message;
			if((call life_adminlevel) > 0) then {systemChat _admin;}; 
            playSound ""message"";
		};
		
		case 5: {
			private[""_message""];
			_message = format[""[Corps Médical]: %1"",_msg];
			hint parseText format [""<t color='#24ca34'><t size='2'><t align='center'>Message d'urgence<br/><br/><t color='#33CC33'><t align='left'><t size='1'>Expéditeur: <t color='#ffffff'>%1<br/><t color='#33CC33'>Destinataire: <t color='#ffffff'>Corps Médical<br/><br/><t color='#33CC33'>Message:<br/><t color='#ffffff'>%2"",_from,_msg];
			[""Message d'urgence"",[format[""Message d'urgence de %1"",_from]]];
            player say3D ""message"";            
		};
	};
};
";
publicVariable "TON_fnc_clientMessage";
