/*
	File: fn_playerTags.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Adds the tags above other players heads when close and have visible range.
*/
private["_visible","_position","_nearUnits","_vis","_pos","_near","_name","_icon","_width","_height"];
_nearUnits = (visiblePosition player) nearEntities ["Man",5];
{
	if(player distance _x < 5 && isPlayer _x && _x != player) then {
		_visible = lineIntersects [eyePos player, eyePos _x,player, _x];
		if(!_visible) then {
			_position = visiblePosition _x;
			_position set[2,(getPosATL _x select 2) + 2.2];
			_width = 0.85;
				_height = 0.85;
				switch (_x getVariable["coplevel", 0]) do
				{
					case (1) : {_name = format["Rekrut | %1", name _x];_icon = "";};
					case (2) : {_name = format["Streifenpolizist | %1", name _x];_icon = "";};
					case (3) : {_name = format["Kommissar | %1", name _x];_icon = "";};
					case (5) : {_name = format["Hauptkommissar | %1", name _x];_icon = "";};
					case (7) : {_name = format["Chef | %1", name _x];_icon = "";};
					default {_name = name _x; _icon = ""; _width = 0; _height = 0;}
				};
                if (_x getVariable["coplevel", 0] > 0) then
				{
					_icon = [((_x getVariable["coplevel", 0]) - 1),"texture"] call BIS_fnc_rankParams;
				};
			drawIcon3D [_icon,[1,1,1,1],_position,_width,_height,0,_name,0,0.04];
		};
	};
} foreach _nearUnits;