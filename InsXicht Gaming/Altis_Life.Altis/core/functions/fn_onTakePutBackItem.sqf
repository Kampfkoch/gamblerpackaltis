/*
	File: fn_onTakePutBackItem.sqf
	Author: Wolfgang Bahmüller
	
	Description:
	put back the item into the container and deletes it from the player
*/
private["_item","_container","_unit","_mags","_weapons","_weaponsItems","_items","_assignedItems","_backpack","_headgear","_gearDisplay","_uniform","_vest","_goggles"];

_unit = [_this,0] call BIS_fnc_param;
_container = [_this,1] call BIS_fnc_param;
_item = [_this,2,"",[""]] call BIS_fnc_param;

_weapons = weapons _unit;
_weaponsItems = primaryWeaponItems _unit;
_weaponsMags = primaryWeaponMagazine _unit;
_mags = magazines _unit;
_items = Items _unit;
_assignedItems = assignedItems _unit;
_backpack = backpack _unit;
_headgear = headgear _unit;
_uniform = uniform _unit;
_vest = vest _unit;
_goggles = goggles _unit;

if(_item in _weapons) then
{
    _unit removeWeapon _item;
    if(_item in (weapons _unit)) then
    {
        removeAllWeapons _unit;
    };
    _container addWeaponCargoGlobal [_item, 1];
    _item = "---";
};
if(_item in _weaponsItems) then
{
    _unit removePrimaryWeaponItem _item;
    _container addItemCargoGlobal [_item, 1];
    _item = "---";
};
if(_item in _weaponsMags) then
{
    _unit removePrimaryWeaponItem _item;
    _container addItemCargoGlobal [_item, 1];
    _item = "---";
};
if(_item == _headgear) then
{
    removeHeadgear _unit;
    _container addItemCargoGlobal [_item, 1];
    _item = "---";
};
if(_item == _goggles) then
{
    removeGoggles _unit;
    _container addItemCargoGlobal [_item, 1];
    _item = "---";
};
if(_item == _vest) then
{
    removeVest _unit;
    _container addItemCargoGlobal [_item, 1];
    _item = "---";
};
if(_item == _uniform) then
{
    removeUniform _unit;
    _container addItemCargoGlobal [_item, 1];
    _item = "---";
};
if(_item in _mags) then
{
    _unit removeMagazine _item;
    if(_item in (magazines _unit)) then
    {
        removeAllWeapons _unit;
    };
    _container addMagazineCargoGlobal [_item, 1];
    _item = "---";
};
if(_item in _items || _item in _assignedItems) then
{
    if(_item in _assignedItems) then
    {
        _unit unassignItem _item;
    };
    _unit removeItem _item;
    _unit removeItemFromUniform _item;
    _unit removeItemFromVest _item;
    _unit removeItemFromBackpack _item;
    _container addItemCargoGlobal [_item, 1];
    _item = "---";
};
if(_item == _backpack) then
{
    removeBackpack _unit;
    _container addBackpackCargoGlobal [_item, 1];
    _item = "---";
};

disableSerialization;
_gearDisplay = displayNull;
waitUntil {
    _gearDisplay = findDisplay 602;
    !isNull _gearDisplay;
};
//waitUntil {!(isNull (findDisplay 602))};
_gearDisplay closeDisplay 0;

hint "Finger weg von fremden Sachen! Sonst verlierst du dein Zeug!";

[1,false] call SOCK_fnc_updateRequest;
