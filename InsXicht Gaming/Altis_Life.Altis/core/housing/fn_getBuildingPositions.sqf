private["_building","_arr","_restricted","_exitLoop","_i"];
_building = _this select 0;
_arr = [];

_restricted = switch(typeOf _building) do
{
case "Land_i_House_Big_02_V1_F": {[0,1,2,3,4]};
case "Land_i_House_Big_02_V2_F": {[0,1,2,3,4]};
case "Land_i_House_Big_02_V3_F": {[0,1,2,3,4]};
default {[]};
};

_i = 0;
_exitLoop = false; //Loops are not fun.
while {true} do {
if(!(_i in _restricted)) then {
_pos = _building buildingPos _i;
if(_pos isEqualTo [0,0,0]) exitWith {_exitLoop = true;};
_arr set[count _arr,_pos];
};
if(_exitLoop) exitWith {};
_i = _i + 1;
};

_arr;
