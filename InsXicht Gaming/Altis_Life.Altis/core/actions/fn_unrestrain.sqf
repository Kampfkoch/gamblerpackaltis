/*
	File: fn_unrestrain.sqf
*/
private["_unit"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;

if(playerSide == civilian) then {

	player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";

	if(isNull _unit OR !(_unit getVariable["restrained",FALSE])) exitWith {}; //Error check?

	_unit setVariable["restrained",FALSE,TRUE];
	_unit setVariable["Escorting",FALSE,TRUE];
	_unit setVariable["transporting",FALSE,TRUE];
	detach _unit;
	player say3D "uncuff";

	[true,"handcuffs",1] call life_fnc_handleInv;

	//[[0,format["%1 wurde von %2 entfesselt!",_unit getVariable["realname",name _unit], player getVariable["realname",name player]]],"life_fnc_broadcast",west,FALSE] call life_fnc_MP;
	
}
else
{

	if(isNull _unit OR !(_unit getVariable["restrained",FALSE])) exitWith {}; //Error check?

	_unit setVariable["restrained",FALSE,TRUE];
	_unit setVariable["Escorting",FALSE,TRUE];
	_unit setVariable["transporting",FALSE,TRUE];
	detach _unit;
	player say3D "uncuff";

	[true,"handcuffs",1] call life_fnc_handleInv;

	//[[0,format["%1 wurde von %2 entfesselt!",_unit getVariable["realname",name _unit], player getVariable["realname",name player]]],"life_fnc_broadcast",west,FALSE] call life_fnc_MP;

};