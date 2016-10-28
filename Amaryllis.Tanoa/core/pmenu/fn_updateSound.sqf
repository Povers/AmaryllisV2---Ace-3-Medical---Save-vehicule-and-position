/*
File: fn_updateSound.sqf

Fade sound in differents vehicles

*/

switch (true) do
{
	case ((vehicle player) isKindOf "Man"): {1 fadeSound (ama_sound_foot/100)};
	case ((vehicle player) isKindOf "LandVehicle"): {1 fadeSound (ama_sound_car/100)};
	case ((vehicle player) isKindOf "Air"): {1 fadeSound (ama_sound_air/100)};
	case ((vehicle player) isKindOf "Ship"): {1 fadeSound (ama_sound_boat/100)};
};