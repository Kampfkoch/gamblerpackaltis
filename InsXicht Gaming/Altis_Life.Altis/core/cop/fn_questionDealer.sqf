/*
	File: fn_questionDealer.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Questions the drug dealer and sets the sellers wanted.
*/
private["_sellers","_names"];
_sellers = (_this select 0) getVariable["sellers",[]];
if(count _sellers == 0) exitWith {hint "Niemand hat was kuerzlich verkauft!"}; //No data.
life_action_inUse = true;
_names = "";
{
	if(_x select 2 > 75000) then
	{
		_val = round((_x select 2) / 16);
	};
	[[_x select 0,_x select 1,"483",_val],"life_fnc_wantedAdd",false,false] spawn life_fnc_MP;
	_names = _names + format["%1<br/>",_x select 1];
} foreach _sellers;

hint parseText format["Diese Personen haben vor kurzem bei mir was verkauft:<br/><br/>%1",_names];
(_this select 0) setVariable["sellers",[],true];
life_action_inUse = false;