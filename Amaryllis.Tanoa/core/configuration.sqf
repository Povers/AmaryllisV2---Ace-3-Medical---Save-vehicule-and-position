#include <macro.h>
/*
	Master Life Configuration File
	This file is to setup variables for the client, there are still other configuration files in the system

*****************************
****** Backend Variables *****
*****************************
*/
life_query_time = time;
life_action_delay = time;
life_trunk_vehicle = Objnull;
life_session_completed = false;
life_garage_store = false;
life_session_tries = 0;
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_clothing_filter = 0;
life_clothing_uniform = -1;
life_redgull_effect = time;
life_is_processing = false;
life_bail_paid = false;
life_impound_inuse = false;
life_action_inUse = false;
life_spikestrip = ObjNull;
life_respawn_timer = 5; //Scaled in minutes
life_knockout = false;
life_interrupted = false;
life_respawned = false;
life_removeWanted = false;
life_action_gathering = false;
life_HuitreBoat = 1;

life_women = ["Arnott","Oakes_v2","Tyler","Smith_v2","Quereshi_v2","Mason_v2","Oakes","Tyler_scars","Smith","Quereshi","Mason","Mason_rigged","Mason_scars","Mason_camo","ArnottV1","Tyler_head","Oakesv2","SmithV2","QuereshiV2","Masonv2"];


//Persistent Saving
__CONST__(life_save_civ,TRUE); //Save weapons for civs?
__CONST__(life_save_yinv,TRUE); //Save Y-Inventory for players?

//Revive constant variables.
__CONST__(life_revive_cops,TRUE); //Set to false if you don't want cops to be able to revive downed players.
__CONST__(life_revive_fee,250); //Fee for players to pay when revived.

//House Limit
__CONST__(life_houseLimit,5); //Maximum amount of houses a player can buy (TODO: Make Tiered licenses).

//Gang related stuff?
__CONST__(life_gangPrice,0); //Price for creating a gang (They're all persistent so keep it high to avoid 345345345 gangs).
__CONST__(life_gangUpgradeBase,10000); //MASDASDASD
__CONST__(life_gangUpgradeMultipler,2.5); //BLAH

__CONST__(life_enableFatigue,true); //Enable / Disable the ARMA 3 Fatigue System

//Uniform price (0),Hat Price (1),Glasses Price (2),Vest Price (3),Backpack Price (4)
life_clothing_purchase = [-1,-1,-1,-1,-1];
/*
*****************************
****** Weight Variables *****
*****************************
*/
life_maxWeight = 24; //Identifies the max carrying weight (gets adjusted throughout game when wearing different types of clothing).
life_maxWeightT = 24; //Static variable representing the players max carrying weight on start.
life_carryWeight = 0; //Represents the players current inventory weight (MUST START AT 0).

/*
*****************************
****** Life Variables *******
*****************************
*/
life_god = false; // Admin Menu
life_frozen = false; // Admin Menu
life_markers = false; // Admin Menu
life_smartphoneTarget = ObjNull; // Telephone SQL
life_CarPreview = ObjNull; // Shop 3D
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_bank_fail = false;
life_use_atm = true;
life_is_arrested = false;
life_delivery_in_progress = false;
life_action_in_use = false;
life_thirst = 100;
life_hunger = 100;
life_is_alive = false;
__CONST__(life_paycheck_period,5); //Five minutes
life_cash = 0;
__CONST__(life_impound_car,350);
__CONST__(life_impound_boat,250);
__CONST__(life_impound_air,850);
life_istazed = false;
life_my_gang = ObjNull;

life_vehicles = [];
bank_robber = [];
switch (playerSide) do
{
	case west: 
	{
		life_atmcash = 3000; //Starting Bank Money
		life_paycheck = 400; //Paycheck Amount
	};
	case civilian: 
	{
		life_atmcash = 3000; //Starting Bank Money
		life_paycheck = 50; //Paycheck Amount
	};
	
	case independent: {
		life_atmcash = 3000;
		life_paycheck = 400;
	};
};

/*
	Master Array of items?
*/
life_vShop_rentalOnly = ["B_MRAP_01_hmg_F","B_G_Offroad_01_armed_F"];
__CONST__(life_vShop_rentalOnly,life_vShop_rentalOnly); //These vehicles can never be bought and only 'rented'. Used as a balancer & money sink. If you want your server to be chaotic then fine.. Remove it..

life_inv_items = 
[

	"life_inv_turtle",
	
	
	"life_inv_sandwich_ham",
	"life_inv_sandwich_chicken",
	"life_inv_chips",
	"life_inv_curly",


	"life_inv_limonade",
	"life_inv_soda",
	"life_inv_redgull",
	"life_inv_barbar",
	"life_inv_water",
	"life_inv_desperados",
	
	"life_inv_storagesmall",
	"life_inv_storagebig",

	"life_inv_pickaxe",
	"life_inv_axe",
	"life_inv_faux",
	
	"life_inv_biscuit",
	"life_inv_orange_juice",
	"life_inv_apple_juice",
	"life_inv_turtlesoup",
	"life_inv_coffee",
	"life_inv_fuelF",
	"life_inv_fuelE",
	
	"life_inv_tbacon",
	"life_inv_lockpick",
	"life_inv_boltcutter",
	
	"life_inv_spikeStrip",
	"life_inv_goldbar",
	"life_inv_blastingcharge",
	"life_inv_defusekit",
	

	// Virt item SMT
	
	"life_inv_choco",
	"life_inv_barreenergie",
	"life_inv_cassecroute",
	"life_inv_watersmt",
	"life_inv_boissonenergie",
	
	// Virt item Armee
	
	"life_inv_rationarmee",
	"life_inv_redgullarmee",
	"life_inv_waterarmee",
	"life_inv_lockpickarmee",

	// Ressources
	"life_inv_coco",

	"life_inv_banane_take",
	"life_inv_banane_process",

	"life_inv_bois_take",
	"life_inv_bois_process",

	"life_inv_cannabis_take",
	"life_inv_cannabis_process",

	"life_inv_cocaine_take",
	"life_inv_cocaine_process",

	"life_inv_vestige_take",
	"life_inv_vestige_process",

	"life_inv_huitre_take",
	"life_inv_huitre_process",
	"life_inv_huitre_processp",

	"life_inv_charbon_take",
	"life_inv_charbon_process",

	"life_inv_fer_take",
	"life_inv_fer_process",
	"life_inv_fer_processp",

	"life_inv_diamant_take",
	"life_inv_diamant_process",

	"life_inv_orge_take",
	"life_inv_orge_process",

	"life_inv_seigle_take",
	"life_inv_seigle_process",
	
	"life_inv_cacao_take",
	"life_inv_cacao_process",
	"life_inv_cacao_processp",
	
	"life_inv_petrole_take",
	"life_inv_petrole_process",
	"life_inv_gazole"


];


//Setup variable inv vars.
{missionNamespace setVariable[_x,0];} foreach life_inv_items;
//Licenses [license var, civ/cop]
life_licenses =
[
	/*BLUFOR*/
	//["license_cop_air","cop"],
	["license_cop_sniper","cop"],
    ["license_cop_para","cop"],
    //["license_cop_arti","cop"],
	//["license_cop_cg","cop"],

	/* Gouv */

	["license_civ_gouv","civ"],
	
	/*Civil*/
	["license_civ_driver","civ"],
	["license_civ_truck","civ"],
	["license_civ_boat","civ"],
	//["license_civ_air","civ"],
	["license_civ_pilotciv","civ"],
	["license_civ_dive","civ"],
	["license_civ_gun","civ"],
	["license_civ_home","civ"],

	/*Medic*/
	//["license_med_air","med"],
	
	// Rebelles
	["license_civ_gangster","civ"],
	["license_civ_criminel","civ"],

	/* Entreprises */
	["license_civ_depannage","civ"],
	["license_civ_parmurerie","civ"],
	["license_civ_concess_lux","civ"],
	["license_civ_tanoil","civ"],
	["license_civ_ttanoil","civ"],
	["license_civ_monte","civ"],
	["license_civ_tmonte","civ"],
	["license_civ_yunque","civ"],
	["license_civ_tyunque","civ"],
	["license_civ_sosovu","civ"],
	["license_civ_tsosovu","civ"],
	["license_civ_entreprise","civ"],
	["license_civ_ordre","civ"],

	
	//ressources
	//["license_civ_banane","civ"],
	["license_civ_seigle","civ"],
	["license_civ_orge","civ"],
	["license_civ_bois","civ"],
	["license_civ_cacao","civ"],
	["license_civ_charbon","civ"],
	["license_civ_fer","civ"],
	["license_civ_diamant","civ"],
	["license_civ_huitre","civ"],
	["license_civ_petrole","civ"],
	["license_civ_cannabis","civ"],
	["license_civ_cocaine","civ"],
	["license_civ_vestige","civ"]
];

//Setup License Variables
{missionNamespace setVariable[(_x select 0),false];} foreach life_licenses;

life_dp_points = ["dp_1","dp_2","dp_3","dp_4","dp_5","dp_6","dp_7","dp_8","dp_9","dp_10","dp_11","dp_12","dp_13","dp_14","dp_15","dp_15","dp_16","dp_17","dp_18","dp_19","dp_20","dp_21","dp_22","dp_23","dp_24","dp_25"];
//[shortVar,reward]
life_illegal_items = [["heroinp",250],["cocaine",1500],["marijuana",2000],["blastingcharge",10000],["boltcutter",500]];


/*
	Sell / buy arrays
*/
//Liste des éléments vendables aux différents PNJ
sell_array = 
[
	["salema",12],
	["ornate",50],
	["mackerel",20],
	["tuna",90],
	["mullet",30],
	["catshark",35],
	["coco",3],
	["seiglep",1],
	["orgep",1],
	["boisp",4],
	["bananep",4],
	["cacaop",4],
	["charbonp",5],
	["ferp",5],
	["diamantp",8],
	["huitrep",15],
	["gold_ingot",12],
	["petrolep",20],
	["cannabisp",7],
	["cocainep",11],
	["vestigep",28]
];

//Liste des éléments achetables aux différents PNJ
buy_array = 
[
	["chips",10],
	["curly",12],
	["wine",4],
	["beer",4],
	["tea",11],
	["desperados",25],
	["sandwich_chicken",15],
	["sandwich_ham",11],
	["barbar",25],
	["biscuit",11],
	["limonade",12],
	["soda",9],
	["rabbit",13],
	["water",10],
	["donuts",12],
	["coffee",10],
	["tbacon",75],
	["lockpick",500],
	["pickaxe",12],
	["axe",12],
	["faux",12],
	["redgull",15],
	["fuelF",85],
	["fuelE",85],
	["peach",68],
	["spikeStrip",2500],
	["blastingcharge",35000],
	["boltcutter",100000],
	["defusekit",2500],
	["storagesmall",75000],
	["storagebig",150000],

	// Virt item Armee
	["waterarmee",0],
	["rationarmee",0],
	["redgullarmee",0],
	["lockpickarmee",0],

	// Virt item SMT
	["choco",0],
	["barreenergie",0],
	["cassecroute",0],
	["watersmt",0],
	["boissonenergie",0]


];
__CONST__(buy_array,buy_array);

life_weapon_shop_array =
[

];
__CONST__(life_weapon_shop_array,life_weapon_shop_array);

life_garage_prices =
[

			//med t
			["mercedes_sprinter_ambulancia_F",0*0.03],
			["cnp_Defender",0*0.03],
			// med air
			["ama_smt_dragon",0*0.03],
			// dep
			["Jonzie_Tow_Truck",0*0.03],
			
			// civ
			["C_Quadbike_01_F",500*0.03],
			["C_Offroad_01_F",3000*0.03],
			["C_Offroad_02_unarmed_F",3000*0.03],
			["ivory_gti",11500*0.03],
			["Mrshounka_cherokee_noir",12500*0.03],
			["C_SUV_01_F",34000*0.03],
			["Mrshounka_raptor_civ",35500*0.03],
			["Mrshounka_Volkswagen_Touareg_civ",36000*0.03],
			["ivory_suburban",38500*0.03],
			["Mrshounka_Vandura_civ",59500*0.03],
			["shounka_a3_spr_civ",62000*0.03],

			// luxe
            ["Mrshounka_ducati_p",0*0.03],
            ["Mrshounka_yamaha_p",0*0.03],
            ["shounka_buggy",0*0.03],
            ["Mrshounka_evox_noir",0*0.03],
            ["Mrshounka_mustang_civ",0*0.03],
            ["shounka_f430_spider",0*0.03],
			["shounka_limo_civ",0*0.03],
			// truck
			["C_Van_01_transport_F",110000*0.03],
			["C_Van_01_fuel_F",110000*0.03],
			["C_Van_01_box_F",150000*0.03],
			["C_Truck_02_transport_F",109000*0.03],
			["C_Truck_02_fuel_F",250000*0.03],
			["C_Truck_02_covered_F",250000*0.03],
			//ent
			["Jonzie_Box_Truck",300000*0.03],
			["Jonzie_Tanker_Truck",300000*0.03],
			["shounka_a3_renaultmagnum_f",400000*0.03],
			// reb t
			["C_Quadbike_01_F",500*0.03],
			["C_Offroad_01_F",45000*0.03],
			["O_T_LSV_02_unarmed_F",300000*0.03],
			// reb air
			["B_Heli_Light_01_F",500000*0.03],
			// cop
			["C_Offroad_02_unarmed_F",0*0.03],
			["ama_prowler_at",0*0.03],
			["ama_tigr_at",0*0.03],
			["C_SUV_01_F",0*0.03],
			// civ air
			["C_Heli_Light_01_civil_F",350000*0.03],
			["C_Plane_Civil_01_F",225000*0.03],
			["sab_piper",175000*0.03],
			["sab_FAAllegro",175000*0.03],
			// cop air
			["ama_at_mh9",0*0.03],
			["ama_at_orca",0*0.03],
			//civ ship
			["C_Scooter_Transport_01_F",10000*0.03],
			["B_Boat_Transport_01_F",17500*0.03],
			["C_Boat_Civil_01_F",25000*0.03],
			["ama_civ_boat",35000*0.03],
			// cop boat
			["B_Boat_Transport_01_F",0*0.03],
			["I_C_Boat_Transport_02_F",0*0.03],
			["B_SDV_01_F",0*0.03],
			//Gouv
			["shounka_a3_peugeot508_civ_noir",0*0.03]
];
__CONST__(life_garage_prices,life_garage_prices);

life_garage_sell =
[

			//med t
			["mercedes_sprinter_ambulancia_F",0*0.30],
			["cnp_Defender",0*0.30],
			// med air
			["ama_smt_dragon",0*0.30],
			// dep
			["C_Offroad_01_repair_F",10000*0.30],
			["Jonzie_Tow_Truck",30000*0.30],
			["Mrshounka_raptor2_civ",35000*0.30],
			["Jonzie_Forklift",15000*0.30],
			// civ
			["C_Quadbike_01_F",500*0.30],
			["C_Offroad_01_F",3000*0.30],
			["C_Offroad_02_unarmed_F",3000*0.30],
			["ivory_gti",11500*0.30],
			["Mrshounka_cherokee_noir",12500*0.30],
			["C_SUV_01_F",34000*0.30],
			["Mrshounka_raptor_civ",35500*0.30],
			["Mrshounka_Volkswagen_Touareg_civ",36000*0.30],
			["ivory_suburban",38500*0.30],
			["Mrshounka_Vandura_civ",59500*0.30],
			["shounka_a3_spr_civ",62000*0.30],

			// luxe
            ["Mrshounka_ducati_p",0*0.30],
            ["Mrshounka_yamaha_p",0*0.30],
            ["shounka_buggy",0*0.30],
            ["Mrshounka_evox_noir",0*0.30],
            ["Mrshounka_mustang_civ",0*0.30],
            ["shounka_f430_spider",0*0.30],
			["shounka_limo_civ",0*0.30],
			// truck
			["C_Van_01_transport_F",110000*0.30],
			["C_Van_01_fuel_F",110000*0.30],
			["C_Van_01_box_F",150000*0.30],
			["C_Truck_02_transport_F",109000*0.30],
			["C_Truck_02_fuel_F",250000*0.30],
			["C_Truck_02_covered_F",250000*0.30],
			//ent
			["Jonzie_Box_Truck",300000*0.30],
			["Jonzie_Tanker_Truck",300000*0.30],
			["shounka_a3_renaultmagnum_f",400000*0.30],
			// reb t
			["C_Quadbike_01_F",500*0.30],
			["C_Offroad_01_F",45000*0.30],
			["O_T_LSV_02_unarmed_F",300000*0.30],
			// reb air
			["B_Heli_Light_01_F",500000*0.30],
			// cop
			["C_Offroad_02_unarmed_F",0*0.30],
			["ama_prowler_at",0*0.30],
			["ama_tigr_at",0*0.30],
			["C_SUV_01_F",0*0.30],
			// civ air
			["C_Heli_Light_01_civil_F",350000*0.30],
			["C_Plane_Civil_01_F",225000*0.30],
			["sab_piper",175000*0.30],
			["sab_FAAllegro",175000*0.30],
			// cop air
			["ama_at_mh9",0*0.30],
			["ama_at_orca",0*0.30],
			//civ ship
			["C_Scooter_Transport_01_F",10000*0.30],
			["B_Boat_Transport_01_F",17500*0.30],
			["C_Boat_Civil_01_F",25000*0.30],
			["ama_civ_boat",35000*0.30],
			// cop boat
			["B_Boat_Transport_01_F",0*0.30],
			["I_C_Boat_Transport_02_F",0*0.30],
			["B_SDV_01_F",0*0.30],
			//Gouv
			["shounka_a3_peugeot508_civ_noir",0*0.30]
];
__CONST__(life_garage_sell,life_garage_sell);

life_assur_prices =
[

];
__CONST__(life_assur_prices,life_assur_prices);

life_four_prices =
[

			//med t
			["mercedes_sprinter_ambulancia_F",0*0.10],
			["cnp_Defender",0*0.10],
			// med air
			["ama_smt_dragon",0*0.10],
			// dep
			["C_Offroad_01_repair_F",10000*0.10],
			["Jonzie_Tow_Truck",30000*0.10],
			["Mrshounka_raptor2_civ",35000*0.10],
			["Jonzie_Forklift",15000*0.10],
			// civ
			["C_Quadbike_01_F",500*0.10],
			["C_Offroad_01_F",3000*0.10],
			["C_Offroad_02_unarmed_F",3000*0.10],
			["ivory_gti",11500*0.10],
			["Mrshounka_cherokee_noir",12500*0.10],
			["C_SUV_01_F",34000*0.10],
			["Mrshounka_raptor_civ",35500*0.10],
			["Mrshounka_Volkswagen_Touareg_civ",36000*0.10],
			["ivory_suburban",38500*0.10],
			["Mrshounka_Vandura_civ",59500*0.10],
			["shounka_a3_spr_civ",62000*0.10],

			// luxe
            ["Mrshounka_ducati_p",0*0.10],
            ["Mrshounka_yamaha_p",0*0.10],
            ["shounka_buggy",0*0.10],
            ["Mrshounka_evox_noir",0*0.10],
            ["Mrshounka_mustang_civ",0*0.10],
            ["shounka_f430_spider",0*0.10],
			["shounka_limo_civ",0*0.10],
			// truck
			["C_Van_01_transport_F",110000*0.10],
			["C_Van_01_fuel_F",110000*0.10],
			["C_Van_01_box_F",150000*0.10],
			["C_Truck_02_transport_F",109000*0.10],
			["C_Truck_02_fuel_F",250000*0.10],
			["C_Truck_02_covered_F",250000*0.10],
			//ent
			["Jonzie_Box_Truck",300000*0.10],
			["Jonzie_Tanker_Truck",300000*0.10],
			["shounka_a3_renaultmagnum_f",400000*0.10],
			// reb t
			["C_Quadbike_01_F",500*0.10],
			["C_Offroad_01_F",45000*0.10],
			["O_T_LSV_02_unarmed_F",300000*0.10],
			// reb air
			["B_Heli_Light_01_F",500000*0.10],
			// cop
			["C_Offroad_02_unarmed_F",0*0.10],
			["ama_prowler_at",0*0.10],
			["ama_tigr_at",0*0.10],
			["C_SUV_01_F",0*0.10],
			// civ air
			["C_Heli_Light_01_civil_F",350000*0.10],
			["C_Plane_Civil_01_F",225000*0.10],
			["sab_piper",175000*0.10],
			["sab_FAAllegro",175000*0.10],
			// cop air
			["ama_at_mh9",0*0.10],
			["ama_at_orca",0*0.10],
			//civ ship
			["C_Scooter_Transport_01_F",10000*0.10],
			["B_Boat_Transport_01_F",17500*0.10],
			["C_Boat_Civil_01_F",25000*0.10],
			["ama_civ_boat",35000*0.10],
			// cop boat
			["B_Boat_Transport_01_F",0*0.10],
			["I_C_Boat_Transport_02_F",0*0.10],
			["B_SDV_01_F",0*0.10],
			//Gouv
			["shounka_a3_peugeot508_civ_noir",0*0.10]
];
__CONST__(life_four_prices,life_four_prices);