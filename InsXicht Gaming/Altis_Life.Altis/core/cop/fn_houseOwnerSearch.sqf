#include <macro.h>
/*
*/
private["_house","_owner"];
_house = cursorTarget;
if(isNull _house) exitWith {hint "There is no house"};
if(!(_house isKindOf "House_F")) exitWith {};

_owner = _house getVariable ["life_homeOwnerName", []];

if(count _owner == 0) then {
	hint "Dieses Haus gehört niemandem.";
} else {
	hint format ["Der Besitzer dieses Hauses ist %1", (_owner select 0)];
};


