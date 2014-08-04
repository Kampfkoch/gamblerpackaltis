private["_sum"];
_sum = ["cannabis",1,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
	life_action_gather = true;
	titleText["Sammel Cannabis...","PLAIN"];
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	titleFadeOut 5;
	sleep 5;
	if(([true,"cannabis",1] call life_fnc_handleInv)) then
	{
		titleText["Du hast 1 Cannabis gesammelt.","PLAIN"];
	};
}
else
{
	hint localize "STR_NOTF_InvFull";
};

life_action_gather = false;