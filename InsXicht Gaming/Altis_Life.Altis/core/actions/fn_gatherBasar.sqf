private["_sum"];
_sum = ["basaru",1,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
 
if(_sum > 0) then
{
	life_action_gather = true;
	titleText["Sammel Zeug...","PLAIN"];
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	sleep 7;
	if(([true,"basaru",_sum] call life_fnc_handleInv)) then
	{
		titleText["Du hast 1 etwas gesammelt!","PLAIN"];
	};
}
else
{
	hint localize "STR_NOTF_InvFull";
};

life_action_gather = false;