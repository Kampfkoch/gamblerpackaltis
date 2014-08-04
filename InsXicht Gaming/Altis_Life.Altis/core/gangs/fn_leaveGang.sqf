/*
	File: fn_leaveGang.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Functionality for leaving the gang.
*/
private["_index","_gang","_name","_group","_locked","_owner","_ownerID","_new_owner"];
_index = [life_my_gang,life_gang_list] call fnc_index;
if(_index == -1) exitWith {life_my_gang = ObjNull;};

_gang = life_gang_list select _index;
_name = _gang select 0;
_group = _gang select 1;
_locked = _gang select 2;
_owner = _gang select 3;
_ownerID = _gang select 4;

if(getPlayerUID player == _ownerID) then
{
	if(count (units(group player)) > 1) then
	{
		{
			if(_x != player) exitWith
			{
				_new_owner = _x;
			};
		} foreach (units (group player));
		
		life_gang_list set[_index,[_name,_group,_locked,str(_new_owner),(getPlayerUID _new_owner)]];
		publicVariable "life_gang_list";
		[[_new_owner,_group], "clientGangLeader",_new_owner,false] spawn life_fnc_MP;
		[[getPlayerUID _new_owner,_name], "MSC_fnc_updateGangLeader",false,false] spawn life_fnc_MP;
	}
		else
	{
		life_gang_list set [_index,-1];
		life_gang_list = life_gang_list - [-1];
		publicVariable "life_gang_list";
		[[_name], "MSC_fnc_removeGang",false,false] spawn life_fnc_MP;
	};
};

life_my_gang = ObjNull;
if(rank player != "PRIVATE") then
{
	player setRank "PRIVATE";
};
[player] joinSilent (createGroup civilian);
[[getPlayerUID player, _name],"MSC_fnc_removeGangPlayer",false,false] spawn life_fnc_MP;
hint "Du hast die Gang verlassen.";


closeDialog 0;