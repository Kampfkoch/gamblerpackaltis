/*
	File: fn_bountyReceive.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Notifies the player he has received a bounty and gives him the cash.
*/
private["_val","_total"];
_val = [_this,0,"",["",0]] call BIS_fnc_param;
_total = [_this,1,"",["",0]] call BIS_fnc_param;

if(_val == _total) then
{
	titleText[format["Für das Verhaften eines Kriminellen hast du eine Belohnung von $%1 erhalten.",[_val] call life_fnc_numberText],"PLAIN"];
}
	else
{
	titleText[format["Für das Töten eines Kriminellen hast du eine Belohnung von $%1 erhalten. Hättest du ihn verhaftet wären es $%2 gewesen.",[_val] call life_fnc_numberText,[_total] call life_fnc_numberText],"PLAIN"];
};

life_atmcash = life_atmcash + _val;