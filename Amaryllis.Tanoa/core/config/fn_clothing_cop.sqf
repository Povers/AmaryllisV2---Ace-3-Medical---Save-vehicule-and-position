#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Vestiaire"];

_ret = [];
switch (_filter) do
{
	//Tenue
	case 0:
	{
		 // Soldat
		
		_ret pushBack ["dkPletM84Uniform_H","Tenue longue",0];
		
		
        // Soldat 1er Classe
        if(__GETC__(life_coplevel) > 1) then
		{
            _ret pushBack ["dkPletM84Uniform_H_RS","Tenue courte",0];
		    _ret pushBack ["U_I_Wetsuit","Tenue de plongée",0];
		    _ret pushBack ["U_I_C_Soldier_Bandit_3_F","Tenue civil 1",0];
	        _ret pushBack ["U_I_C_Soldier_Bandit_2_F","Tenue civil 2",0];
		    _ret pushBack ["U_I_C_Soldier_Bandit_1_F","Tenue civil 3",0];
		};
		
        // Caporal
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret pushBack ["dkPletM84Uniform_H_TS","Tenue d'entrainement",0];
		};
	};
	
	//Chapeau
	case 1:
	{
        // Soldat
		
		_ret pushBack ["","Casquette de patrouille",0];
		
		
        // Soldat 1er Classe
        if(__GETC__(life_coplevel) > 1) then
		{
			_ret pushBack ["dkPletM84_Helmet","Casque de combat",0];
		};
        // Caporal
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret pushBack ["","Képi",0];
		};
        
        // Adjudant
		if(__GETC__(life_coplevel) > 3) then
		{
			_ret pushBack ["","Chapeau de brousse",0];
		};
        
        // Lieutenant
		if(__GETC__(life_coplevel) > 4) then
		{
			_ret pushBack ["EB_Beret_4","Beret Lieutenant",0];
		};            
        
        // Capitaine
		if(__GETC__(life_coplevel) > 5) then
		{
			_ret pushBack ["EB_Beret_5","Beret Capitaine",0];
		};
        
        // Commandant 
		if(__GETC__(life_coplevel) > 6) then
		{
			_ret pushBack ["EB_Beret_3","Beret Commandant",0];
		};
	};

	
	//Glasses
	case 2:
	{
        // Soldat
		
		
			_ret pushBack ["G_Squares_Tinted","Lun. soleil carrées",0];
            _ret pushBack ["G_Shades_Black","Lun. soleil noir",0];
            _ret pushBack ["G_Aviator","Lun. aviateur",0];
            _ret pushBack ["G_Spectacles","Lun. soleil",0];
            _ret pushBack ["G_Combat_Goggles_tna_F","Lun. combat",0];
            _ret pushBack ["TRYK_Shemagh_G","Shemag",0];
            _ret pushBack ["TRYK_Shemagh_shade_G","Shemag + lun. soleil",0];
		
		
        // Soldat 1er Classe
        if(__GETC__(life_coplevel) > 1) then
		{
            _ret pushBack ["G_Bandanna_oli","Bandana olive",0];
            _ret pushBack ["rhs_balaclava","Balaclava 1",0];
            _ret pushBack ["rhs_balaclava1_olive","Balaclava 2",0];
			_ret pushBack ["G_Diving","Lunette Plongeur",0];
		};
	};	

	//Vest
	case 3:
	{
        // Soldat
		_ret pushBack ["dkPletM84_PlateCarrier1","Gilet Léger",0];
		
        // Soldat 1er Classe
        if(__GETC__(life_coplevel) > 1) then
		{
            _ret pushBack ["dkPletM84_PlateCarrier2","Gilet Lourd",0];
		    _ret pushBack ["V_RebreatherIA","Recycleur",0];
            _ret pushBack ["rhs_6sh46","Pchette",0];
		    _ret pushBack ["rhs_vest_pistol_holster","Holster",0];
		};
	
	// Capitaine
        if(__GETC__(life_coplevel) > 5) then
		{
           //_ret pushBack ["TRYK_V_Bulletproof_BLK","Gilet VIP",0];
		    
		};
	};

	//Backpacks
	case 4:
	{
        // Soldat
        _ret pushBack ["B_Kitbag_rgr","Sac à dos moyen",0];
		_ret pushBack ["B_Carryall_oli","Sac a dos Lourd",0];
		_ret pushBack ["B_Parachute","Parachute manoeuvrable",0];
		
		
        // Soldat 1er Classe
        if(__GETC__(life_coplevel) > 1) then
		{
            _ret pushBack ["tf_rt1523g_bwmod","Radio longe portée",0];

		};
    };
};
_ret;