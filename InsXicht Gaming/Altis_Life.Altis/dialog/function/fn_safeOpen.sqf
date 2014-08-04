/*	
	File: fn_safeOpen.sqf
	Author: Bryan "Tonic" Boardwine

	Description:
	Opens the safe inventory menu.
*/
if(dialog) exitWith {}; //A dialog is already open.
life_safeObj = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull life_safeObj) exitWith {};
if(playerSide != civilian) exitWith {};
if((life_safeObj getVariable["safe",-1]) < 1) exitWith {hint "Der Save ist leer!";};
if((life_safeObj getVariable["inUse",false])) exitWith {hint "Jemand besitzt schon den Zugriff auf den Safe.."};
if({side _x == west} count playableUnits < 4) exitWith {hint "Es müssen 4 Polizisten Online sein!"};
if(!createDialog "Federal_Safe") exitWith {"Couldn't create the dialog, report it."};
disableSerialization;
ctrlSetText[3501,"Safe Inventory"];
[life_safeObj] call life_fnc_safeInventory;
life_safeObj setVariable["inUse",true,true];
[life_safeObj] spawn
{
	waitUntil {isNull (findDisplay 3500)};
	(_this select 0) setVariable["inUse",false,true];
};