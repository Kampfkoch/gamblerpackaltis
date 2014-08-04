/*
	File: fn_adacDefault.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Default adac configuration.
*/
removeAllContainers player;
removeAllWeapons player;
removeUniform player;
removeVest player;
removeGoggles player;
removeHeadGear player;
player forceAddUniform "U_C_WorkerCoveralls";
player addBackpack "B_Carryall_oli";
player addItem "FirstAidKit";
player addItem "ToolKit";
player addItem "ToolKit";
player addItem "ToolKit";
if(hmd player != "") then {
	player unlinkItem (hmd player);
};

[] spawn life_fnc_updateClothing;