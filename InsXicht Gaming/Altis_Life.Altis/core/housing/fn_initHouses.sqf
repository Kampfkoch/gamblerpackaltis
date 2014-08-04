#include <macro.h>
/*
	File: fn_initHouses.sqf
	Author: Mario2002
	
	Description:
	init the player's houses
*/

{
	deleteMarkerLocal _x;
}forEach life_houses_markers;

for "_i" from 1 to (count life_houses) do
{
	_house = nearestObject [((life_houses select (_i-1)) select 0), "House_F"];
	_marker = createMarkerLocal [format["house_%1", _i], ((life_houses select (_i-1)) select 0)];
	_container1 = ((life_houses select (_i-1)) select 2);
	_container2 = ((life_houses select (_i-1)) select 3);
	_marker setMarkerTextLocal getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName");
	_marker setMarkerShapeLocal "ICON";
	_marker setMarkerColorLocal "ColorBlue";
	_marker setMarkerTypeLocal "mil_end";	
	_positions = [_house] call life_fnc_getBuildingPositions;
	_containers = _house getVariable ["containers", []];
	_weaponsAdded = false;
	
	if(count _containers > 0) then {
		{
			_pos = [0,0,0];
			{
				if(!([_x] call life_fnc_isBuildingPosTaken)) exitWith {_pos = _x;};
			} foreach _positions;
			_box = (_x select 2) createVehicle _pos;
			_box setPosATL _pos;
			_box setVariable["storage", (_x select 3), true];
			_box setVariable["Trunk", [[],0], true];
			_box setVariable["owner", getPlayerUID player, true];
			_box allowDamage false;
			
			clearWeaponCargoGlobal _box; 
			clearMagazineCargoGlobal _box;
			clearItemCargoGlobal _box;
			clearBackpackCargoGlobal _box;
			
			if(typeOf _box in ["B_supplyCrate_F","Land_Box_AmmoOld_F"]) then {
				_cargo = [];
				_leer = [];
				switch (typeOf _box) do {
					case "Land_Box_AmmoOld_F": {_cargo = _container2;};
					case "B_supplyCrate_F": {_cargo = _container1;};
					default {_cargo = _container1;};
				};
				if (!(isNil "_cargo") AND !([_cargo,_leer] call BIS_fnc_areEqual)) then {
					//diag_log format ["%1", _cargo];
						
					if(count (_cargo select 0) > 0) then {
						for[{_j = 0},{_j < count ((_cargo select 0) select 0)},{_j = _j + 1}] do {
							_box addWeaponCargoGlobal [((_cargo select 0) select 0) select _j, ((_cargo select 0) select 1) select _j];
						};
					};
					if(count (_cargo select 1) > 0) then {
						for[{_j = 0},{_j < count ((_cargo select 1) select 0)},{_j = _j + 1}] do {
							_box addMagazineCargoGlobal [((_cargo select 1) select 0) select _j, ((_cargo select 1) select 1) select _j];
						};
					};
					if(count (_cargo select 2) > 0) then {
						for[{_j = 0},{_j < count ((_cargo select 2) select 0)},{_j = _j + 1}] do {
							_box addItemCargoGlobal [((_cargo select 2) select 0) select _j, ((_cargo select 2) select 1) select _j];
						};
					};
					if(count (_cargo select 3) > 0) then {
						for[{_j = 0},{_j < count ((_cargo select 3) select 0)},{_j = _j + 1}] do {
							_box addBackpackCargoGlobal [((_cargo select 3) select 0) select _j, ((_cargo select 3) select 1) select _j];
						};
					};
				};
			};
		}forEach _containers;
	};	
	life_houses_markers set [count life_houses_markers, _marker];
};


player addEventHandler ["Take",{_this spawn life_fnc_onTake;}];
player addEventHandler ["Put",{_this spawn life_fnc_onPut;}];