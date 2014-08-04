/*
	File: fn_removeItem.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Removes the selected item & amount to remove from the players
	virtual inventory.
*/
private["_data","_value","_obj","_pos","_ind"];
disableSerialization;
_data = lbData[2005,(lbCurSel 2005)];
_value = ctrlText 2010;
if(_data == "") exitWith {hint "Du hast nichts zu entfernen wählen.";};
if(!([_value] call fnc_isnumber)) exitWith {hint "Du hast keine gueltige Zahl eingegeben."};
if(parseNumber(_value) <= 0) exitWith {hint "Du musst die Menge eingeben was du an Items entfernen willst."};
_ind = [_data,life_illegal_items] call fnc_index;
if(_ind != -1 && ([west,getPos player,100] call life_fnc_nearUnits)) exitWith {titleText["Das ist ein Illegales Item, du kannst es nicht entfernen weil Polizisten in der naehe sind.","PLAIN"]};
if(player != vehicle player) exitWith {titleText["Du kannst keine Items entfernen wenn du im Fahrzeug bist!","PLAIN"]};
if(!([false,_data,(parseNumber _value)] call life_fnc_handleInv)) exitWith {hint "Du kannst nicht so viele Items auswaehlen, vielleicht hast du nicht so viele dabei!"};
_type = [_data,0] call life_fnc_varHandle;
_type = [_type] call life_fnc_varToStr;
hint format["Du hast %1 %2 aus deinem Inventar entfernt.",(parseNumber _value), _type];
	
[] call life_fnc_p_updateMenu;