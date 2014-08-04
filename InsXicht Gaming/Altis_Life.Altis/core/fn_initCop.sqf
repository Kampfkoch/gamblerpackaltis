#include <macro.h>
/*
	File: fn_initCop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Cop Initialization file.
*/
private["_end"];

player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};
_end = false;
if(life_blacklisted) exitWith
{
	["Blacklisted",false,true] call BIS_fnc_endMission;
	sleep 30;
};

if((str(player) in ["cop_1","cop_2","cop_3"])) then {
	if((__GETC__(life_adminlevel) != 3)) then {
		["Only4Admins",false,true] call BIS_fnc_endMission;
		sleep 30;
		[] call life_fnc_copDefault;
	};
};

if((str(player) in ["cop_4","cop_5","cop_6","cop_7","cop_8","cop_9","cop_10","cop_11","cop_12","cop_13","cop_14","cop_15","cop_16","cop_17","cop_18","cop_19","cop_20","cop_21","cop_22","cop_23","cop_24","cop_25","cop_26","cop_27","cop_28"])) then {
	if((__GETC__(life_coplevel) == 0) && (__GETC__(life_adminlevel) < 1)) then {
		["Only4Whitelisted",false,true] call BIS_fnc_endMission;
		sleep 30;
	};
};

switch(__GETC__(life_coplevel)) do
{
	case 1: {life_paycheck = life_paycheck + 250;};
	case 2: {life_paycheck = life_paycheck + 500;};
	case 3: {life_paycheck = life_paycheck + 750;};
	case 5: {life_paycheck = life_paycheck + 1000;};
	case 7: {life_paycheck = life_paycheck + 1250;};
	
};

player setVariable["coplevel", __GETC__(life_coplevel), true];

[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.

[] spawn
{
while {(uniform player) == "U_Rangemaster"} do
    {
	switch (__GETC__(life_coplevel)) do 
		{
			case 1: {
			player setObjectTextureGlobal [0,"images\recruit_uniform_rangemaster.jpg"];
			};
			
			case 2: {
			player setObjectTextureGlobal [0,"images\recruit_uniform_rangemaster.jpg"];
			};
			
		};
    if(backpack player != "") then {(unitBackpack player) setObjectTextureGlobal [0,""];};
    sleep 30;
    };
};

[] spawn
{
while {(uniform player) == "U_B_CombatUniform_mcam_vest"} do
    {
	switch (__GETC__(life_coplevel)) do 
		{
			case 3: {
			player setObjectTextureGlobal [0,"images\cop_officer.jpg"];
			};
			
		};
    if(backpack player != "") then {(unitBackpack player) setObjectTextureGlobal [0,""];};
    sleep 30;
    };
};

[] spawn
{
while {(uniform player) == "U_B_SpecopsUniform_sgg"} do
    {
	switch (__GETC__(life_coplevel)) do 
		{
			case 5: {
			player setObjectTextureGlobal [0,"images\cop_captain.jpg"];
			};
			
		};
    if(backpack player != "") then {(unitBackpack player) setObjectTextureGlobal [0,""];};
    sleep 30;
    };
};

[] spawn
{
while {(uniform player) == "U_B_CombatUniform_mcam"} do
    {
	switch (__GETC__(life_coplevel)) do 
		{
			case 7: {
			player setObjectTextureGlobal [0,"images\cop_sergeant.jpg"];
			};
			
		};
    if(backpack player != "") then {(unitBackpack player) setObjectTextureGlobal [0,""];};
    sleep 30;
    };
};

private["_getRank"];
_getRank = switch (__GETC__(life_coplevel)) do {case 1: {1}; case 2: {2}; case 3: {3}; case 5: {5}; case 7: {7}; default {0};};
player setVariable["coplevel",_getRank,TRUE];