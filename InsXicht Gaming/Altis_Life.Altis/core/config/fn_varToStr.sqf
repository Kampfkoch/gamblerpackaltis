/*
	File: fn_varToStr.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Takes the long-name (variable) and returns a display name for our
	virtual item.
*/
private["_var"];
_var = [_this,0,"",[""]] call BIS_fnc_param;
if(_var == "") exitWith {""};

switch (_var) do
{
	//Virtual Inventory Items
	case "life_inv_oilu": {"Rohoel"};
	case "life_inv_oilp": {"Oel"};
	case "life_inv_heroinu": {"Unreines Heroin"};
	case "life_inv_heroinp": {"Heroin"};
	case "life_inv_cannabis": {"Cannabis"};
	case "life_inv_marijuana": {"Marijuana"};
	case "life_inv_apple": {"Apfel"};
	case "life_inv_rabbit": {"Hasenfleisch"};
	case "life_inv_salema": {"Salema Fleisch"};
	case "life_inv_ornate": {"Ornate Fleisch"};
	case "life_inv_mackerel": {"Makrelen Fleisch"};
	case "life_inv_tuna": {"Thunfisch Fleisch"};
	case "life_inv_mullet": {"Seebarsch Fleisch"};
	case "life_inv_catshark": {"Katzenhai Fleich"};
	case "life_inv_turtle": {"Schildkroete"};
	case "life_inv_fishingpoles": {"Angelrute"};
	case "life_inv_water": {"Wasserflasche"};
	case "life_inv_coffee": {"Caffee"};
	case "life_inv_turtlesoup": {"Schildkroetensuppe"};
	case "life_inv_donuts": {"Donuts"};
	case "life_inv_fuelE": {"Benzinkanister Leer"};
	case "life_inv_fuelF": {"Benzinkanister Voll"};
	case "life_inv_pickaxe": {"Spitzhacke"};
	case "life_inv_copperore": {"Kupfererz"};
	case "life_inv_ironore": {"Eisenerz"};
	case "life_inv_ironr": {"Eisenbarren"};
	case "life_inv_copperr": {"Kupferbarren"};
	case "life_inv_sand": {"Sand"};
	case "life_inv_salt": {"Salz"};
	case "life_inv_saltr": {"Reines Salz"};
	case "life_inv_glass": {"Glas"};
	case "life_inv_diamond": {"Rohdiamant"};
	case "life_inv_diamondr": {"Diamant"};
	case "life_inv_tbacon": {"Speck"};
	case "life_inv_redgull": {"RedBull"};
	case "life_inv_lockpick": {"Dietrich"};
	case "life_inv_peach": {"Pfirsich"};
	case "life_inv_coke": {"Unreines Kokain"};
	case "life_inv_cokep": {"Kokain"};
	case "life_inv_spikeStrip": {"Nagelbaender"};
	case "life_inv_rock": {"Stein"};
	case "life_inv_cement": {"Zementsack"};
	case "life_inv_goldbar": {"Platin"};
	case "life_inv_blastingcharge": {"Sprengladung"};
	case "life_inv_boltcutter": {"Bolzenschneider"};
	case "life_inv_defusekit": {"Entschärfungs Kit"};
	case "life_inv_methu": {"Unreines Methamphetamine"};
	case "life_inv_methp": {"Methamphetamine"};
	case "life_inv_moonshine": {"Schwarzgebranntes"};
	case "life_inv_vodka": {"Vodka"};
	case "life_inv_grapes": {"Trauben"};
	case "life_inv_goldu": {"Golderz"};
	case "life_inv_goldp": {"Goldbarren"};
	case "life_inv_silberu": {"Silbererz"};
	case "life_inv_silberp": {"Silberbarren"};
	case "life_inv_uranu": {"Uran"};
	case "life_inv_uranp": {"Uranium"};
	case "life_inv_frogs": {"Tryptophan"};
	case "life_inv_frogslsd": {"Lysergsaeurediethylamid"};
	case "life_inv_handcuffs": {"Handschellen"};
	case "life_inv_banane": {"Banane"};
	case "life_inv_cerises": {"Kirsche"};
	case "life_inv_pcolap": {"Pina Colada"};
	case "life_inv_sotbp": {"Sex on the Beach"};
	case "life_inv_maitp": {"Mai Tai"};
	case "life_inv_birne": {"Birne"};
	case "life_inv_pille": {"Zyankalikapsel"};	
	case "life_inv_storage1": {"Haus Kiste"};
    case "life_inv_storage2": {"Grosse Haus Kiste"};
	case "life_inv_battery": {"Handybatterie"};
	
	//License Block
	case "license_civ_quad": {"Fuehrerschein Quad"};
	case "license_civ_kart": {"Fuehrerschein Kart"};
	case "license_civ_driver": {"Fuehrerschein B"};
	case "license_civ_air": {"Pilotenschein"};
	case "license_civ_heroin": {"Herointraining"};
	case "license_civ_gang": {"Gang Lizens"};
	case "license_civ_oil": {"Oel Lizens"};
	case "license_civ_dive": {"Taucherschein"};
	case "license_civ_boat": {"Bootsschein"};
	case "license_civ_gun": {"Waffenschein"};
	case "license_cop_air": {"Pilotenschein"};
	case "license_cop_swat": {"SEK"};
	case "license_cop_cg": {"Kuestenwache"};
	case "license_civ_rebel": {"Rebellentraining"};
	case "license_civ_truck": {"Fuehrerschein C"};
	case "license_civ_diamond": {"Diamant Lizens"};
	case "license_civ_copper": {"Kupfer Lizens"};
	case "license_civ_iron": {"Eisen Lizens"};
	case "license_civ_sand": {"Sand Lizens"};
	case "license_civ_salt": {"Salz Lizens"};
	case "license_civ_coke": {"Kokaintraining"};
	case "license_civ_marijuana": {"Marijuanatraining"};
	case "license_civ_cement": {"Zement Lizens"};
	case "license_civ_meth": {"Crystal-Methtraining"};
	case "license_civ_grapes": {"Staatl.Brenn Lizens"};
	case "license_civ_moonshine": {"Schwarzbrenn Lizens"};
	case "license_civ_gold": {"Gold Lizens"};
	case "license_civ_silber": {"Silber Lizens"};
	case "license_civ_uran": {"Urantraining"};
	case "license_civ_special": {"Ganglackierung"};
	case "license_civ_lsd": {"Lysergsaeurediethylamidtraining"};
	case "license_civ_pcola": {"Pina colada Mix"};
	case "license_civ_sotb": {"Sex on the Beach Mix"};
	case "license_civ_mait": {"Mai Tai Mix"};
	case "license_civ_home": {"Eigentumsurkunde"};
};