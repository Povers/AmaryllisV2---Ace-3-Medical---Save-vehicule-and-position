/*
##################### DYNAMIC MARKET SCRIPT #####################
### AUTHOR: RYAN TT.                                          ###
### STEAM: www.steamcommunity.com/id/ryanthett                ###
###                                                           ###
### DISCLAIMER: THIS SCRIPT CAN BE USED ON EVERY SERVER ONLY  ###
###             WITH THIS HEADER / NOTIFICATION               ###
#################################################################
*/

// ███████████████████████████████████████████████████████████████████████
// █████████████████ DYNAMIC MARKET BASIC CONFIGURATION ██████████████████
// ███████████████████████████████████████████████████████████████████████

DYNMARKET_Serveruptime         = 06;   // Serveruptime after restart in hours
DYNMARKET_UseExternalDatabase  = true; // Should the script use the External Database?
DYNMARKET_PriceUpdateInterval  = 01;   // After how many minutes should the price be updated?
DYNMARKET_CreateBackups        = true; // Should the server save write the prices regulary into the Database? If false, it will save the prices before Server-restart?
DYNMARKET_CreateBackupInterval = 01;   // After how many updates (PriceUpdateIntervals) should the prices be saved into the Database?
DYNMARKET_UserNotification     = false; // Should the user be informed with a hint whenever the prices got updated?

// █████████████████ USER NOTIFICATION TEXTS  █████████████████

DYNMARKET_UserNotification_Text = 
[
	"Your prices have been updated!",
	"The new prices are being calculated by the server..."
];

// █████████████████ ITEM GROUP CONFIGURATION █████████████████

DYNMARKET_Items_Groups =
[
	["Tier_1",
		[
			["coco",-1,5,5],
			["bananep",-1,250,250]
		],
		1.5
	],
	["Tier_2",
		[
			["seiglep",-1,110,190],
			["orgep",-1,110,190],
			["boisp",-1,165,275]
			
		],
		1.2
	],	
	["Tier_3",
		[
			["cacaop",-1,300,500],
			["cacaopp",-1,525,875],
			["charbonp",-1,345,575],
			["ferp",-1,390,650],
			["ferpp",-1,683,1138]
		],
		1.3
	],	
	["Tier_4",
		[
			["diamantp",-1,600,1000],
			["petrolep",-1,375,625],
			["gazole",-1,657,1094],
			["huitrep",-1,563,938],
			["huitrepp",-1,985,1640]
			
		],
		1.5
	],	
	["Drogues",
		[
			["cannabisp",-1,1500,3000],
			["cocainep",-1,1500,3000],
			["vestigep",-1,1500,3000]
		],
		2
	],	
	["Entreprises_Luxe",
		[
		],
		1.5
	]
];

// █████████████████    ALL SELLABLE ITEMS    █████████████████

DYNMARKET_Items_ToTrack        = 
[
	
	["chips",5],
	["curly",6],
	["desperados",12],
	["sandwich_chicken",7],
	["sandwich_ham",5],
	["barbar",12],
	["biscuit",5],
	["limonade",6],
	["soda",4],
	["rabbit",6],
	["water",5],
	["tbacon",30],
	["lockpick",200],
	["pickaxe",6],
	["axe",6],
	["faux",6],
	["redgull",7],
	["fuelF",40],
	["fuelE",40],
	// Ressources
	["coco",5],
	["bananep",250],
	["seiglep",150],
	["orgep",150],
	["boisp",220],
	["cacaop",400],
	["cacaopp",700],
	["charbonp",460],
	["ferp",520],
	["ferpp",910],
	["diamantp",800],
	["petrolep",500],
	["huitrep",750],
	["huitrepp",1300],
	["gazole",875],
	["cannabisp",2250],
	["cocainep",2250],
	["vestigep",2250]
];

//███████████████████████████████████████████████████████████████████████
//██████████████████ DO NOT MODIFY THE FOLLOWING CODE! ██████████████████
//███████████████████████████████████████████████████████████████████████

DYNMARKET_Items_CurrentPriceArr = [];
DYNMARKET_sellarraycopy = DYNMARKET_Items_ToTrack;
DYNMARKET_Serveruptime = (DYNMARKET_Serveruptime * 3600) - 300;
{
	_currentArray = _x;
	DYNMARKET_Items_CurrentPriceArr pushBack [_currentArray select 0,_currentArray select 1,0];
} forEach DYNMARKET_Items_ToTrack;
publicVariable "DYNMARKET_UserNotification";
publicVariable "DYNMARKET_UserNotification_Text";
if (DYNMARKET_UseExternalDatabase) then {[1] call TON_fnc_HandleDB;};
DYNMARKET_UpdateCount = 0;
if (DYNMARKET_UseExternalDatabase) then {
	[] spawn {
		sleep DYNMARKET_Serveruptime;
		diag_log "### DYNMARKET >> CURRENT PRICES ARE BEING WRITTEN TO THE DATABASE    ###";
		diag_log "### DYNMARKET >> AS PLANNED, AWAITING RESULT...                      ###";
		[0] call TON_fnc_HandleDB;
	};
};
sleep 5;
[] call TON_fnc_sleeper;
