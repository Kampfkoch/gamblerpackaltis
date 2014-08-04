/*
	File: fn_ticketGive.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gives a ticket to the targeted player.
*/
private["_val"];
if(isNil {life_ticket_unit}) exitWith {hint "Der ausgewählte Spieler ist nicht mehr da."};
if(isNull life_ticket_unit) exitWith {hint "Der ausgewählte Spieler ist nicht mehr da."};
_val = ctrlText 2652;
if(!([_val] call fnc_isnumber)) exitWith {hint "Du hat keine Zahl eingegeben."};
if((parseNumber _val) > 600000) exitWith {hint "Tickets dürfen nicht mehr wie 600000€ betragen."};
[[0,format["%1 gave a ticket of $%2 to %3",player getVariable["realname",name player],[(parseNumber _val)] call life_fnc_numberText,life_ticket_unit getVariable["realname",name life_ticket_unit]]],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
[[player,(parseNumber _val)],"life_fnc_ticketPrompt",life_ticket_unit,false] spawn life_fnc_MP;
closeDialog 0;