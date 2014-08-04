/*
	File: fn_revived.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	THANK YOU JESUS I WAS SAVED!
*/
private["_medic","_dir"];
_medic = [_this,0,"Unknown Medic",[""]] call BIS_fnc_param;
_oldGear = [life_corpse] call life_fnc_fetchDeadGear;
[_oldGear] spawn life_fnc_loadDeadGear;
[[life_corpse],"life_fnc_corpse",nil,FALSE] spawn life_fnc_MP;
_dir = getDir life_corpse;
hint format["%1 hat dich wiederbelebt und dir wurden %2€ vom Konto abgebucht.",_medic,[(call life_revive_fee)] call life_fnc_numberText];

closeDialog 0;
life_deathCamera cameraEffect ["TERMINATE","BACK"];
camDestroy life_deathCamera;

//Take fee for services.
if(life_atmcash > (call life_revive_fee)) then {
	life_atmcash = life_atmcash - (call life_revive_fee);
} else {
	life_atmcash = 0;
};

//Bring me back to life.
player setDir _dir;
player setPosASL (visiblePositionASL life_corpse);
life_corpse setVariable["Revive",nil,TRUE];
life_corpse setVariable["name",nil,TRUE];
hideBody life_corpse;

player setVariable["Revive",nil,TRUE];
player setVariable["name",nil,TRUE];
player setVariable["Reviving",nil,TRUE];


//Aktion, Kleidung, Essen, Trinken & Lebensanzeige hinzufügen
[] call life_fnc_hudUpdate;
[] call life_fnc_setupActions;
[] call life_fnc_equipGear;