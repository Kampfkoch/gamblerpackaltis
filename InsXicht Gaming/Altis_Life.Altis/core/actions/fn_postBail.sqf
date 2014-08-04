/*
	File: fn_postBail.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Called when the player attempts to post bail.
	Needs to be revised.
*/
private["_unit"];
_unit = _this select 1;
if(life_bail_paid) exitWith {};
if(isNil {life_bail_amount}) then {life_bail_amount = 10000;};
if(!isNil "life_canpay_bail") exitWith {hint "Du musst mindestens 3 Minuten im Gefängnis verbringen, bevor du die Kaution bezahlen kannst."};
if(life_atmcash < life_bail_amount) exitWith {hint format["Du hast keine $%1 um die Kaution zu bezahlen.",life_bail_amount];};

life_atmcash = life_atmcash - life_bail_amount;
life_bail_paid = true;
[[0,format["%1 has posted bail!", _unit getVariable ["realname",name _unit]]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;