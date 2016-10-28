/*
	File: fn_itemWeight.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gets the items weight and returns it.
*/
private["_item"];
_item = [_this,0,"",[""]] call BIS_fnc_param;
if(_item == "") exitWith {};

switch (_item) do
{

	case "water": {1};
	case "chips": {1};
	case "bread": {2};
	case "desperados": {1};
	case "barbar": {1};
	case "curly": {1};
	case "sandwich_ham": {2};
	case "sandwich_chicken": {2};
	case "curly": {1};
	case "limonade": {1};
	case "biscuit": {1};
	case "soda": {1};
	case "orange_juice": {1};
	case "apple_juice": {1};
	case "rabbit": {1};
	case "salema": {2};
	case "ornate": {2};
	case "mackerel": {4};
	case "tuna": {6};
	case "mullet": {4};
	case "catshark": {6};
	case "turtle": {6};
	case "fishing": {2};
	case "turtlesoup": {2};
	case "donuts": {1};
	case "coffee": {1};
	case "fuelE": {2};
	case "fuelF": {5};
	case "money": {0};
	case "pickaxe": {2};
	case "axe": {2};
	case "faux": {2};
	case "spikeStrip": {15};
	case "goldbar": {12};
	case "blastingcharge": {15};
	case "boltcutter": {5};
	case "defusekit": {2};
	case "lockpick": {1};
	case "storagesmall": {5};
	case "storagebig": {10};

	/* Virt item Armée */
	case "waterarmee": {1};
	case "rationarmee": {1};
	case "redgullarmee": {1};
	case "lockpickarmee": {1};

	/* Virt item SMT */
	case "choco": {1};
	case "barreenergie": {1};
	case "cassecroute": {1};
	case "watersmt": {1};
	case "boissonenergie": {1};


	/* Ressources */
	case "coco": {1};
	case "seigle": {2};	
	case "seiglep": {1};
	case "orge": {2};
	case "orgep": {1};
	case "bois": {2};
	case "boisp": {1};
	case "banane": {1};
	case "bananep": {1};
	case "cacao": {3};
	case "cacaop": {2};
	case "cacaopp": {2};
	case "charbon": {3};
	case "charbonp": {2};
	case "fer": {3};
	case "ferp": {2};
	case "ferpp": {2};
	case "diamant": {4};
	case "diamantp": {2};
	case "huitre": {4};
	case "huitrep": {2};
	case "huitrepp": {2};
	case "petrole": {4};
	case "petrolep": {2};
	case "gazole": {2};
	case "cannabis": {4};
	case "cannabisp": {2};
	case "cocaine": {4};
	case "cocainep": {2};
	case "vestige": {4};
	case "vestigep": {2};

	default {1};
};
