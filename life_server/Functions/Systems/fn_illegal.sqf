/*
	File : fn_illegal.sqf
  Author : Povers
  
  Description :
  FMouvement des objets/markers illégaux
  
  Exec : 
  [] execVM "life_server\Functions\Systems\fn_illegal.sqf";

*/
private["_posCoca","_posCanna","_posVes","_posBanane","_dealpos1","_dealpos2","_dealer1","_dealer2","_recelpos1","_recelpos2","_recelpospt1","_recelpospt2","_recel1","_recel2","_tcocapos","_tcannapos","_tvestigepos","_tcoca","_tcanna","_tvestige","_bm1pos","_tbm1pos","_bm2pos","_tbm2pos","_bm1","_tbm1","_bm2","_tbm2","_vrebel1pos","_vrebel2pos"];

//Position Champs
_posCoca = [13497.14,8469.46];  
_posCanna  = [13130.863,4360.404]; 
_posVes  = [7316.324,12828.987]; 
_posBanane = [3111.722,11992.025]; 


//Déplacement marqueurs Champs
"cocaine_take" setMarkerPos _posCoca;
"cannabis_take" setMarkerPos _posCanna;
"vestige_take" setMarkerPos _posVes;
"banane_take" setMarkerPos _posBanane;

// Dealer

_dealpos1 = [5212.6309,10071.733,2.355];
_dealpos2 = [11265.886,5246.3535,1.9400001];

_dealer1 = missionNamespace getVariable ("dealer_1");
_dealer1 setPosASL _dealpos1;
//_dealpos1 = getPos _dealer1;
//diag_log format ["[POS] dealer 1 : %1",_dealpos1];

_dealer2 = missionNamespace getVariable ("dealer_2");
_dealer2 setPosASL _dealpos2;
//_dealpos2 = getPos _dealer2;
//diag_log format ["[POS] dealer 2 : %1",_dealpos2];

// Receleur

_recelpos1 = [13412.188,12313.98,2.55];
_recelpos2 = [7049.395,4115.71,0.75];
_recelpospt1 = [13412.188,12313.98]; 
_recelpospt2 = [7049.395,4115.71]; 

_recel1 = missionNamespace getVariable ("recel_1");
_recel1 setPosASL _recelpos1;

_recel2 = missionNamespace getVariable ("recel_2");
_recel2 setPosASL _recelpos2;

"recel_1_pt" setMarkerPos _recelpospt1;
"recel_2_pt" setMarkerPos _recelpospt2;


// Traitement 

_tcocapos = [2563.125,2677.625,212.916];
_tcannapos = [9018.625,13251.25,175.841];
_tvestigepos = [9928.25,6724.5,41];



_tcoca = missionNamespace getVariable ("t_coca");
_tcoca setPosASL _tcocapos;
//_tcocapos = getPos _tcoca;
//diag_log format ["[POS] COCA %2 : %1",_tcocapos,_tcoca];

_tcanna = missionNamespace getVariable ("t_canna");
_tcanna setPosASL _tcannapos;
//_tcannapos = getPos _tcanna;
//diag_log format ["[POS] CANNA %2 : %1",_tcannapos,_tcanna];

_tvestige = missionNamespace getVariable ("t_vestige");
_tvestige setPosASL _tvestigepos;
//_tvestigepos = getPos _tvestige;
//diag_log format ["[POS] VESTIGE %2 : %1",_tvestigepos,_tvestige];

// Camps rebelle

 // --> Box + tente camo
_bm1pos = [7590.354,14879.87,19.209626];
_tbm1pos = [7589.938,14878.995,20.259008];
_bm2pos = [8368.3193,1232.556,37];
_tbm2pos = [8367.5723,1231.939,37.642113];

_bm1 = missionNamespace getVariable ("black_market_1");
_bm1 setPosASL _bm1pos;

_tbm1 = missionNamespace getVariable ("black_market_tente_1");
_tbm1 setPosASL _tbm1pos;

_bm2 = missionNamespace getVariable ("black_market_2");
_bm2 setPosASL _bm2pos;

_tbm2 = missionNamespace getVariable ("black_market_tente_2");
_tbm2 setPosASL _tbm2pos;

// --> Marker spawn vehicule

_vrebel1pos  = [7553.1201,14778.806]; 
_vrebel2pos = [8208.6494,1360.974];  

"vrebel1" setMarkerPos _vrebel1pos;
"vrebel2" setMarkerPos _vrebel2pos;












