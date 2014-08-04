/*
	File: fn_varHandle.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master handler for getting a variables name, short name, etc.
*/
private["_var","_mode"];
_var = [_this,0,"",[""]] call BIS_fnc_param;
_mode = [_this,1,-1,[0]] call BIS_fnc_param;
if(_var == "" OR _mode == -1) exitWith {""};

switch (_mode) do
{
	case 0:
	{
		switch (_var) do
		{
			case "oilu": {"life_inv_oilu"};
			case "oilp": {"life_inv_oilp"};
			case "heroinu": {"life_inv_heroinu"};
			case "heroinp": {"life_inv_heroinp"};
			case "cannabis": {"life_inv_cannabis"};
			case "marijuana": {"life_inv_marijuana"};
			case "apple": {"life_inv_apple"};
			case "water": {"life_inv_water"};
			case "rabbit": {"life_inv_rabbit"};
			case "salema": {"life_inv_salema"};
			case "ornate": {"life_inv_ornate"};
			case "mackerel": {"life_inv_mackerel"};
			case "tuna": {"life_inv_tuna"};
			case "mullet": {"life_inv_mullet"};
			case "catshark": {"life_inv_catshark"};
			case "turtle": {"life_inv_turtle"};
			case "fishing": {"life_inv_fishingpoles"};
			case "coffee": {"life_inv_coffee"};
			case "turtlesoup": {"life_inv_turtlesoup"};
			case "donuts": {"life_inv_donuts"};
			case "fuelE": {"life_inv_fuelE"};
			case "fuelF": {"life_inv_fuelF"};
			case "money": {"life_cash"};
			case "pickaxe": {"life_inv_pickaxe"};
			case "copperore": {"life_inv_copperore"};
			case "ironore": {"life_inv_ironore"};
			case "iron_r": {"life_inv_ironr"};
			case "copper_r": {"life_inv_copperr"};
			case "salt": {"life_inv_salt"};
			case "salt_r": {"life_inv_saltr"};
			case "sand": {"life_inv_sand"};
			case "glass": {"life_inv_glass"};
			case "tbacon": {"life_inv_tbacon"};
			case "lockpick": {"life_inv_lockpick"};
			case "redgull": {"life_inv_redgull"};
			case "peach": {"life_inv_peach"};
			case "diamond": {"life_inv_diamond"};
			case "diamondc": {"life_inv_diamondr"};
			case "cocaine": {"life_inv_coke"};
			case "cocainep": {"life_inv_cokep"};
			case "spikeStrip": {"life_inv_spikeStrip"};
			case "cement": {"life_inv_cement"};
			case "rock": {"life_inv_rock"};
			case "goldbar": {"life_inv_goldbar"};
			case "blastingcharge": {"life_inv_blastingcharge"};
			case "boltcutter": {"life_inv_boltcutter"};
			case "defusekit": {"life_inv_defusekit"};
			case "methu": {"life_inv_methu"};
			case "methp": {"life_inv_methp"};
			case "moonshine": {"life_inv_moonshine"};
			case "vodka": {"life_inv_vodka"};
			case "grapes": {"life_inv_grapes"};
			case "goldu": {"life_inv_goldu"};
			case "goldp": {"life_inv_goldp"};
			case "uranu": {"life_inv_uranu"};
			case "uranp": {"life_inv_uranp"};
			case "silberu": {"life_inv_silberu"};
			case "silberp": {"life_inv_silberp"};
			case "frogs": {"life_inv_frogs"};
			case "frogslsd": {"life_inv_frogslsd"};
			case "handcuffs": {"life_inv_handcuffs"};
			case "banane": {"life_inv_banane"};
			case "cerises": {"life_inv_cerises"};
			case "pcolap": {"life_inv_pcolap"};
			case "sotbp": {"life_inv_sotbp"};
			case "maitp": {"life_inv_maitp"};
			case "birne": {"life_inv_birne"};
			case "pille": {"life_inv_pille"};
			case "storage1": {"life_inv_storage1"};
			case "storage2": {"life_inv_storage2"};
			case "battery": {"life_inv_battery"};
		};
	};
	
	case 1:
	{
		switch (_var) do
		{
			case "life_inv_oilu": {"oilu"};
			case "life_inv_oilp": {"oilp"};
			case "life_inv_heroinu": {"heroinu"};
			case "life_inv_heroinp": {"heroinp"};
			case "life_inv_cannabis": {"cannabis"};
			case "life_inv_marijuana": {"marijuana"};
			case "life_inv_apple": {"apple"};
			case "life_inv_water": {"water"};
			case "life_inv_rabbit": {"rabbit"};
			case "life_inv_salema": {"salema"};
			case "life_inv_ornate": {"ornate"};
			case "life_inv_mackerel": {"mackerel"};
			case "life_inv_tuna": {"tuna"};
			case "life_inv_mullet": {"mullet"};
			case "life_inv_catshark": {"catshark"};
			case "life_inv_turtle": {"turtle"};
			case "life_inv_fishingpoles": {"fishing"};
			case "life_inv_coffee": {"coffee"};
			case "life_inv_turtlesoup": {"turtlesoup"};
			case "life_inv_donuts": {"donuts"};
			case "life_inv_fuelE": {"fuelE"};
			case "life_inv_fuelF": {"fuelF"};
			case "life_cash": {"money"};
			case "life_inv_pickaxe": {"pickaxe"};
			case "life_inv_copperore": {"copperore"};
			case "life_inv_ironore": {"ironore"};
			case "life_inv_ironr": {"iron_r"};
			case "life_inv_copperr": {"copper_r"};
			case "life_inv_sand": {"sand"};
			case "life_inv_salt": {"salt"};
			case "life_inv_glass": {"glass"};
			case "life_inv_redgull": {"redgull"};
			case "life_inv_lockpick": {"lockpick"};
			case "life_inv_tbacon": {"tbacon"};
			case "life_inv_peach": {"peach"};
			case "life_inv_diamond": {"diamond"};
			case "life_inv_diamondr": {"diamondc"};
			case "life_inv_saltr": {"salt_r"};
			case "life_inv_coke": {"cocaine"};
			case "life_inv_cokep": {"cocainep"};
			case "life_inv_spikeStrip": {"spikeStrip"};
			case "life_inv_cement": {"cement"};
			case "life_inv_rock": {"rock"};
			case "life_inv_goldbar": {"goldbar"};
			case "life_inv_blastingcharge": {"blastingcharge"};
			case "life_inv_boltcutter": {"boltcutter"};
			case "life_inv_defusekit": {"defusekit"};
			case "life_inv_methu": {"methu"};
			case "life_inv_methp": {"methp"};
			case "life_inv_moonshine": {"moonshine"};
			case "life_inv_vodka": {"vodka"};
			case "life_inv_grapes": {"grapes"};
			case "life_inv_goldu": {"goldu"};
			case "life_inv_goldp": {"goldp"};
			case "life_inv_uranu": {"uranu"};
			case "life_inv_uranp": {"uranp"};
			case "life_inv_silberu": {"silberu"};
			case "life_inv_silberp": {"silberp"};
			case "life_inv_frogs": {"frogs"};
			case "life_inv_frogslsd": {"frogslsd"};
			case "life_inv_handcuffs": {"handcuffs"};
			case "life_inv_banane": {"banane"};
			case "life_inv_cerises": {"cerises"};
			case "life_inv_pcolap": {"pcolap"};
			case "life_inv_sotbp": {"sotbp"};
			case "life_inv_maitp": {"maitp"};
			case "life_inv_birne": {"birne"};
			case "life_inv_pille": {"pille"};
			case "life_inv_storage1": {"storage1"};
			case "life_inv_storage2": {"storage2"};
			case "life_inv_battery": {"battery"};
		};
	};
};
