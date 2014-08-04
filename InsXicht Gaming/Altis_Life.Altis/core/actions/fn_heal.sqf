/*
	Will be revised later
*/
if((damage player) < 0.1) exitWith {};
if(!("FirstAidKit" in (items player))) exitWith {};
player removeItem "FirstAidKit";
player playMove "AinvPknlMstpSnonWnonDnon_medic_1";
sleep 3;
player setDamage 0.1; //Heal to 75