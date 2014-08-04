/*
	File: fn_radar.sqf
	Author: Silly Aussie kid named Jaydon
	
	Description:
	Looks like weird but radar?
*/
if(playerSide != west) exitWith {};
private ["_speed","_vehicle"];
_vehicle = cursorTarget;
_speed = round speed _vehicle;

if((_vehicle isKindOf "Car") && (currentWeapon player) == "hgun_P07_snds_F" && (vehicle player == player)) then
{
	switch (true) do 
	{
		case ((_speed > 20 && _speed <= 50)) : 
		{	
			hint parseText format ["<t color='#ffffff'><t size='2'><t align='center'>Geschwindigkeitsmessung<br/><t color='#33CC33'><t align='center'><t size='1'>Geschwindigkeit %1 km/h",round  _speed];
		};
		
		case ((_speed > 51 && _speed <= 130)) : 
		{	
			hint parseText format ["<t color='#ffffff'><t size='2'><t align='center'>Geschwindigkeitsmessung<br/><t color='#EE7711'><t align='center'><t size='1'>Geschwindigkeit %1 km/h",round  _speed];
		};
		
		case ((_speed > 131)) : 
		{	
			hint parseText format ["<t color='#ffffff'><t size='2'><t align='center'>Geschwindigkeitsmessung<br/><t color='#FF0000'><t align='center'><t size='1'>Geschwindigkeit %1 km/h",round  _speed];
		};
	};
};