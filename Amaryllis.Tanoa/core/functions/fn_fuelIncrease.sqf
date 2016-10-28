private["_vehicleToFuel","_velocityOfVehicle","_fuelConsumption"];

while{true} do 
{
    _vehicleToFuel = (vehicle player);
    if(isEngineOn _vehicleToFuel && ((driver _vehicleToFuel) == player) && !(_vehicleToFuel isKindOf "Air") && (_vehicleToFuel != player) ) then
    {
        _velocityOfVehicle = sqrt(((velocity _vehicleToFuel select 0)^2)+((velocity _vehicleToFuel select 1)^2))*3.6;
        
        _fuelConsumption = _velocityOfVehicle/100000 + 0.0001;
        if(_fuelConsumption > 0.002) then
        {
            _fuelConsumption = 0.001;
        };
        _vehicleToFuel setFuel ((fuel _vehicleToFuel)-_fuelConsumption);
        
        if(fuel _vehicleToFuel < 0.2 && fuel _vehicleToFuel > 0.18) then
        {
            hint "Votre réservoir d'essence est presque vide. Allez à la station-service la plus proche !";
        }
        else
        {
            if(fuel _vehicleToFuel < 0.03) then
            {
                hint "Votre réservoir d'essence est vide. Allez à la station-service la plus proche !";
            };
        };
    };
    sleep 2;
};