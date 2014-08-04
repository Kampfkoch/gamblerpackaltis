/*
	File: fn_gatherGold.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gathers oil, needs to be revised and changed.
*/
private["_sum"];
_sum = ["uranu",1,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
	life_action_gather = true;
	titleText["Sammel Uran...","PLAIN"];
	sleep 4;
	if(([true,"uranu",_sum] call life_fnc_handleInv)) then
	{
		titleText["Du hast Uran gesammelt!","PLAIN"];
	};
}
	else
{
	hint "Your inventory space is full.";
};

life_action_gather = false;