/*
	File: fn_pickaxeUse.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main functionality for pickaxe in mining.
*/
closeDialog 0;
private["_mine","_itemWeight","_diff","_itemName","_val"];
switch (true) do
{
	case (player distance (getMarkerPos "lead_1") < 35): {_mine = "copperore"; _val = 2;};
	case (player distance (getMarkerPos "iron_1") < 35): {_mine = "ironore"; _val = 2;};
	case (player distance (getMarkerPos "salt_1") < 35) : {_mine = "salt"; _val = 4;};
	case (player distance (getMarkerPos "sand_1") < 35) : {_mine = "sand"; _val = 5;};
	case (player distance (getMarkerPos "diamond_1") < 35): {_mine = "diamond"; _val = 1;};
	case (player distance (getMarkerPos "oil_1") < 35) : {_mine = "oilu"; _val = 1;};
	case (player distance (getMarkerPos "oil_2") < 35) : {_mine = "oilu"; _val = 1;};
	case (player distance (getMarkerPos "rock_1") < 35): {_mine = "rock"; _val = 2;};
	case (player distance (getMarkerPos "uran_1") < 35): {_mine = "uranu"; _val = 1;};
	case (player distance (getMarkerPos "silber_1") < 35): {_mine = "silberu"; _val = 2;};
	case (player distance (getMarkerPos "gold_1") < 35): {_mine = "goldu"; _val = 1;};
	default {_mine = "";};
};
//Mine check
if(_mine == "") exitWith {hint "Du bist nicht in der nähe einer Mine!"};
if(vehicle player != player) exitWith {hint "Du kannst die Spitzhacke nicht im Fahrzeug benutzen!";};

_diff = [_mine,_val,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(_diff == 0) exitWith {hint "Dein Inventar ist voll."};
life_action_gather = true;
for "_i" from 0 to 2 do
{
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
	sleep 2.5;
};

if(([true,_mine,_diff] call life_fnc_handleInv)) then
{
	_itemName = [([_mine,0] call life_fnc_varHandle)] call life_fnc_varToStr;
	titleText[format["Du hast %2 %1 gehackt.",_itemName,_diff],"PLAIN"];
};

life_action_gather = false;