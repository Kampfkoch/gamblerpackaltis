/*
	File: fn_vehicleColorStr.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for color strings depending on their index location.
*/
private["_vehicle","_color","_index"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
_index = [_this,1,-1,[0]] call BIS_fnc_param;
_color = "";

switch (_vehicle) do
{
	case "C_Offroad_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Rot";};
			case 1: {_color = "Gelb";};
			case 2: {_color = "Weiss";};
			case 3: {_color = "Blau";};
			case 4: {_color = "Dunkelrot";};
			case 5: {_color = "Blau / Weiss";};
			case 6: {_color = "Sani";};
			case 7: {_color = "M Energy Gruen";};
			case 8: {_color = "Polizei";};
			case 9: {_color = "M Energy Weis";};
			case 10: {_color = "Pokemon"};
			case 11: {_color = "Adac"};
		};
	};
	
	case "C_Hatchback_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Beige";};
			case 1: {_color = "Gruen";};
			case 2: {_color = "Blau";};
			case 3: {_color = "Dunkel Blau";};
			case 4: {_color = "Gelb";};
			case 5: {_color = "Weis";};
			case 6: {_color = "Grau";};
			case 7: {_color = "Schwarz"};
		};
	};
	
	case "C_Hatchback_01_sport_F":
	{
		switch(_index) do
		{
			case 0: {_color = "Rot";};
			case 1: {_color = "Dunkel Blau";};
			case 2: {_color = "Orange";};
			case 3: {_color = "Tan";};
			case 4: {_color = "Gruen";};
			case 5: {_color = "Polizei";};
			case 6: {_color = "Schwarz";};
			case 7: {_color = "Monster Energy";};
			case 8: {_color = "Ghostbusters";};
			case 9: {_color = "Supermario";};
			case 10: {_color = "Peach";};
			case 11: {_color = "Redbull"};
		};
	};
	
	case "C_SUV_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Dunkel Rot";};
			case 1: {_color = "Silver";};
			case 2: {_color = "Orange";};
			case 3: {_color = "Schwarz";};
			case 4: {_color = "Polizei";};
			case 5: {_color = "Oesi";};
			case 6: {_color = "Sani";};
			case 7: {_color = "Batman";};
			case 8: {_color = "Farrari";};
			case 9: {_color = "Pink";};
			case 10: {_color = "Superman"};
		};
	};
	
	case "C_Van_01_box_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Weis";};
			case 1: {_color = "Rot"};
		};
	};
	
	case "C_Van_01_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Weis";};
			case 1: {_color = "Rot"};
		};
	};
	
	case "C_Van_01_fuel_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Weis";};
			case 1: {_color = "Rot"};
		};
	};
	
	case "B_Quadbike_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Braun";};
			case 1: {_color = "Digi Desert";};
			case 2: {_color = "Schwarz";};
			case 3: {_color = "Blau";};
			case 4: {_color = "Rot";};
			case 5: {_color = "Weis";};
			case 6: {_color = "Digi Gruen";};
			case 7: {_color = "Hunter Camo";};
			case 8: {_color = "Rebel Camo"};
		};
	};
	
	case "B_Heli_Light_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Polizei";};
			case 1: {_color = "Schwarz";};
			case 2: {_color = "Civ Blau";};
			case 3: {_color = "Civ Rot";};
			case 4: {_color = "Digi Gruen";};
			case 5: {_color = "Blauline";};
			case 6: {_color = "Elliptical";};
			case 7: {_color = "Furious";};
			case 8: {_color = "Jeans Blau";};
			case 9: {_color = "Speedy Rotline";};
			case 10: {_color = "Sunset";};
			case 11: {_color = "Vrana";};
			case 12: {_color = "Waves Blau";};
			case 13: {_color = "Rebel Digital";};
			case 14: {_color = "Sani"};
			case 15: {_color = "Adac"};
		};
	};
	
	case "O_Heli_Light_02_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Schwarz";};
			case 1: {_color = "Weis / Blau";};
			case 2: {_color = "Digi Gruen";};
			case 3: {_color = "Desert Digi";};
			case 4: {_color = "Sani"};
		};
	};
	
	case "B_MRAP_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Rebel"};
		};
	};
	
	case "O_MRAP_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Polizei";};
		};
	};
	
	case "I_MRAP_03_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Polizei"};
		};
	};
	
	case "I_Truck_02_box_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange/Blau";};
			case 1: {_color = "Schwarz/Weis";};
			case 2: {_color = "Gruen/Rot"};
		};
	};
	
	case "I_Truck_02_covered_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange/Blau";};
			case 1: {_color = "Schwarz/Weis";};
			case 2: {_color = "Gruen/Rot"};
		};
	};
	
	case "I_Truck_02_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange/Blau";};
			case 1: {_color = "Schwarz/Weis";};
			case 2: {_color = "Gruen/Rot"};
		};
	};
	
	case "O_Heli_Attack_02_black_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Schwarz"};
		};
	};
	
	case "I_Heli_Transport_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Ion";};
			case 1: {_color = "Dahoman"};
			case 2: {_color = "Adac"};
		};
	};
	
	case "I_Heli_light_03_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Gruen";};
			case 1: {_color = "Polizei";};
			case 2: {_color = "Camo"};
		};
	};
	
	case "B_Truck_01_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Adac"};
		};
	};
};
_color;