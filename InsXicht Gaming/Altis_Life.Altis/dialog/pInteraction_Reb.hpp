//Grid macros
#define GUI_GRID_X	(0)
#define GUI_GRID_Y	(0)
#define GUI_GRID_W	(0.025)
#define GUI_GRID_H	(0.04)
#define GUI_GRID_WAbs	(1)
#define GUI_GRID_HAbs	(1)

class pInteraction_Reb
{
	idd = 37400;
	movingEnabled = false;
	enableSimulation = true;
	
	class controlsBackground
	{
		class RscTitleBackground:life_RscText 
		{
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
			idc = -1;
			x = BGX;
			y = BGY;
			w = BGW;
			h = (1 / 25);
		};
		
		class MainBackground : life_RscText
		{
			idc = -1;
			colorBackground[] = {0,0,0,0.7};
			x = BGX;
			y = BGY + (11 / 250);
			w = BGW;
			h = 0.6 - (22 / 250);
		};
		
		class Title : life_RscTitle
		{
			colorBackground[] = {0,0,0,0};
			idc = 37401;
			text = "Rebellenmenue";
			x = BGX;
			y = BGY;
			w = BGW;
			h = (1 / 25);
		};
	};
	
	class controls
	{
		class bClose: RscButtonMenu
		{
			idc = 2400;
			text = "Schliessen"; //--- ToDo: Localize;
			x = 10 * GUI_GRID_W + GUI_GRID_X;
			y = 17 * GUI_GRID_H + GUI_GRID_Y;
			w = 21 * GUI_GRID_W;
			h = 1 * GUI_GRID_H;
			onButtonClick="closeDialog 0;";
		};
		class bUnrestrain: life_RscButtonMenu
		{
			idc = 2401;
			text = "Endfesseln"; //--- ToDo: Localize;
			sizeEx = 0.025;
			x = BGX + 0.03;
			y = BGY + 0.07;
			w = 0.24;
			h = 0.038;
			
		};
		class bEscort: life_RscButtonMenu
		{
			idc = 2404;
			text = "Eskortieren"; //--- ToDo: Localize;
			sizeEx = 0.025;
			x = BGX + 0.03;
			y = BGY + 0.12;
			w = 0.24;
			h = 0.038;
			
		};
		class bPutInCar: life_RscButtonMenu
		{
			idc = 2405;
			text = "In_Fahrzeug"; //--- ToDo: Localize;
			sizeEx = 0.025;
			x = BGX + 0.03;
			y = BGY + 0.17;
			w = 0.24;
			h = 0.038;
			
		};
		class bTorture: life_RscButtonMenu
		{
			idc = 2406;
			text = "Foltern"; //--- ToDo: Localize;
			sizeEx = 0.025;
			x = BGX + 0.03;
			y = BGY + 0.22;
			w = 0.24;
			h = 0.038;
		};
	};
};

