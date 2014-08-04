private["_sum"];
_sum = ["methu",1,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;

if(_sum > 0) then
{
	life_action_gather = true;
	titleText["Stehle Zutaten...","PLAIN"];
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	titleFadeOut 5;
	sleep 5;
	if(([true,"methu",1] call life_fnc_handleInv)) then
	{
		titleText["Du hast eine Zutat gestohlen!","PLAIN"];
	};
}
else
{
	hint localize "STR_NOTF_InvFull";
};

life_action_gather = false;