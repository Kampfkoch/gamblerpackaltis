/*
	File: fn_virt_shops.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Config for virtual shops.
*/
private["_shop"];
_shop = _this select 0;

switch (_shop) do
{
	case "market": {["Supermarkt",["water","redgull","tbacon","lockpick","pickaxe","fuelE","fuelF","grapes","apple","peach","banane","cerises","birne","battery"]]};
	case "coctail": {["Coctailbar",["grapes","apple","peach","banane","cerises","birne","pcolap","sotbp","maitp"]]};
	case "wongs": {["Schildkroetendealer",["turtlesoup","turtle"]]};
	case "coffee": {["Stratis Coffee Club",["coffee","donuts"]]};
	case "heroin": {["Drogendealer",["cocainep","heroinp","methp","marijuana","frogslsd"]]};
	case "oil": {["Oel Haendler",["oilp"]]};
	case "fishmarket": {["Fischmarkt",["salema","ornate","mackerel","mullet","tuna","catshark","fishing"]]};
	case "glass": {["Glas Haendler",["glass"]]};
	case "iron": {["Kupfer / Eisen - Haendler",["iron_r","copper_r"]]};
	case "diamond": {["Diamant Haendler",["diamondc"]]};
	case "salt": {["Salz Haendler",["salt_r"]]};
	case "cop": {["Polizeiitemladen",["handcuffs","donuts","coffee","spikeStrip","water","rabbit","apple","redgull","fuelE","fuelF","battery","defusekit"]]};
	case "cement": {["Zement Haendler",["cement"]]};
	case "beer": {["Schnappsladen",["vodka"]]};
	case "gas": {["Tankstelle",["water","redgull","tbacon","fuelE","fuelF","pickaxe"]]};
	case "juwel": {["Juwelier",["goldp","silberp"]]};
	case "blackmarket": {["Schwarzmarkt",["moonshine","uranp"]]};
	case "rebel": {["Rebellenshop",["pille","handcuffs","pickaxe","fuelE","fuelF","water","redgull","tbacon","boltcutter","blastingcharge"]]};
	case "house": {["Immobilienmarkler",["storage1"]]};
	case "adacmed": {["Sani/Medic",["water","redgull","tbacon","fuelE","fuelF","battery","fuelPipe"]]};
};