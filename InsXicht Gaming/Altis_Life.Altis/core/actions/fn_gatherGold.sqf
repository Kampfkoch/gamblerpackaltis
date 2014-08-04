/*
	File: fn_gatherGold.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gathers oil, needs to be revised and changed.
*/
private["_sum"];
_sum = ["goldu",1,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
	life_action_gather = true;
	titleText["Sammel Golderz...","PLAIN"];
	sleep 4;
	if(([true,"goldu",_sum] call life_fnc_handleInv)) then
	{
		titleText["Du hast Golderz gesammelt!","PLAIN"];
	};
}
	else
{
	hint "Your inventory space is full.";
};

life_action_gather = false;