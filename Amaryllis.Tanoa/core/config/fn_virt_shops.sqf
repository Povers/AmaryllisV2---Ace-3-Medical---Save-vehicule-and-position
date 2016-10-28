/*
	File: fn_virt_shops.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Config for virtual shops.
*/                


private["_shop"];
_shop = _this select 0;

switch (_shop) do
{
	case "market": {["Marché De Tanoa", ["desperados","barbar","coco","sandwich_ham","sandwich_chicken","chips","soda","limonade","curly","redgull","pickaxe","axe","faux","fuelF","storagesmall","storagebig"]]};
	case "market_ent": {["Marché d'entreprise", ["coffee","sandwich_ham","sandwich_chicken","chips","soda","limonade","curly","orange_juice","apple_juice","apple","redgull","fuelF"]]};
	case "rebel": {["Marché noir", ["sandwich ham","sandwich chicken","chips","soda","limonade","curly","water","redgull","lockpick","pickaxe","fuelF","boltcutter"]]};   
	case "seigle": {["Acheteur de Seigle",["seiglep"]]};
	case "orge": {["Acheteur d'Orge",["orgep"]]};
	case "bois": {["Acheteur de Bois ",["boisp"]]};
	case "banane": {["Acheteur de Banane",["bananep"]]};
	case "cacao": {["Acheteur de Cacao",["cacaop"]]};
	case "charbon": {["Acheteur de Charbon",["charbonp"]]};
	case "fer": {["Acheteur de Fer",["ferp"]]};
	case "diamant": {["Acheteur de Diamant",["diamantp"]]};
	case "huitre": {["Acheteur d'Huitre ",["huitrep"]]};
	case "petrole": {["Acheteur de Pétrole ",["petrolep"]]};
	case "gazole": {["Acheteur de Gazole ",["gazole"]]};
	case "monte": {["Acheteur de Chocolat ",["cacaopp"]]};
	case "yunque": {["Acheteur d'Acier ",["ferpp"]]};
	case "sosovu": {["Acheteur de Perle ",["huitrepp"]]};
	case "dealer": {["Exportateur",["cannabisp","vestigep","cocainep"]]};
	case "copmarket": {["Marché de l'armée",["waterarmee","rationarmee","redgullarmee","lockpickarmee","fuelF"]]};
	case "medicmarket": {["Marché SMT",["choco","barreenergie","cassecroute","watersmt","boissonenergie","fuelF"]]};

	};
