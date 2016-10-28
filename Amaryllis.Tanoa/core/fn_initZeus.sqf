player addRating 9999999;

waitUntil {!(isNull (findDisplay 46))};

[] spawn life_fnc_copMarkers;



if(life_adminlevel < 1) exitWith

{

    endMission "Loser";

};