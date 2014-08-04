/*
	File: fn_healHospital.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Doesn't matter, will be revised later.
*/
if(life_cash < 50) exitWith {hint "Du hast keine 50 um dich zu heilen."};
titleText["Dr. House heilt sie... habe keine angst...","PLAIN"];
sleep 2;
titleText["Hoppla, ich glaube, ich steckte die Nadel an die falsche Stelle","PLAIN"];
sleep 5;
if(player distance (_this select 0) > 5) exitWith {titleText["You need to be within 5m while the doctor is healing you.","PLAIN"]};
titleText["Sie sind nun vollstaendig geheilt!","PLAIN"];
player setdamage 0;
life_cash = life_cash - 50;