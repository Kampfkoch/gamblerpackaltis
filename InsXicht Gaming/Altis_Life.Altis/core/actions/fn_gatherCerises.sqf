private["_sum"];
_sum = ["cerises",4,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
 
if(_sum > 0) then
{
	life_action_gather = true;
	titleText["Sammel Kirschen...","PLAIN"];
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	sleep 2;
	if(([true,"cerises",_sum] call life_fnc_handleInv)) then
	{
		titleText["Du hast 4 Kirschen gesammelt!","PLAIN"];
	};
}
else
{
	hint localize "STR_NOTF_InvFull";
};

life_action_gather = false;