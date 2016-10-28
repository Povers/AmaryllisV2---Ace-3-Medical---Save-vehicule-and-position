/*	File: fn_itemIcon.sqf
    Description:	Return the icon for each altis life item.*/


    private["_var"];
    _var = [_this,0,"",[""]] call BIS_fnc_param;
    if(_var == "") exitWith {""};switch (_var) do{	
    //Virtual Inventory Items
    
    
    case "life_inv_sandwich_ham": {("ama_items\icons\items\sandwich_jambon.paa")};
    case "life_inv_sandwich_chicken": {("ama_items\icons\items\sandwich_poulet.paa")};
    case "life_inv_chips": {("ama_items\icons\items\paquet_chips.paa")};
    case "life_inv_curly": {("ama_items\icons\items\curly.paa")};

    case "life_inv_limonade": {("ama_items\icons\items\limonade.paa")};    
    case "life_inv_soda": {("ama_items\icons\items\soda.paa")};
    case "life_inv_redgull": {("ama_items\icons\items\redbull.paa")};
    case "life_inv_barbar": {("ama_items\icons\items\biere_barbar.paa")};    
    case "life_inv_water": {("ama_items\icons\items\bouteille_eau.paa")}; 
    case "life_inv_desperados": {("ama_items\icons\items\desperados.paa")};

    case "life_inv_storagesmall": {("ama_items\icons\items\petit_coffre.paa")};
    case "life_inv_storagebig": {("ama_items\icons\items\grand_coffre.paa")};
    
    case "life_inv_pickaxe": {("ama_items\icons\items\pioche.paa")};
    case "life_inv_faux": {("ama_items\icons\items\faux.paa")};
    case "life_inv_axe": {("ama_items\icons\items\hache.paa")};
    
    case "life_inv_fuelF": {("ama_items\icons\items\jerrican.paa")};
    case "life_inv_fuelE": {("ama_items\icons\items\jerricanbis.paa")};

    


    case "life_inv_lockpick": {("ama_items\icons\items\outil_crochetage.paa")};
    case "life_inv_boltcutter": {("ama_items\icons\items\outil_serrurier.paa")};

    
    case "life_inv_choco": {("ama_items\icons\items\barre_chocolate.paa")};
    case "life_inv_barreenergie": {("ama_items\icons\items\barre_energisante.paa")};
    case "life_inv_cassecroute": {("ama_items\icons\items\casse_croute.paa")};
    case "life_inv_watersmt": {("ama_items\icons\items\bouteille_eau.paa")};
    case "life_inv_boissonenergie": {("ama_items\icons\items\boisson_energisante.paa")};





    case "life_inv_rationarmee": {("ama_items\icons\items\ration_nourriture.paa")};
    case "life_inv_redgullarmee": {("ama_items\icons\items\boisson_energisanteb.paa")};
    case "life_inv_waterarmee": {("ama_items\icons\items\bouteille_eaub.paa")};
    case "life_inv_lockpickarmee": {("ama_items\icons\items\outil_crochetageb.paa")};
    

    


    // Ressources 
    
    case "life_inv_coco": {("ama_items\icons\items\noix_coco.paa")};

    case "life_inv_banane_take": {("ama_items\icons\items\banane.paa")};
    case "life_inv_banane_process": {("ama_items\icons\items\alcool_banane.paa")};

    case "life_inv_bois_take": {("ama_items\icons\items\bois.paa")};
    case "life_inv_bois_process": {("ama_items\icons\items\planche_bois.paa")};

    case "life_inv_cannabis_take": {("ama_items\icons\items\marijuana.paa")};
    case "life_inv_cannabis_process": {("ama_items\icons\items\cannabis.paa")};

    case "life_inv_cocaine_take": {("ama_items\icons\items\feuille_cocaine.paa")};
    case "life_inv_cocaine_process": {("ama_items\icons\items\cocaine.paa")};

    case "life_inv_vestige_take": {("ama_items\icons\items\vestige.paa")};
    case "life_inv_vestige_process": {("ama_items\icons\items\relique_antique.paa")};
    
    case "life_inv_huitre_take": {("ama_items\icons\items\huitre_sale.paa")};
    case "life_inv_huitre_process": {("ama_items\icons\items\huitre_nettoyee.paa")};
    case "life_inv_huitre_processp": {("ama_items\icons\items\perle.paa")};
    
    case "life_inv_charbon_take": {("ama_items\icons\items\minerai_charbon.paa")};
    case "life_inv_charbon_process": {("ama_items\icons\items\lingot_charbon.paa")};

    case "life_inv_fer_take": {("ama_items\icons\items\minerai_fer.paa")};
    case "life_inv_fer_process": {("ama_items\icons\items\lingot_fer.paa")};
    case "life_inv_fer_processp": {("ama_items\icons\items\acier.paa")};
    
    case "life_inv_diamant_take": {("ama_items\icons\items\diamant_brut.paa")};
    case "life_inv_diamant_process": {("ama_items\icons\items\diamant_taille.paa")};

    case "life_inv_orge_take": {("ama_items\icons\items\orge.paa")};
    case "life_inv_orge_process": {("ama_items\icons\items\farine_orge.paa")};
    
    case "life_inv_seigle_take": {("ama_items\icons\items\seigle.paa")};
    case "life_inv_seigle_process": {("ama_items\icons\items\farine_seigle.paa")};
    
    case "life_inv_cacao_take": {("ama_items\icons\items\feve_cacao.paa")};
    case "life_inv_cacao_process": {("ama_items\icons\items\poudre_cacao.paa")};
    case "life_inv_cacao_processp": {("ama_items\icons\items\chocolat.paa")};
    
    case "life_inv_petrole_take": {("ama_items\icons\items\petrole_brut.paa")};
    case "life_inv_petrole_process": {("ama_items\icons\items\petrole_raffine.paa")};
    case "life_inv_gazole": {("ama_items\icons\items\gazole.paa")};
    
    };