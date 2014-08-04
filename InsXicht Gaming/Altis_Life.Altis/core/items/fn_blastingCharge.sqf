/*
	Author: Bryan "Tonic" Boardwine

	Description:
	Blasting charge is used for the federal reserve vault and nothing  more.. Yet.
*/
private["_vault","_handle"];
_vault = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _vault) exitWith {}; //Bad object
if(typeOf _vault != "Land_CargoBox_V1_F") exitWith {hint "Dies kann nur auf einem Depot verwendet werden."};
if(_vault getVariable["chargeplaced",false]) exitWith {hint "Es gibt bereits eine Ladung auf dieses Depot."};
if(_vault getVariable["safe_open",false]) exitWith {hint "Der Tresor ist bereits geoeffnet."};
if(!([false,"blastingcharge",1] call life_fnc_handleInv)) exitWith {}; //Error?

_vault setVariable["chargeplaced",true,true];
[[1,"A blasting charge has been placed on the federal reserves vault, You have till the clock runs out to disarm the charge!"],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
hint "The timer is ticking! Keep the cops away from the vault!";
_handle = [] spawn life_fnc_demoChargeTimer;
[[],"life_fnc_demoChargeTimer",west,false] spawn life_fnc_MP;

waitUntil {scriptDone _handle};
sleep 0.9;
if(!(fed_bank getVariable["chargeplaced",false])) exitWith {hint "The charge has been disarmed!"};

_bomb = "Bo_GBU12_LGB_MI10" createVehicle [getPosATL fed_bank select 0, getPosATL fed_bank select 1, (getPosATL fed_bank select 2)+0.5];
fed_bank setVariable["chargeplaced",false,true];
fed_bank setVariable["safe_open",true,true];

hint "The vault is now opened";