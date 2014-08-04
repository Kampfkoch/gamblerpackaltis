#include <macro.h>
/*
	File: fn_houseMenu.sqf
	Author: John "Paratus" VanderZwet
	
	Description:
	Shows house ownership menu
*/
private["_house","_owners","_locked","_owner","_price"];
if(dialog) exitWith {};
_house = cursorTarget;
if(isNull _house || !(_house isKindOf "House")) exitWith {systemChat "Bad House";};

if(!createDialog "HouseMenu") exitWith {"Failed Creating Dialog";}; //Couldn't create the menu?
disableSerialization;
ctrlSetText[12501,format["House - %1",getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName")]];

_owners = _house getVariable["life_homeOwners", []];
_owner = (getPlayerUID player) in _owners;
_price = [typeOf _house] call life_fnc_housePrice;
if (_owner) then
{
	_price = _price * 0.75;	// Sell price is 3/4 full cost
	ctrlSetText[12504,format["Sie sind der aktuelle Besitzer dieses Hauses."]];
	ctrlSetText[12508,format["Verkaufpreis: $%1",[_price] call life_fnc_numberText]];
	ctrlShow[12512,false];
}
else
{
	ctrlShow[12516,false];
	ctrlSetText[12508,format["Kaufpreis: $%1",[_price] call life_fnc_numberText]];
	if ((count _owners) > 0) then
	{
		ctrlSetText[12504,format["Diese Immobilie befindet sich bereits im Besitz."]];
		ctrlShow[12512,false];
	}
	else
	{
		ctrlSetText[12504,format["Immobilienmakler!"]];
	};
};
