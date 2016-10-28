/*
	File: fn_varHandle.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master handler for getting a variables name, short name, etc.
*/
private["_var","_mode"];
_var = [_this,0,"",[""]] call BIS_fnc_param;
_mode = [_this,1,-1,[0]] call BIS_fnc_param;
if(_var == "" OR _mode == -1) exitWith {""};

switch (_mode) do
{
	case 0:
	{
		switch (_var) do
		{
			case "water": {"life_inv_water"};
			case "chips": {"life_inv_chips"};
			case "bread": {"life_inv_bread"};
			case "tea": {"life_inv_tea"};
			case "teat": {"life_inv_teat"};
			case "curly": {"life_inv_curly"};
			case "desperados": {"life_inv_desperados"};
			case "barbar": {"life_inv_barbar"};
			case "sandwich_ham": {"life_inv_sandwich_ham"};
			case "sandwich_chicken": {"life_inv_sandwich_chicken"};
			case "limonade": {"life_inv_limonade"};
			case "biscuit": {"life_inv_biscuit"};
			case "soda": {"life_inv_soda"};
			case "orange_juice": {"life_inv_orange_juice"};
			case "apple_juice": {"life_inv_apple_juice"};
			case "rabbit": {"life_inv_rabbit"};
			case "cigarette": {"life_inv_cigarette"};
			case "salema": {"life_inv_salema"};
			case "ornate": {"life_inv_ornate"};
			case "mackerel": {"life_inv_mackerel"};
			case "tuna": {"life_inv_tuna"};
			case "mullet": {"life_inv_mullet"};
			case "catshark": {"life_inv_catshark"};
			case "turtle": {"life_inv_turtle"};
			case "fishing": {"life_inv_fishingpoles"};
			case "coffee": {"life_inv_coffee"};
			case "turtlesoup": {"life_inv_turtlesoup"};
			case "donuts": {"life_inv_donuts"};
			case "fuelE": {"life_inv_fuelE"};
			case "fuelF": {"life_inv_fuelF"};
			case "money": {"life_cash"};
			case "pickaxe": {"life_inv_pickaxe"};
			case "axe": {"life_inv_axe"};
			case "faux": {"life_inv_faux"};
			case "tbacon": {"life_inv_tbacon"};
			case "lockpick": {"life_inv_lockpick"};
			case "redgull": {"life_inv_redgull"};
			case "peach": {"life_inv_peach"};
			case "spikeStrip": {"life_inv_spikeStrip"};
			case "goldbar": {"life_inv_goldbar"};
			case "blastingcharge": {"life_inv_blastingcharge"};
			case "boltcutter": {"life_inv_boltcutter"};
			case "defusekit": {"life_inv_defusekit"};
			case "storagesmall": {"life_inv_storagesmall"};
			case "storagebig": {"life_inv_storagebig"};

			
			/* Virt item Armée */
			case "waterarmee": {"life_inv_waterarmee"};
			case "rationarmee": {"life_inv_rationarmee"};
			case "redgullarmee": {"life_inv_redgullarmee"};
			case "lockpickarmee": {"life_inv_lockpickarmee"};

			/* Virt item SMT */
			case "choco": {"life_inv_choco"};
			case "barreenergie": {"life_inv_barreenergie"};
			case "cassecroute": {"life_inv_cassecroute"};
			case "watersmt": {"life_inv_watersmt"};
			case "boissonenergie": {"life_inv_boissonenergie"};

			
			// Ressources
			case "coco": {"life_inv_coco"};
			case "seigle": {"life_inv_seigle_take"};
			case "seiglep": {"life_inv_seigle_process"};
			case "orge": {"life_inv_orge_take"};
			case "orgep": {"life_inv_orge_process"};
			case "bois": {"life_inv_bois_take"};
			case "boisp": {"life_inv_bois_process"};
			case "banane": {"life_inv_banane_take"};
			case "bananep": {"life_inv_banane_process"};
			case "cacao": {"life_inv_cacao_take"};
			case "cacaop": {"life_inv_cacao_process"};
			case "cacaopp": {"life_inv_cacao_processp"};
			case "charbon": {"life_inv_charbon_take"};
			case "charbonp": {"life_inv_charbon_process"};
			case "fer": {"life_inv_fer_take"};
			case "ferp": {"life_inv_fer_process"};
			case "ferpp": {"life_inv_fer_processp"};
			case "diamant": {"life_inv_diamant_take"};
			case "diamantp": {"life_inv_diamant_process"};
			case "huitre": {"life_inv_huitre_take"};
			case "huitrep": {"life_inv_huitre_process"};
			case "huitrepp": {"life_inv_huitre_processp"};
			case "petrole": {"life_inv_petrole_take"};
			case "petrolep": {"life_inv_petrole_process"};
			case "gazole": {"life_inv_gazole"};
			case "cannabis": {"life_inv_cannabis_take"};
			case "cannabisp": {"life_inv_cannabis_process"};
			case "cocaine": {"life_inv_cocaine_take"};
			case "cocainep": {"life_inv_cocaine_process"};
			case "vestige": {"life_inv_vestige_take"};
			case "vestigep": {"life_inv_vestige_process"};

		};
	};
	
	case 1:
	{
		switch (_var) do
		{
			case "life_inv_water": {"water"};
			case "life_inv_chips": {"chips"};
			case "life_inv_curly": {"curly"};
			case "life_inv_bread": {"bread"};
			case "life_inv_tea": {"tea"};
			case "life_inv_teat": {"teat"};
			case "life_inv_biscuit": {"biscuit"};
			case "life_inv_soda": {"soda"};
			case "life_inv_desperados": {"desperados"};
			case "life_inv_barbar": {"barbar"};
			case "life_inv_limonade": {"limonade"};
			case "life_inv_sandwich_ham": {"sandwich_ham"};
			case "life_inv_sandwich_chicken": {"sandwich_chicken"};
			case "life_inv_orange_juice": {"orange_juice"};
			case "life_inv_apple_juice": {"apple_juice"};
			case "life_inv_rabbit": {"rabbit"};
			case "life_inv_salema": {"salema"};
			case "life_inv_ornate": {"ornate"};
			case "life_inv_mackerel": {"mackerel"};
			case "life_inv_tuna": {"tuna"};
			case "life_inv_mullet": {"mullet"};
			case "life_inv_catshark": {"catshark"};
			case "life_inv_turtle": {"turtle"};
			case "life_inv_fishingpoles": {"fishing"};
			case "life_inv_coffee": {"coffee"};
			case "life_inv_turtlesoup": {"turtlesoup"};
			case "life_inv_donuts": {"donuts"};
			case "life_inv_fuelE": {"fuelE"};
			case "life_inv_fuelF": {"fuelF"};
			case "life_cash": {"money"};
			case "life_inv_pickaxe": {"pickaxe"};
			case "life_inv_axe": {"axe"};
			case "life_inv_faux": {"faux"};
			case "life_inv_redgull": {"redgull"};
			case "life_inv_lockpick": {"lockpick"};
			case "life_inv_tbacon": {"tbacon"};
			case "life_inv_spikeStrip": {"spikeStrip"};
			case "life_inv_goldbar": {"goldbar"};
			case "life_inv_blastingcharge": {"blastingcharge"};
			case "life_inv_boltcutter": {"boltcutter"};
			case "life_inv_defusekit": {"defusekit"};
			case "life_inv_storagesmall": {"storagesmall"};
			case "life_inv_storagebig": {"storagebig"};


			/* Virt item Armée */
			case "life_inv_waterarmee": {"waterarmee"};
			case "life_inv_rationarmee": {"rationarmee"};
			case "life_inv_redgullarmee": {"redgullarmee"};
			case "life_inv_lockpickarmee": {"lockpickarmee"};

			/* Virt item SMT */
			case "life_inv_choco": {"choco"};
			case "life_inv_barreenergie": {"barreenergie"};
			case "life_inv_cassecroute": {"cassecroute"};
			case "life_inv_watersmt": {"watersmt"};
			case "life_inv_boissonenergie": {"boissonenergie"};

		
			// Ressources
			case "life_inv_coco": {"coco"};
			case "life_inv_seigle_take": {"seigle"};
			case "life_inv_seigle_process": {"seiglep"};
			case "life_inv_orge_take": {"orge"};
			case "life_inv_orge_process": {"orgep"};
			case "life_inv_bois_take": {"bois"};
			case "life_inv_bois_process": {"boisp"};
			case "life_inv_banane_take": {"banane"};
			case "life_inv_banane_process": {"bananep"};
			case "life_inv_cacao_take": {"cacao"};
			case "life_inv_cacao_process": {"cacaop"};
			case "life_inv_cacao_processp": {"cacaopp"};
			case "life_inv_charbon_take": {"charbon"};
			case "life_inv_charbon_process": {"charbonp"};
			case "life_inv_fer_take": {"fer"};
			case "life_inv_fer_process": {"ferp"};
			case "life_inv_fer_processp": {"ferpp"};
			case "life_inv_diamant_take": {"diamant"};
			case "life_inv_diamant_process": {"diamantp"};
			case "life_inv_huitre_take": {"huitre"};
			case "life_inv_huitre_process": {"huitrep"};
			case "life_inv_huitre_processp": {"huitrepp"};
			case "life_inv_petrole_take": {"petrole"};
			case "life_inv_petrole_process": {"petrolep"};
			case "life_inv_gazole": {"gazole"};
			case "life_inv_cannabis_take": {"cannabis"};
			case "life_inv_cannabis_process": {"cannabisp"};
			case "life_inv_cocaine_take": {"cocaine"};
			case "life_inv_cocaine_process": {"cocainep"};
			case "life_inv_vestige_take": {"vestige"};
			case "life_inv_vestige_process": {"vestigep"};
		};
	};
};
