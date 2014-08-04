#include <macro.h>
/*
	File: fn_initADAC.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	ADAC Initialization file.
*/
private["_end"];
player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};
_end = false;

_igiload = execVM "IgiLoad\IgiLoadInit.sqf";

if((str(player) in ["adac_1","adac_2","adac_3","adac_4","adac_5"])) then {
	if((__GETC__(life_adaclevel) == 0)) then {
		["Only4ADAC",false,true] call BIS_fnc_endMission;
		sleep 30;
	};
};

switch(__GETC__(life_adaclevel)) do
{
	case 1: {life_paycheck = life_paycheck + 250;};
	case 2: {life_paycheck = life_paycheck + 500;};
	case 3: {life_paycheck = life_paycheck + 750;};	
};

[] call life_fnc_adacLoadout;
[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.

[] call life_fnc_adaczoneCreator;

[] spawn
{
while {(uniform player) == "U_C_WorkerCoveralls"} do
    {
	switch (__GETC__(life_adaclevel)) do 
		{
			case 1: {
			player setObjectTextureGlobal [0,"images\adac.jpg"];
			};
			
			case 2: {
			player setObjectTextureGlobal [0,"images\adac.jpg"];
			};
			
			case 3: {
			player setObjectTextureGlobal [0,"images\adac.jpg"];
			};
		};
    if(backpack player != "") then {(unitBackpack player) setObjectTextureGlobal [0,""];};
    sleep 30;
    };
};