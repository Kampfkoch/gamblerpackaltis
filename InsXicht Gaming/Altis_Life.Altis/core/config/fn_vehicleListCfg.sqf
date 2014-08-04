#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "kart_shop":
	{
		_return = [
			["C_Kart_01_Blu_F",3000],
			["C_Kart_01_Fuel_F",3000],
			["C_Kart_01_Red_F",3000],
			["C_Kart_01_Vrana_F",3000]
		];
	};
	
	case "adac_shop":
	{
		_return = [
			["C_Offroad_01_F",5000],
			["B_Truck_01_transport_F",15000]
		];
	};
	
	case "adac_air_hs": 
	{
		if(__GETC__(life_adaclevel) > 1) then
		{
			_return set[count _return,
			["B_Heli_Light_01_F",50000]];
			_return set[count _return,
			["I_Heli_Transport_02_F",100000]];
		};
	};
	
	case "med_shop":
	{
		_return = [
			["C_Offroad_01_F",10000],
			["C_SUV_01_F",12500]
		];
	};
	
	case "med_air_hs": 
	{
		if(__GETC__(life_mediclevel) > 1) then
		{
			_return set[count _return,
			["B_Heli_Light_01_F",50000]];
			_return set[count _return,
			["O_Heli_Light_02_unarmed_F",75000]];
		};
	};
	
	case "civ_car":
	{
		_return = 
		[
			["B_Quadbike_01_F",1000],
			["C_Hatchback_01_F",8000],
			["C_Hatchback_01_sport_F",40000],
			["C_Offroad_01_F",10000],
			["C_SUV_01_F",17500],
			["C_Van_01_transport_F",15000]
		];
	};
	
	case "civ_truck":
	{
		_return =
		[
			["C_Van_01_box_F",25000],
			["I_Truck_02_transport_F",65000],
			["I_Truck_02_covered_F",75000],
			["I_Truck_02_box_F",95000],
			["B_Truck_01_transport_F",250000],
			["B_Truck_01_covered_F",300000],
			["B_Truck_01_box_F",550000]
		];	
	};
	
	
	case "reb_car":
	{
		_return =
		[
			["B_Quadbike_01_F",1000],
			["B_G_Offroad_01_F",50000],
			["B_Heli_Light_01_F",1000000]
		];

		if(license_civ_rebel) then
		{
			_return set[count _return,
			["B_G_Offroad_01_armed_F",2000000]];
			_return set[count _return,
			["B_MRAP_01_F",650000]];
			_return set[count _return,
			["O_Truck_03_transport_F",300000]];
			_return set[count _return,
			["O_Truck_03_covered_F",350000]];
			_return set[count _return,
			["O_Truck_03_repair_F",600000]];
		};
	};
	
	case "cop_car":
	{
		_return set[count _return,
		["C_Offroad_01_F",3500]];
		if(__GETC__(life_coplevel) > 1) then
		{
			_return set[count _return,
			["C_SUV_01_F",9000]];
		};
		if(__GETC__(life_coplevel) > 2) then
		{
			_return set[count _return,
			["C_Hatchback_01_sport_F",12500]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,
			["I_MRAP_03_F",35000]];
		};
		if(__GETC__(life_coplevel) > 6) then
		{
			_return set[count _return,
			["O_MRAP_02_F",50000]];
		};
	};
	
	case "civ_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",850000],
			["O_Heli_Light_02_unarmed_F",2000000],
			["I_Heli_Transport_02_F",3500000]
		];
	};
	
	case "cop_air":
	{
		if(__GETC__(life_coplevel) > 1) then
		{
			_return set[count _return,
			["B_Heli_Light_01_F",20000]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",35000]];
		};
	};
	
	case "cop_airhq":
	{
		if(__GETC__(life_coplevel) > 1) then
		{
			_return set[count _return,
			["B_Heli_Light_01_F",20000]];
		};
		if(__GETC__(life_coplevel) > 4) then
		{
			_return set[count _return,
			["I_Heli_light_03_unarmed_F",35000]];
		};
	};
	
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000]
		];
	};

	case "cop_ship":
	{
		_return =
		[
			["B_Boat_Transport_01_F",1500],
			["C_Boat_Civil_01_police_F",2500],
			["B_Boat_Armed_01_minigun_F",7500]
		];
	};
};

_return;
