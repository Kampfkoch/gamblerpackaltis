/*
	File: fn_hudUpdate.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Updates the HUD when it needs to.
*/
private["_ui","_food","_water","_health","_battery","_money","_cash"];
disableSerialization;

_ui = uiNameSpace getVariable ["playerHUD",displayNull];
if(isNull _ui) then {[] call life_fnc_hudSetup;};
_food = _ui displayCtrl 23500;
_water = _ui displayCtrl 23510;
_health = _ui displayCtrl 23515;
_battery = _ui displayCtrl 23520;
_money = _ui displayCtrl 23525;

_cash = life_cash + life_atmcash;

//Update food
_food ctrlSetPosition [safeZoneX+safeZoneW-0.090,safeZoneY+safeZoneH-0.548];
_food ctrlSetText format["%1", life_hunger];
_food ctrlCommit 0;
//Update Water
_water ctrlSetPosition [safeZoneX+safeZoneW-0.090,safeZoneY+safeZoneH-0.502];
_water ctrlSetText format["%1", life_thirst];
_water ctrlCommit 0;
//Update Health
_health ctrlSetPosition [safeZoneX+safeZoneW-0.090,safeZoneY+safeZoneH-0.456];
_health ctrlSetText format["%1", round((1 - (damage player)) * 100)];
_health ctrlCommit 0;
//Update battery
_battery ctrlSetPosition [safeZoneX+safeZoneW-0.090,safeZoneY+safeZoneH-0.410];
_battery ctrlSetText format["%1", life_battery];
_battery ctrlCommit 0;
//Update Money
_money ctrlSetPosition [safeZoneX+safeZoneW-0.090,safeZoneY+safeZoneH-0.360];
if(_cash >= 100000000) then {
	_cash = round(_cash / 1000000);
	_money ctrlSetText format["%1", format["%1M",_cash]];
} else {
	if(_cash >= 100000) then {
		_cash = round(_cash / 1000);
		_money ctrlSetText format["%1", format["%1K",_cash]];
	} else {
		_money ctrlSetText format["%1", format["%1",_cash]];
	};
};
_money ctrlCommit 0;