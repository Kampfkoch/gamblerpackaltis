/*

	Updates player clothing by replacing vanilla by custom ones
        by Audacious

*/

private["_uniform","_backpack"];

///Uniform
////////////////

_uniform = uniform player;

switch(true) do
{
	case (playerSide == west && _uniform == "U_Rangemaster"):
	{
		if( (call life_coplevel) > 0) then
		{
			player setObjectTextureGlobal  [0, "images\recruit_uniform_rangemaster.jpg"]; 
		};

		if(backpack player != "") then {(unitBackpack player) setObjectTextureGlobal [0,""];};
	};
	
	case (playerSide == west && _uniform == "U_B_CombatUniform_mcam_vest"):
	{
		if( (call life_coplevel) > 2) then
		{
			player setObjectTextureGlobal  [0, "images\cop_officer.jpg"]; 
		};

		if(backpack player != "") then {(unitBackpack player) setObjectTextureGlobal [0,""];};
	};
	
	case (playerSide == west && _uniform == "U_B_SpecopsUniform_sgg"):
	{
		if( (call life_coplevel) > 4) then
		{
			player setObjectTextureGlobal  [0, "images\cop_captain.jpg"]; 
		};

		if(backpack player != "") then {(unitBackpack player) setObjectTextureGlobal [0,""];};
	};
	
	case (playerSide == west && _uniform == "U_B_CombatUniform_mcam"):
	{
		if( (call life_coplevel) > 6) then
		{
			player setObjectTextureGlobal  [0, "images\cop_sergeant.jpg"]; 
		};

		if(backpack player != "") then {(unitBackpack player) setObjectTextureGlobal [0,""];};
	};
	
	case (playerSide == independent && _uniform == "U_I_HeliPilotCoveralls"):
	{
		if( (call life_mediclevel) > 0) then
		{
			player setObjectTextureGlobal  [0, "images\med_uniform.jpg"];
		};
		
		if(backpack player != "") then {(unitBackpack player) setObjectTextureGlobal [0,""];};
	};
	
	case (playerSide == east && _uniform == "U_C_WorkerCoveralls"):
	{
		if( (call life_adaclevel) > 0) then
		{
			player setObjectTextureGlobal  [0, "images\adac.jpg"];
		};
		
		if(backpack player != "") then {(unitBackpack player) setObjectTextureGlobal [0,""];};
	};	
};