/*
	File: fn_medicLoadout.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Loads the medic out with the default gear.
*/
removeAllContainers player;
removeAllWeapons player;
removeUniform player;
removeVest player;
removeGoggles player;
removeHeadGear player;
player forceAddUniform  "U_I_HeliPilotCoveralls";
player addBackpack "B_Carryall_oli";
player addItem "FirstAidKit";
player addItem "Medikit";
if(hmd player != "") then {
	player unlinkItem (hmd player);
};

[] spawn life_fnc_updateClothing;