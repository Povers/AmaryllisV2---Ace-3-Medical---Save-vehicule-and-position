
private ["_realtime", "_timeratio"];

_realtime = false;
_timeratio = 12;

if(!_realtime) then { setTimeMultiplier _timeratio; };

if(isDedicated)then
{
	while {true}do
	{
		60 setfog 0;
		60 setRain 0;
		0 setOvercast 0;
		sleep 1200;
	};
};

if (!isDedicated) then
{
	while {true}do
	{
		60 setfog 0;
		60 setRain 0;
		0 setOvercast 0;
		uiSleep 1200;
	};
};