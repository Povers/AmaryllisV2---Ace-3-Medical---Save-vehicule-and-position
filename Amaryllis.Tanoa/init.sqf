enableSaving [false, false];

X_Server = false;
X_Client = false;
X_JIP = false;
StartProgress = false;
// introSpawn = nil;

if(!isDedicated) then { X_Client = true;};
enableSaving[false,false];

life_versionInfo = "Amaryllis";
[] execVM "briefing.sqf"; //Load Briefing
[] execVM "KRON_Strings.sqf";
[] execVM "core\weather.sqf";
[] execVM "core\animalsDisable.sqf";

{_x setVariable ["BIS_noCoreConversations", true]} forEach allUnits;
0 fadeRadio 0;
enableSentences false;


0 setFog 0;
[] spawn
{
    scriptName "DisableFog";
    while {true} do
    {
        0 setfog 0;
        sleep 120;
    };  
};


tf_no_auto_long_range_radio = true;
tf_same_sw_frequencies_for_side = true;
tf_same_lr_frequencies_for_side = true;

StartProgress = true;

West setFriend [Civilian, 1];
West setFriend [Resistance, 1];

Civilian setFriend [West, 1];
Civilian setFriend [Resistance, 1];

Resistance setFriend [West, 1];
Resistance setFriend [Civilian, 1];