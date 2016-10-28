waitUntil {
	{
		if(agent _x isKindOf "Snake_random_F" || agent _x isKindOf "eagle_f") then {deleteVehicle agent _x};
	} forEach agents;
	sleep 5;
	false;
};