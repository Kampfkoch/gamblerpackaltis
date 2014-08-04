private["_sum"];
_sum = ["grapes",4,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
	life_action_gather = true;
	titleText["Sammel Trauben...","PLAIN"];
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	sleep 5;
	if(([true,"grapes",_sum] call life_fnc_handleInv)) then
	{
		titleText["Du hast 4 Trauben gesammelt!","PLAIN"];
	};
}
else
{
	hint localize "STR_NOTF_InvFull";
};

life_action_gather = false;