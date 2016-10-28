/*if(__GETC__(life_adminlevel) < 1) exitWith {closeDialog 0; hint localize "STR_ANOTF_ErrorLevel"; playSound "Error";};

if (isNil "cargod") then
{
	cargod = false;
};
if(cargod) then
{
	cargod = false;
	titleText ["Véhicule Godmode désactivé","PLAIN DOWN"]; titleFadeOut 4;
}
else
{
	cargod = true;
	titleText ["Véhicule Godmode activé","PLAIN DOWN"]; titleFadeOut 4;
};
while {cargod} do 
{
	vehicle player setvehicleammo 1;
	vehicle player setdammage 0;
	sleep 0.001;
};
*/
playSound "Error";