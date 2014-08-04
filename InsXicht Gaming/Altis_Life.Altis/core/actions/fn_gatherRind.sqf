private["_sum","_punkte"];
_sum = ["rindu",1,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
_punkte = 1;

if (_punkte > 0) then
{
	sleep 90;
	hint "aktiviert";
	
	if(_sum > 0) then
	{
		life_action_gather = true;
		titleText["Jage Rinder...","PLAIN"];
		player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
		sleep 7;
		if(([true,"rindu",_sum] call life_fnc_handleInv)) then
		{
			titleText["Du hast 1 Rohfleisch gesammelt!","PLAIN"];
		};
	}
	else
	{
		hint localize "STR_NOTF_InvFull";
	};
	life_action_gather = false;
	
	sleep 180;
	_punkte = 0;
};