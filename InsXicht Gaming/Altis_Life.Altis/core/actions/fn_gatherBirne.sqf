private["_sum"];
_sum = ["birne",4,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
	life_action_gather = true;
	titleText["Sammel Birnen...","PLAIN"];
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	sleep 2;
	if(([true,"birne",_sum] call life_fnc_handleInv)) then
	{
		titleText["Du hast 4 Birnen gesammelt!","PLAIN"];
	};
}
else
{
	hint localize "STR_NOTF_InvFull";
};

life_action_gather = false;