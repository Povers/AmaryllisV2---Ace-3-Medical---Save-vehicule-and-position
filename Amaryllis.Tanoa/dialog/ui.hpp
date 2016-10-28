	class playerHUD
   	{
		idd=-1;
		movingEnable=0;
	  	fadein=0;
		duration = 99999999999999999999999999999999999999999999;
	  	fadeout=0;
		name="playerHUD";
		onLoad="uiNamespace setVariable ['playerHUD',_this select 0]";
		objects[]={};
		
		class controlsBackground 
		{
			class foodHIcon : life_RscPicture 
			{
			
				idc = -1;
				text = "Ama_Items\hud\food.paa";
				x = safeZoneX+safeZoneW-0.134; 
				y = safeZoneY+safeZoneH-0.340;

			//	x = 0.905 * safezoneW + safezoneX;
			//	y = 0.780875 * safezoneH + safezoneY;
				w = 0.03; h = 0.04;
			};
			
			class waterHIcon : life_RscPicture 
			{
			
				idc = -1;
				text = "Ama_Items\hud\water.paa";
				x = safeZoneX+safeZoneW-0.137;
				y = safeZoneY+safeZoneH-0.285;

				//x = 0.90 * safezoneW + safezoneX;
			//	y = 0.817625 * safezoneH + safezoneY;
				w = 0.04; h = 0.04;
			};
			
			class healthHIcon : life_RscPicture
			{
				
				idc = -1;
				text = "Ama_Items\hud\blood.paa";
				x = safeZoneX+safeZoneW-0.127;
				y = safeZoneY+safeZoneH-0.222;

			//	x = 0.908 * safezoneW + safezoneX;
			//	y = 0.854375 * safezoneH + safezoneY;
				w = 0.02; h = 0.03;
			};
		};
		
		class controls
		{
            
            class TFR
			{
				type=0;
				idc=23520;
				style=48;
				x=-1;
				y=-1;
				w=0.08;
				h=0.09;
				sizeEx=0.03;
				size=1;
				font="PuristaSemibold";
				colorBackground[]={0,0,0,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=false;
				text="";
			};
            
			class foodtext
			{
				type=0;
				idc=23500;
				style=0;
				x=-1;
				y=-1;
				w=0.3;
				h=0.05;
				sizeEx=0.03;
				size=1;
				font="PuristaSemibold";
				colorBackground[]={0,0,0,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";
			};
			
			class watertext
			{
				type=0;
				idc=23510;
				style=0;
				x=-1;
				y=-1;
				w=0.3;
				h=0.05;
				sizeEx=0.03;
				size=1;
				font="PuristaSemibold";
				colorBackground[]={0,0,0,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";
			};
			
			class healthtext
			{
				type=0;
				idc=23515;
				style=0;
				x=-1;
				y=-1;
				w=0.3;
				h=0.05;
				sizeEx=0.03;
				size=1;
				font="PuristaSemibold";
				colorBackground[]={0,0,0,0};
				colorText[] = { 1 , 1 , 1 , 1 };
				shadow=true;
				text="";
			};
		};   
 	};