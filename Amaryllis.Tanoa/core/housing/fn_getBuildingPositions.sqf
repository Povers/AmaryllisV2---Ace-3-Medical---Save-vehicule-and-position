/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Retrieves all 3D-world positions in a building and also restricts
	certain positions due to window positioning.
*/
private["_building","_arr","_restricted","_exitLoop","_i"];
_building = _this select 0;
_arr = [];

_restricted = switch(typeOf _building) do
{
case "Land_House_Big_03_F": {[0,1,2,3,4,6,7,8,9,10,11,12,13,14,15,17]}; // ok 5 (18 et 16 à voir) 
case "Land_House_Big_04_F": {[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]}; // ok 0 (16 et 17 à voir)
case "Land_Addon_04_F": {[1,3,10,11,12,13,14,15,16,17]}; // a test
case "Land_House_Small_05_F": {[0,2]}; // (1 et 3 à voir)
case "Land_House_Small_04_F": {[0,1,2,3]}; // (5 à voir)
case "Land_House_Big_02_F": {[0,1,2,3,10,12,13,14,7,11,8]};
case "Land_House_Small_06_F": {[0,2,3]}; // ok 1 (4 à voir)
case "Land_House_Big_01_F": {[0,2,4,5,6,7]}; // ok pour 1 et 8
case "Land_House_Small_03_F": {[0,1,2,3,5,6,7,8]};// ok 4 ( 9 à voir)
case "Land_Slum_01_F": {[0,1,5,14,3]}; // a test
case "Land_Slum_03_F": {[1,3,4,5,7,14,17,18,21,22,23,24,25]}; // a test
case "Land_Shed_05_F": {[0,2,4,1]}; // a test
case "Land_GarageShelter_01_F": {[0,1,2,3,4,7,6,5]}; // a test
case "Land_Hotel_02_F": {[1,2,3,4,6,7,8,9,10,11,13,14,15,16,17,18,19,20,21,22,24]}; // ok pour 5,12,23,25
case "Land_SM_01_shed_F": {[0,1,2,4,910]}; // a test
case "Land_i_Shed_Ind_F": {[0,1,2,4,910]}; // a test
default {[]};
};

_i = 0;
_exitLoop = false; //Loops are not fun.
while {true} do {
	if(!(_i in _restricted)) then {
	_pos = _building buildingPos _i;
	if(_pos isEqualTo [0,0,0]) exitWith {_exitLoop = true;};
	_arr pushBack _pos;
	};
	if(_exitLoop) exitWith {};
	_i = _i + 1;
};

_arr;
