private["_unit","_lvl","_typ","_rang","_message"];

_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_lvl = [_this,1,-1,[0]] call BIS_fnc_param;

if(isNull _unit OR _lvl == -1) exitwith {};


switch (side _unit) do
{
	case west: 
	{
		_typ = _this select 2;
		
		if(_typ == "blue") then {
			switch ( _lvl ) do
			{
				case 1: { _rang = "Soldat"; };
				case 2: { _rang = "Soldat 1er Classe"; };
				case 3: { _rang = "Caporal"; };
				case 4: { _rang = "Adjudant"; };
				case 5: { _rang = "Lieutenant"; };
				case 6: { _rang = "Capitaine"; };
				case 7: { _rang = "Commandant"; };

				default { _rang = "Grade illisible"; };
			};
			_message = format["<img size='10' color='#FFFFFF' image='Ama_Items\icons\at.paa'/><br/><br/><t size='2.5'>%1</t><br/><t size='1.8'>%2</t><br/><br/><t size='1'>Armée Tanocienne</t>", name _unit, _rang];
		 } else {
			_message = format["<img size='10' color='#FFFFFF' image='Ama_Items\icons\civil.paa'/><br/><br/><t size='2.5'>%1</t><br/><br/><t size='1'>Citoyen</t>", name _unit];
                };
    };
	case independent: 
	{
		switch ( _lvl ) do
		{
			case 1: { _rang = "Stagiaire"; };
			case 2: { _rang = "Infirmier"; };
			case 3: { _rang = "Infirmier principal"; };
			case 4: { _rang = "Médecin"; };
			case 5: { _rang = "Médecin Chef"; };
			case 6: { _rang = "Directeur"; };
			default { _rang = "Grade illisible"; };
		};
		_message = format["<img size='10' color='#FFFFFF' image='Ama_Items\icons\smt.paa'/><br/><br/><t size='2.5'>%1</t><br/><t size='1.8'>%2</t><br/><br/><t size='1'>Service Médical de Tanoa</t>", name _unit, _rang];
	};
	default 
	{ 
		_message = format["<img size='10' color='#FFFFFF' image='Ama_Items\icons\civil.paa'/><br/><br/><t size='2.5'>%1</t><br/><br/><t size='1'>Citoyen</t>", name _unit];
	};
};

hintSilent parseText _message;
