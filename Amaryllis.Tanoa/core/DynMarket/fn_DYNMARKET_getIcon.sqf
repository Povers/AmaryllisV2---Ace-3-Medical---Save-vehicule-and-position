/*
##################### DYNAMIC MARKET SCRIPT #####################
### AUTHOR: RYAN TT.                                          ###
### STEAM: www.steamcommunity.com/id/ryanthett                ###
###                                                           ###
### DISCLAIMER: THIS SCRIPT CAN BE USED ON EVERY SERVER ONLY  ###
###             WITH THIS HEADER / NOTIFICATION               ###
#################################################################
*/

_itemName = [_this,0,""] call BIS_fnc_param;

_iconPath = "";

	switch (_itemName) do {
	case "coco": {_iconPath = "ama_items\icons\items\noix_coco.paa";};
	case "seiglep": {_iconPath = "ama_items\icons\items\farine_seigle.paa";};
	case "orgep": {_iconPath = "ama_items\icons\items\orge.paa";};
	case "boisp": {_iconPath = "ama_items\icons\items\bois.paa";};
	case "bananep": {_iconPath = "ama_items\icons\items\alcool_banane.paa";};
	case "cacaop": {_iconPath = "ama_items\icons\items\poudre_cacao.paa";};
	case "cacaopp": {_iconPath = "ama_items\icons\items\chocolat.paa";};
	case "charbonp": {_iconPath = "ama_items\icons\items\lingot_charbon.paa";};
	case "ferp": {_iconPath = "ama_items\icons\items\lingot_fer.paa";};
	case "ferpp": {_iconPath = "ama_items\icons\items\acier.paa";};
	case "diamantp": {_iconPath = "ama_items\icons\items\diamant_taille.paa";};
	case "petrolep": {_iconPath = "ama_items\icons\items\petrole_raffine.paa";};
	case "gazole": {_iconPath = "ama_items\icons\items\gazole.paa";};
	case "huitrep": {_iconPath = "ama_items\icons\items\huitre_nettoyee.paa";};
	case "huitrepp": {_iconPath = "ama_items\icons\items\perle.paa";};
	case "cannabisp": {_iconPath = "ama_items\icons\items\cannabis.paa";};
	case "cocainep": {_iconPath = "ama_items\icons\items\cocaine.paa";};
	case "vestigep": {_iconPath = "ama_items\icons\items\relique_antique.paa";};

	case default {_iconPath = "";};
};

_iconPath;