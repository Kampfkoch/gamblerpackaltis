/*
	File: welcomecredits.sqf
	Author: HellsGateGaming.com
	Date: 14/12/2013
	Description:
	Creates an intro on the bottom-right hand corner of the screen.
*/

_onScreenTime = 15;

sleep 5; //Wait in seconds before the credits start after player is in-game
 
_role1 = "Herzlich willkommen beim";
_role1names = ["InsXicht-Gaming","Altis Life Server"];
_role2 = "Webseite/Teamspeak";
_role2names = ["www.altisliferp.at.vu"];
_role3 = "Admins";
_role3names = ["BoB","bliNk","OesiBua"];
_role4 = "Neue Jobs";
_role4names = ["Gold","Silber","Uran","Trauben -> Vodka","Trauben -> Schwarzgebranntes","Meth","Tryptophan"];
_role5 = "Neue Felder in Kavala";
_role5names = ["Trauben","Bananen","Kirschen","Birnen"];
_role6 = "Aktuelle Neuerungen";
_role6names = ["Coctails Mixen","Housing","Sanitaeter","Adac"];

{
sleep 2;
_memberFunction = _x select 0;
_memberNames = _x select 1;
_finalText = format ["<t size='0.6' color='#C31319' align='right'>%1<br /></t>", _memberFunction];
_finalText = _finalText + "<t size='0.85' color='#FFFFFF' align='right'>";
{_finalText = _finalText + format ["%1<br />", _x]} forEach _memberNames;
_finalText = _finalText + "</t>";
_onScreenTime + (((count _memberNames) - 1) * 0.9);
[
_finalText,
[safezoneX + safezoneW - 0.8,0.50], //DEFAULT: 0.5,0.35
[safezoneY + safezoneH - 0.8,0.7], //DEFAULT: 0.8,0.7
_onScreenTime,
0.5
] spawn BIS_fnc_dynamicText;
sleep (_onScreenTime);
} forEach [

[_role1, _role1names],
[_role2, _role2names],
[_role3, _role3names],
[_role4, _role4names],
[_role5, _role5names],
[_role6, _role6names]
];