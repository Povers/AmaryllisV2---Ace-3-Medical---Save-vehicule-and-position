Private["_marker","_text"];
params [
	["_playerName","",[""]],
	["_pos",[],[[]]],
	["_prefix","SMA",[""]]
];
if(count _pos == 0 OR _playerName == "") exitwith {};

_text = format["%2 %1", _playerName, _prefix];
_playerName = format["%2%1", _playerName, _prefix];

deleteMarkerLocal _playerName;
_marker = createMarkerLocal [_playerName, _pos];

_marker setMarkerColorLocal "ColorRed";
_marker setMarkerTextLocal _text;
_marker setMarkerTypeLocal "loc_Hospital";
