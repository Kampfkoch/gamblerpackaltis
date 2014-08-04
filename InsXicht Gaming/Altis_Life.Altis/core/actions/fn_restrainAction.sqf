/*
	File: fn_restrainAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Retrains the target.
*/
private["_unit"];
_unit = cursorTarget;
if(isNull _unit) exitWith {}; //Not valid
if((_unit getVariable "restrained")) exitWith {};
if((side player == west) && (side _unit == west)) exitWith {}; //WEST-WEST nono
if((side player == civilian) && !license_civ_rebel && !(["RESTRAIN"] call life_fnc_permRuleG)) exitWith {}; //no rebel license => nono
if(player == _unit) exitWith {};
if(!isPlayer _unit) exitWith {};
//Broadcast!
player say3D "cuff";


_unit setVariable["restrained",true,true];
[[player], "life_fnc_restrain", _unit, false] spawn life_fnc_MP;
[[0,format["%1 was restrained by %2",_unit getVariable["realname", name _unit], player getVariable["realname",name player]]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;