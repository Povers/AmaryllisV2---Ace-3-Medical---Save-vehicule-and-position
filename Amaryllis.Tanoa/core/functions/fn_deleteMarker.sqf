params [
	["_playerName","",[""]],
	["_prefix","COMA",[""]]
];

_playerName = format["%2%1", _playerName, _prefix];

deleteMarkerLocal _playerName;
