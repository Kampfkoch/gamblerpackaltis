/*
	File: fn_gatherOil.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gathers oil, needs to be revised and changed.
*/
private["_sum"];
_sum = ["oilu",1,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
	life_action_gather = true;
	titleText["Sammel Oel...","PLAIN"];
	sleep 4;
	if(([true,"oilu",_sum] call life_fnc_handleInv)) then
	{
		titleText["Du hast Oel gesammelt!","PLAIN"];
	};
}
	else
{
	hint "Your inventory space is full.";
};

life_action_gather = false;