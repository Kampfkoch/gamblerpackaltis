/*
	File: fn_vehicleWeightCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for vehicle weight.
*/
private["_className"];
_className = [_this,0,"",[""]] call BIS_fnc_param;

switch (_className) do
{
	case "C_Offroad_01_F": {65};
	case "B_G_Offroad_01_F": {65};
	case "B_Quadbike_01_F": {30};
	case "I_Truck_02_covered_F": {250};
	case "I_Truck_02_transport_F": {225};
	case "I_Truck_02_box_F": {275};
	case "C_Hatchback_01_F": {40};
	case "C_Hatchback_01_sport_F": {45};
	case "C_SUV_01_F": {50};
	case "C_Van_01_transport_F": {85};
	case "I_G_Van_01_transport_F": {100};
	case "C_Van_01_box_F": {125};
	case "C_Boat_Civil_01_F": {85};
	case "C_Boat_Civil_01_police_F": {85};
	case "C_Boat_Civil_01_rescue_F": {85};
	case "B_Truck_01_box_F": {475};
	case "B_Truck_01_transport_F": {300};
	case "B_Truck_01_covered_F": {375};
	case "B_MRAP_01_F": {60};
	case "O_MRAP_02_F": {65};
	case "I_MRAP_03_F": {70};
	case "B_Heli_Light_01_F": {90};
	case "O_Heli_Light_02_unarmed_F": {160};
	case "I_Heli_Transport_02_F": {210};
	case "C_Rubberboat": {45};
	case "O_Boat_Armed_01_hmg_F": {175};
	case "B_Boat_Armed_01_minigun_F": {175};
	case "I_Boat_Armed_01_minigun_F": {175};
	case "B_G_Boat_Transport_01_F": {45};
	case "B_Boat_Transport_01_F": {45};
	case "I_Heli_light_03_unarmed_F": {160};
	case "O_Truck_03_transport_F": {300};
	case "O_Truck_03_covered_F": {365};
	case "O_Truck_03_repair_F": {430};
	case "Land_Box_AmmoOld_F": {250};
    case "B_supplyCrate_F": {500};
	case "Land_CargoBox_V1_F": {5000};
	default {-1};
};