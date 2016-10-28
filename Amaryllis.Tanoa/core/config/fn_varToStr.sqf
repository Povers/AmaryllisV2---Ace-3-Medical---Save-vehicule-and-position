/*
	File: fn_varToStr.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Takes the long-name (variable) and returns a display name for our
	virtual item.
*/
private["_var"];
_var = [_this,0,"",[""]] call BIS_fnc_param;
if(_var == "") exitWith {""};

switch (_var) do
{
	//Virtual Inventory Items
	case "life_inv_rabbit": {(localize "STR_Item_RabbitMeat")};
	case "life_inv_salema": {(localize "STR_Item_SalemaMeat")};
	case "life_inv_ornate": {(localize "STR_Item_OrnateMeat")};
	case "life_inv_mackerel": {(localize "STR_Item_MackerelMeat")};
	case "life_inv_tuna": {(localize "STR_Item_TunaMeat")};
	case "life_inv_mullet": {(localize "STR_Item_MulletMeat")};
	case "life_inv_catshark": {(localize "STR_Item_CatSharkMeat")};
	case "life_inv_turtle": {(localize "STR_Item_TurtleMeat")};
	case "life_inv_fishingpoles": {(localize "STR_Item_FishingPole")};
	case "life_inv_water": {"Bouteille d'eau"};
	case "life_inv_chips": {"Paquet de Chips"};
	case "life_inv_limonade": {"Limonade"};
	case "life_inv_tea": {"Feuille de Thé"};
	case "life_inv_teat": {"Thé Bachkirov"};
	case "life_inv_desperados": {"Desperados"};
	case "life_inv_barbar": {"Bière Barbar"};
	case "life_inv_bread": {"Baguette de pain"};
	case "life_inv_curly": {"Curly"};
	case "life_inv_sandwich_ham": {"Sandwich au jambon"};
	case "life_inv_sandwich_chicken": {"Sandwich au poulet"};
	case "life_inv_soda": {"Soda"};
	case "life_inv_biscuit": {"Biscuit sec"};
	//case "life_inv_orange_juice": {"Jus d'orange"};
	case "life_inv_apple_juice": {"Jus de pomme"};
	case "life_inv_coffee": {(localize "STR_Item_Coffee")};
	case "life_inv_turtlesoup": {(localize "STR_Item_TurtleSoup")};
	case "life_inv_donuts": {(localize "STR_Item_Donuts")};
	case "life_inv_fuelE": {"Jerrican vide"};
	case "life_inv_fuelF": {"Jerrican plein"};
	case "life_inv_pickaxe": {"Pioche"};
	case "life_inv_axe": {"Hache"};
	case "life_inv_faux": {"Faux"};
	case "life_inv_tbacon": {(localize "STR_Item_TBacon")};
	case "life_inv_redgull": {"RedBull"};
	case "life_inv_lockpick": {(localize "STR_Item_Lockpick")};
	case "life_inv_spikeStrip": {(localize "STR_Item_SpikeStrip")};
	case "life_inv_goldbar": {(localize "STR_Item_GoldBar")};
	case "life_inv_blastingcharge": {(localize "STR_Item_BCharge")};
	case "life_inv_boltcutter": {(localize "STR_Item_BCutter")};
	case "life_inv_defusekit": {(localize "STR_Item_DefuseKit")};
	case "life_inv_storagesmall": {"Petit coffre"};
	case "life_inv_storagebig": {"Grand coffre"};

	/* Virt item Armée */
	case "life_inv_waterarmee": {"[AT] Bouteile d'eau"};
	case "life_inv_rationarmee": {"[AT] Ration de nourriture"};
	case "life_inv_redgullarmee": {"[AT] Boisson énergisante "};
	case "life_inv_lockpickarmee": {"[AT] Outil de crochetage"};

	/* Virt item SMT */
	case "life_inv_choco": {"[SMT] Barre chocolaté"};
	case "life_inv_barreenergie": {"[SMT] Barre énergisante"};
	case "life_inv_cassecroute": {"[SMT] Casse-croûte"};
	case "life_inv_watersmt": {"[SMT] Bouteille d’eau"};
	case "life_inv_boissonenergie": {"[SMT] Boisson énergisante"};
	
	//ressources
	
	case "life_inv_coco": {"Noix de coco"};
	case "life_inv_seigle_take": {"Seigle"};
	case "life_inv_seigle_process": {"Farine de seigle"};
	case "life_inv_orge_take": {"Orge"};
	case "life_inv_orge_process": {"Farine d’orge"};
	case "life_inv_bois_take": {"Bois"};
	case "life_inv_bois_process": {"Planche de Bois"};
	case "life_inv_banane_take": {"Banane"};
	case "life_inv_banane_process": {"Alcool de banane"};
	case "life_inv_cacao_take": {"Fève de cacao"};
	case "life_inv_cacao_process": {"Poudre de cacao"};
	case "life_inv_cacao_processp": {"Chocolat"};
	case "life_inv_charbon_take": {"Minerai de charbon"};
	case "life_inv_charbon_process": {"Lingot de charbon"};
	case "life_inv_fer_take": {"Minerai de fer"};
	case "life_inv_fer_process": {"Lingot de fer"};
	case "life_inv_fer_processp": {"Acier"};
	case "life_inv_diamant_take": {"Minerai de diamant"};
	case "life_inv_diamant_process": {"Diamant taillé"};
	case "life_inv_huitre_take": {"Huître sale"};
	case "life_inv_huitre_process": {"Huître nettoyée"};
	case "life_inv_huitre_processp": {"Perle de culture"};
	case "life_inv_petrole_take": {"Pétrole Brut"};
	case "life_inv_petrole_process": {"Pétrole raffiné"};
	case "life_inv_gazole": {"Gazole"};
	case "life_inv_cannabis_take": {"Cannabis"};
	case "life_inv_cannabis_process": {"Marijuana"};
	case "life_inv_cocaine_take": {"Feuille de cocaïne"};
	case "life_inv_cocaine_process": {"Cocaïne"};
	case "life_inv_vestige_take": {"Vestige"};
	case "life_inv_vestige_process": {"Relique antique"};
	
	
	//License Block
	case "license_civ_driver": {"Permis de conduire"};
	case "license_civ_boat":  {"Permis Bateau"};
	case "license_civ_air": {"Permis de pilote civil"};
	case "license_cop_para": {"Licence Para"};
	case "license_cop_sniper": {"Licence Sniper"};
	case "license_cop_arti": {"Licence Artilleur"};
	case "license_civ_gun": {"Port d'arme"};
	case "license_civ_dive":{"Permis de Plongée"};
	case "license_cop_air": {"Permis de pilote militaire"};
	case "license_cop_cg": {"Permis Bateau"};
	case "license_civ_truck": {"Permis Camion"};
	case "license_med_air": {"Brevet de pilote secouriste"};
	case "license_civ_home": {"Permis d'habitation"};
	case "license_civ_gouv": {"Membre du gouvernement"};
	case "license_civ_pilotciv": {"Permis de pilote civil"};

	//License traitement ressources

	case "license_civ_seigle": {"Traitement - Seigle"};																		
	case "license_civ_orge": {"Traitement - Orge"};
	case "license_civ_bois": {"Traitement - Bois"};																
	case "license_civ_banane": {"Esclave"};																	
	case "license_civ_cacao":  {"Traitement - Cacao"};															
	case "license_civ_charbon": {"Traitement - Charbon"};																			
	case "license_civ_fer":{"Traitement - Fer"};																	
	case "license_civ_diamant":{"Traitement - Diamant"};
	case "license_civ_huitre":{"Traitement - Huitre"};																																			
	case "license_civ_petrole":{"Traitement - Pétrole"};
	case "license_civ_cannabis": {"Traitement - Cannabis"};																
	case "license_civ_cocaine":  {"Traitement - Cocaine"};														
	case "license_civ_vestige": {"Traitement - Vestige"};
		
	/* Autres */
		
	case "license_civ_depannage": {"Entreprise  -  Dépannage"};

	case "license_civ_criminel": {"Criminel"};	
	case "license_civ_gangster": {"Gangster"};
	case "license_civ_ordre": {"Membre de l'Ordre"};
	case "license_civ_parmurerie": {"Armurier privée"};
	case "license_civ_concess_lux": {"Concessionnaire de Luxe"};
	case "license_civ_entreprise": {"Membre d'une entreprise"};
	case "license_civ_tanoil": {"Membre de Brietchmann Corps"};
	case "license_civ_ttanoil": {"Traitement - Brietchmann Corps"};
	case "license_civ_monte": {"Membre de Mont’Cioccolato"};
	case "license_civ_tmonte": {"Traitement - Mont’Cioccolato"};
	case "license_civ_yunque": {"Membre de Yunque"};
	case "license_civ_tyunque": {"Traitement - Yunque"};
	case "license_civ_sosovu": {"Membre du Bassin de Sosovu"};
	case "license_civ_tsosovu": {"Traitement - Bassin de Sosovu"};

};
