/*
	File: fn_createGang.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Functionality meant for creating gangs.
*/
private["_value","_len","_group","_uid"];
_value = ctrlText 2522;
_len = [_value] call KRON_StrLen;

if(_len > 25) exitWith {hint "Die Maximale Zahl an buchstaben fuer eine Gang ist 25."};
if(life_cash < 250000) exitWith {hint "Du hast keine 250000€ um eine Gang Permanente Gang zu eroeffnen!"};
if(isNil {life_gang_list}) exitWith {hint "Server not authorized for feature."};
if(([_value,life_gang_list] call fnc_index) != -1) exitWith {hint "Diesen Gang namen gibt es bereits!"};

_group = createGroup civilian;

//Set Array
life_gang_list set[count life_gang_list,[_value,_group,false,str(player),getPlayerUID player]];
publicVariable "life_gang_list";
[player] joinSilent _group;
player setRank "COLONEL";
life_my_gang = _group;
if(!isNull life_my_gang) then
{
	life_cash = life_cash - 250000;
	closeDialog 0;
	createDialog "Life_My_Gang_Diag";
	publicVariable "life_gang_list";
};
//* Create the gang in the Database:
_uid = getPlayerUID player;
[[_value, _uid],"MSC_fnc_insertGang",false,false] spawn life_fnc_MP;