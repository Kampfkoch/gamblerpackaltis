/*
	File: fn_bankTransfer.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Figure it out again.
*/
private["_val","_unit","_tax"];
_val = parseNumber(ctrlText 2702);
_unit = call compile format["%1",(lbData[2703,(lbCurSel 2703)])];
if(isNull _unit) exitWith {};
if((lbCurSel 2703) == -1) exitWith {hint "Du musst jemanden auswaehlen."};
if(isNil "_unit") exitWith {hint "Der Spieler den du ausgewählt hast existiert nicht mehr?"};
if(_val > 999999) exitWith {hint "Du kannst nicht mehr als 999999€ überweisen.";};
if(_val < 0) exitwith {};
if(!([str(_val)] call life_fnc_isnumeric)) exitWith {hint "Bitte eine Zahl eingeben."};
if(_val > life_atmcash) exitWith {hint "Du hast nicht so viel Geld auf der Bank!"};
_tax = [_val] call life_fnc_taxRate;
if((_val + _tax) > life_atmcash) exitWith {hint format["Du hast nicht so viel Geld auf deinem Konto, um %1€ zu ueberweisen. Du brauchst weitere %2€ fuer die Ueberweisung.",_val,_tax]};

life_atmcash = life_atmcash - (_val + _tax);

[[_val,player getVariable["realname",name player]],"clientWireTransfer",_unit,false] spawn life_fnc_MP;
[] call life_fnc_atmMenu;
hint format["Du hast %2, %1€ ueberwiesen!\n\nEs fallen weitere %3€ an Kosten an.",[_val] call life_fnc_numberText,_unit getVariable["realname",name _unit],[_tax] call life_fnc_numberText];
[] call SOCK_fnc_updateRequest;