if (playerSide == independent) then {
	if ((uniform player) == "U_I_HeliPilotCoveralls") then
	{
		[[player,"images\med_uniform.jpg"], "life_fnc_setUniform", true, true] spawn BIS_fnc_MP;
	};
};

if (playerSide == east) then {
	if ((uniform player) == "U_C_WorkerCoveralls") then
	{
		[[player,"images\adac.jpg"], "life_fnc_setUniform", true, true] spawn BIS_fnc_MP;
	};
};