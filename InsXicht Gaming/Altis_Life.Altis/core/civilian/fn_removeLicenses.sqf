/*
	File: fn_removeLicenses.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Used for stripping certain licenses off of civilians as punishment.
*/
private["_state"];
_state = [_this,0,1,[0]] call BIS_fnc_param;

switch (_state) do
{
	//Death while being wanted
	case 0:
	{
		license_civ_driver = false;
	};
	
	//Jail licenses
	case 1:
	{
		license_civ_gun = false;
		license_civ_rebel = false;
	};
	
	//Remove motor vehicle licenses
	case 2:
	{
		if(license_civ_driver OR license_civ_truck OR license_civ_quad OR license_civ_kart) then {
			license_civ_kart = false;
			license_civ_quad = false;
			license_civ_driver = false;
			license_civ_truck = false;
			hint "Deine Führerscheine wurden eingezogen, weil du jemanden überfahren hast.";
		};
	};
	
	//Killing someone while owning a gun license
	case 3:
	{
		if(license_civ_gun) then {
			license_civ_gun = false;
			hint "Du hast deine Waffenlizenz verloren, weil du jemanden erschossen hast.";
		};
	};
	
	//Killing someone while owning a gun license
	case 4:
	{
		if(license_civ_driver OR license_civ_truck OR license_civ_quad OR license_civ_kart) then {
			license_civ_kart = false;
			license_civ_quad = false;
			license_civ_driver = false;
			license_civ_truck = false;
			hint "Deine Führerscheine wurden eingezogen, weil du jemanden überfahren hast.";
		};
	};
};