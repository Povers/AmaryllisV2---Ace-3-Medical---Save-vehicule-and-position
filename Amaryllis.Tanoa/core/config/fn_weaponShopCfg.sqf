#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
    case "armurerie_armee_weapon": {
		if (playerSide != west) then {"Vous n'êtes pas militaire !"}
		else
		{
			_ret =  
			["Armurerie", 
					[  
						["SMG_05_F","MP5K",0],
                        ["30Rnd_9x21_Mag_SMG_02","Chargeur MP5K",0],
						["RH_usp","USP.45",0],
                        ["RH_12Rnd_45cal_usp","Chargeur USP.45",0]
                    ]
			];
            
            _level = (call life_coplevel);
			_array = _ret select 1;
            
            // Soldat 1er Classe
            if (_level > 1) then 
			{
                _array pushBack ["rhs_weap_hk416d145","HK 416",0];
                _array pushBack ["rhs_mag_30Rnd_556x45_M855A1_Stanag_No_Tracer","Chargeur HK 416",0];
				_array pushBack ["arifle_CTAR_blk_F","QBZ-95-1",0];
                _array pushBack ["30Rnd_580x42_Mag_F","Chargeur QBZ-95-1",0];
				_array pushBack ["hgun_Pistol_01_F","Makarov PM",0];
                _array pushBack ["10Rnd_9x21_Mag","Chargeur Makarov PM",0];
			};
            
           // Adjudant
            if (_level > 3) then 
			{
                _array pushBack ["rhs_weap_m14ebrri","M14 EBR",0];
                _array pushBack ["rhsusf_20Rnd_762x51_m118_special_Mag","Chargeur M14 EBR",0];
			};

			// Lieutenant
            if (_level > 4) then 
			{
                        
                _array pushBack ["rhs_weap_M590_8RD","M590A1",0];
                _array pushBack ["rhsusf_8Rnd_00Buck","Chargeur M590A1",0];
			};
            _ret;
		};
	};    
	
case "armurerie_armee_acc": {
if (playerSide != west) then {"Vous n'êtes pas militaire !"}
else
        {
			_ret =  
			["Armurerie", 
					[
						["tf_anprc148jem","Radio courte portee",0],
                        ["ToolKit","Trousse a Outils",0],
                        ["NVGoggles_INDEP","JVN",0],
                        ["Binocular","Jumelles",0],
						["ItemMap",nil,0],
						["ItemCompass",nil,0],
						["ItemGPS",nil,0],
						["ama_nokia","Téléphone",0],
                        ["ACE_CableTie","Serflex",0],
                        ["ACE_Flashlight_MX991","Fulton",0],
                        ["ACE_EarPlugs","Bouchon d'oreilles",0],
                        ["ACE_SpareBarrel","Second Canon",0],
						["SmokeShell","Fumigène Blanche",0],
						["SmokeShellGreen","Fumigène Vert",0],
						["SmokeShellRed","Fumigène Rouge",0],
						["Chemlight_blue","Baton Lumineux Bleu",0],
						["Chemlight_green","Baton Lumineux Vert",0],
						["Chemlight_red","Baton Lumineux Rouge",0],
                        ["optic_ACO_grn","ACO",0],
						["optic_Holosight_blk_F","Holosight",0],
						["acc_flashlight","Lampe-torche",0],
						["RH_X300","Lampe x300",0]

					]
			];
            
            _level = (call life_coplevel);
			_array = _ret select 1;
            
            // Soldat 1er Classe
            if (_level > 1) then 
			{
                _array pushBack ["optic_Hamr","RCO",0];
                _array pushBack ["optic_MRCO","MRCO",0];
				_array pushBack ["optic_ERCO_blk_F","ERCO",0];
				_array pushBack ["rhsusf_acc_harris_bipod","Bipied",0];
                _array pushBack ["ACE_M84","Grenade Incapacitante",0];
				_array pushBack ["ACE_Altimeter", "Altimètre" ,0];

				 
            
			};
            
            // Adjudant
            if (_level > 3) then 
			{
                _array pushBack ["Rangefinder", "Télémètre" ,0];
				_array pushBack ["Skyline_B_Remote_Cam", "Terminal de surveillance" ,0];
				_array pushBack ["RH_gemtech45","Silencieux USP.45",0];
			    _array pushBack ["rhsusf_acc_nt4_black", "Silencieux HK 416" ,0];
			};
            
            // Lieutenant
            if (_level > 4) then 
			{
                _array pushBack ["DemoCharge_Remote_Mag", "Charge de C4" ,0];

			};
            _ret;
		};
	}; 
	
case "pharmacie_cos": {
if (playerSide != west) then {"Vous n'êtes pas militaire !"}
else
        {
			_ret =  
			["Pharmacie Militaire", 
					[
						["ACE_fieldDressing","Bandage (Standard)",0],
						["ACE_morphine","Morphine",0]
						
					]
			];
			_ret;
		};
	}; 
    
    
case "spe_sniper": {
		if (playerSide != west) then {"Vous n'êtes pas militaire !"}
		else
		{
			_ret =  
			["Spécialité Sniper", 
					[
                        ["rhs_weap_XM2010_wd_leu", "XM2010" ,0], 
                        ["rhsusf_5Rnd_300winmag_xm2010", "Chargeur XM2010" ,0], 
						["optic_LRPS", "Lunette LRPS" ,0], 
						["RH_g18", "Glock 18" ,0], 
						["RH_33Rnd_9x19_g18", "Chargeur Glock 18" ,0], 
						["RH_gemtech9", "Silentieux Glock 18" ,0]
						
					]
			];
           _ret; 
		};
	};
    
case "spe_para": {
		if (playerSide != west) then {"Vous n'êtes pas militaire !"}
		else
		{
			_ret =  
			["Spécialité Commando Para",
					[
						["arifle_SPAR_02_blk_F", "HK 416 Drum" ,0],
                        ["150Rnd_556x45_Drum_Mag_F", "Chargeur HK 416 Drum" ,0]  
					]
			];
           _ret; 
       };
	};      
	
case "spe_instructeur": {
		if (playerSide != west) then {"Vous n'êtes pas militaire !"}
		else
		{
			_ret =  
			["Spécialité Instructeur",
					[
						["arifle_AN94_F", "AN-94" ,0],
                        ["AN94_545x39_B_skin1", "Chargeur AN-94" ,0] 
					]
			];
           _ret; 
       };
	}; 

                
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"Vous n'êtes pas membre du SMT"};
			default {
				["Equipement SMA",
					[
                        ["ItemMap",nil,0],
                        ["ItemCompass",nil,0],
                        ["ItemGPS",nil,0],
                        ["tf_anprc148jem","Radio courte portee",0],
                        ["Binocular",nil,0],
                        ["ToolKit",nil,0],
                        ["NVGoggles",nil,0],
                        ["ACE_fieldDressing",nil,0],
                        ["ACE_elasticBandage",nil,0],
                        ["ACE_morphine",nil,0],
                        ["ACE_epinephrine",nil,0],
                        ["ACE_bloodIV_250",nil,0],
                        ["ACE_bloodIV_500",nil,0],
                        ["ACE_bloodIV",nil,0],
                        ["ACE_bodyBag",nil,0],
                        ["ACE_Flashlight_MX991",nil,0],
                        ["ACE_EarPlugs",nil,0],
                        ["ama_nokia","Téléphone",0]
                    ]
				];
			};
		};
	};


   /* 	case "journalist":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Vous n'êtes pas un civil !"};
			case (!license_civ_journalist): {"Vous n'avez pas de licence journaliste."};
			default
			{
				["Equipement Journaliste",
					[
					]
				];
			};
		};
	}; */

	case "gangster":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Vous n'êtes pas un civil !"};
			case (!license_civ_gangster): {"Vous n'avez pas l'accès à la cache d'arme gangster."};
			default
			{
				["Cache d'armes gangster",
					[
					    ["rhsusf_weap_MP7A1_base_f","MP7A1",90000],
					    ["rhsusf_mag_40Rnd_46x30_FMJ","Chargeur MP7A1",600],
					    ["rhs_weap_pp2000","PP2000",77500],
						["rhs_mag_9x19mm_7n21_20","Chargeur PP2000",550],
					    ["SMG_01_F","Vermin",75000],
                        ["30Rnd_45ACP_Mag_SMG_01","Chargeur Vermin",500],
						["SMG_02_F","Sting",70000],
						["30Rnd_9x21_Mag","Chargeur Sting",450],
						["RH_muzi","Mini Uzi",45000],
						["RH_30Rnd_9x19_UZI","Chargeur Mini Uzi",450],
						["RH_vz61","VZ61",25000],
						["RH_20Rnd_32cal_vz61","Chargeur VZ61",450],
						["RH_vp70","VP70",19500],
						["RH_18Rnd_9x19_VP","Chargeur VP70",150],
						["RH_p226","P226",18000],
						["RH_15Rnd_9x19_SIG","Chargeur P226",125],
                        ["optic_Aco","ACO",10000],
						["NVGoggles",nil,20000],
                        ["ACE_CableTie","Serflex",250],
						["ACE_SpraypaintBlue",nil,5000],
				        ["ACE_SpraypaintRed",nil,5000],
				        ["ACE_SpraypaintBlack",nil,5000],
				        ["ACE_SpraypaintGreen",nil,5000]
					]
				];
			};
		};
	};
	
	case "criminel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Vous n'êtes pas un civil !"};
			case (!license_civ_criminel): {"Vous n'avez pas de licence criminel."};
			default
			{
				["Armurerie Criminel",
					[
						["rhs_weap_M590_5RD","M590A1",150000],
                        ["rhsusf_5Rnd_00Buck","Chargeur M590A1",500],
						["SG553","SG553",140000],
                        ["30Rnd_56x45_GP90","Chargeur SG553",650],
						["rhs_weap_m4a1_carryhandle","M4A1",140000],
						["rhs_mag_30Rnd_556x45_Mk318_Stanag","Chargeur M4A1",650],
						["rhs_weap_m16a4","M16A4",140000],
						["rhs_mag_30Rnd_556x45_Mk318_Stanag","Chargeur M16A4",650],
						["arifle_TRG21_F","TAR-21",130000],
						["30Rnd_556x45_Stanag","Chargeur TAR-21",500],
						["arifle_Mk20_F","F2000",130000],
						["30Rnd_556x45_Stanag","Chargeur F2000",500],
						["arifle_AKS_F","AKS-74U",125000],
						["30Rnd_545x39_Mag_F","Chargeur AKS-74U",450],
						["RH_fn57","Five-Seven",20000],
						["RH_20Rnd_57x28_FN","Chargeur Five-Seven",250],
						["hgun_Pistol_heavy_02_F","Chiappa Rhino",17500],
						["6Rnd_45ACP_Cylinder","Chargeur Chiappa Rhino",200],
						["RH_mateba","Mateba",15000],
						["RH_6Rnd_44_Mag","Chargeur Mateba",150],
						["optic_Aco","ACO",20000],
						["rhsusf_acc_compm4","M68 CCO",20000],
						["rhsusf_acc_eotech_552","M552 CCO",20000],
                        ["acc_flashlight","Lampe-torche",1000],
                        ["ACE_CableTie","Serflex",250],
						["NVGoggles",nil,20000],
						["Skyline_C_Remote_Cam","Terminal de piratage",50000]
					]
				];
			};
		};
	};
    
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Vous n'êtes pas un civil !"};
			case (!license_civ_gun): {"Vous n'avez pas de permis de port d'arme !"};
			default
			{
				["Armurerie civil",
					[
					    ["NVGoggles","Vision nocturne",15000],
                        ["RH_cz75","CZ 75",10000],
                        ["RH_16Rnd_9x19_CZ","Chargeur CZ 75",500],
                        ["RH_g17","Glock 17",15000],
                        ["RH_17Rnd_9x19_g17","Chargeur Glock 17",500],
                        ["RH_g19","Glock 19",20000],
                        ["RH_17Rnd_9x19_g17","Chargeur Glock 19",500],
						["RH_Mak","Makarov",18000],
                        ["RH_8Rnd_9x18_Mak","Chargeur Makarov",450]
					]
				];
			};
		};
	};
    case "gunprivate":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Vous n'êtes pas un civil !"};
			case (!license_civ_parmurerie): {"Ceci est une armurerie privée !"};
			default
			{
				["Armurerie privée",
					[
						["RH_m9","M9",7500],
						["RH_15Rnd_9x19_M9","Chargeur M9",250],
						["RH_m9c","M9 Camo",7500],
						["RH_15Rnd_9x19_M9","Chargeur M9",250],
						["RH_fnp45","FNP-45 noir",9900],
						["RH_15Rnd_45cal_fnp","Chargeur FNP-45",250],
						["RH_fnp45t","FNP-45 tan",9000],
						["RH_15Rnd_45cal_fnp","Chargeur FNP-45",250],
						["RH_kimber_nw","Kimber Night Warrior",7900],
						["RH_7Rnd_45cal_m1911","Chargeur Kimber Night Warrior",250],
						["RH_ttracker","Taurus Tracker 455",19000],
						["RH_6Rnd_45ACP_Mag","Chargeur Taurus Tracker 455",250],
						["RH_docter","Viseur FNP-45",5000],
                        ["RH_X2","Lampe X2",2500]
					]
				];
			};
		};
	};
	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			default
			{
				["Hideout Armament",
					[
					]
				];
			};
		};
	};
	case "genstore":
	{
		["Magasin Général",
			[   
                ["tf_anprc148jem","Radio courte portee",50], 
                ["ItemMap",nil,20],
				["ItemCompass",nil,20],
				["ama_nokia","Téléphone",20],
				["ItemGPS",nil,50],
                ["Binocular",nil,50],
                ["Toolkit",nil,1000],
                ["ACE_fieldDressing",nil,10],
                ["ACE_morphine",nil,25],
                ["ACE_Flashlight_MX991",nil,25],
                ["ACE_EarPlugs",nil,10],
				["Chemlight_red",nil,25],
				["Chemlight_yellow",nil,25],
				["Chemlight_green",nil,25],
				["Chemlight_blue",nil,25]
			]
		];
	};

	case "station":
	{
		["Station service",
			[   
                ["ItemMap",nil,100],
				["ItemCompass",nil,100],
				["ItemGPS",nil,50],
                ["Toolkit",nil,1500],
                ["ACE_fieldDressing",nil,20],
                ["ACE_Flashlight_MX991",nil,100]
			]
		];
	};

	case "depan":
	{
		["Dépanneur",
			[   
                ["Toolkit",nil,200]
			]
		];
	};

	case "tabac":
	{
		["Bureau de Tabac",
			[   
                ["murshun_cigs_cigpack",nil,400],
				["murshun_cigs_matches",nil,50],
				["murshun_cigs_lighter",nil,300]
                
			]
		];
	};

	case "entstore":
	{
		switch(true) do
		{
			case (!license_civ_depannage): {"Vous n'avez pas de license de dépannage !"};
			default
			{
				["Magasin dépanneur",
					[   
						["Toolkit",nil,50],
						["Chemlight_yellow",nil,5]
					]
				];
			};
		};
	};
};