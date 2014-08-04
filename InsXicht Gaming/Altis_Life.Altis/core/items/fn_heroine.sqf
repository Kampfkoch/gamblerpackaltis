/*
	@Filename: fn_heroine.sqf
	@Author: Kuchiha (Modified by Varmonger)
	@Edited: 19.03.2014
*/
private["_force"];
for "_i" from 0 to 200 do
{
	_force = random 15;
	"chromAberration" ppEffectEnable true;
	"chromAberration" ppEffectAdjust [_force / 24, _force / 24, false];
	"chromAberration" ppEffectCommit (0.3 + random 0.1);
	waituntil {ppEffectCommitted "chromAberration"};
	sleep 0.02;
};

"chromAberration" ppEffectEnable false;