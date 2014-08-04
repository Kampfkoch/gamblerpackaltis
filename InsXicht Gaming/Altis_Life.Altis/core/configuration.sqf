#include <macro.h>
/*
	Master Life Configuration File
	This file is to setup variables for the client, there are still other configuration files in the system

*****************************
****** Backend Variables *****
*****************************
*/
nn_last_vehicles = [];
nn_empInUse = false;
life_query_time = time;
life_action_delay = time;
life_trunk_vehicle = Objnull;
life_session_completed = false;
life_garage_store = false;
life_session_tries = 0;
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_clothing_filter = 0;
life_clothing_uniform = -1;
life_redgull_effect = time;
life_is_processing = false;
life_bail_paid = false;
life_impound_inuse = false;
life_action_inUse = false;
life_spikestrip = ObjNull;
life_has_insurance = false;
life_knockout = false;
life_interrupted = false;
life_respawned = false;
life_action_gather = false;
life_bet = false;
life_removeWanted = false;
Life_request_timer = false;

//Revive constant variables.
__CONST__(life_revive_cops,FALSE); //Set to false if you don't want cops to be able to revive downed players.
__CONST__(life_revive_fee,3000); //Fee for players to pay when revived.
life_respawn_timer = .5; //Scaled in minutes

//Uniform price (0),Hat Price (1),Glasses Price (2),Vest Price (3),Backpack Price (4)
life_clothing_purchase = [-1,-1,-1,-1,-1];
/*
*****************************
****** Weight Variables *****
*****************************
*/
life_maxWeight = 30; //Identifies the max carrying weight (gets adjusted throughout game when wearing different types of clothing).
life_maxWeightT = 30; //Static variable representing the players max carrying weight on start.
life_carryWeight = 0; //Represents the players current inventory weight (MUST START AT 0).

/*
*****************************
****** Food Variables *******
*****************************
*/
life_eat_Salema = 40;
life_eat_Ornate = 20;
life_eat_Mackerel = 20;
life_eat_Tuna = 100;
life_eat_Mullet = 30;
life_eat_CatShark = 60;
life_eat_Rabbit = 20;
life_eat_Apple = 5;
life_eat_turtlesoup = 62;
life_eat_donuts = 30;

/*
*****************************
****** Life Variables *******
*****************************
*/
life_net_dropped = false;
life_hit_explosive = false;
life_siren_active = false;
life_bank_fail = false;
life_use_atm = true;
life_is_arrested = false;
life_delivery_in_progress = false;
life_action_in_use = false;
life_thirst = 100;
life_hunger = 100;
life_battery = 100;
__CONST__(life_paycheck_period,5); //Five minutes
life_cash = 0;
__CONST__(life_impound_car,2222);
__CONST__(life_impound_boat,1111);
__CONST__(life_impound_air,3333);
life_istazed = false;
life_my_gang = ObjNull;

life_vehicles = [];
bank_robber = [];
switch (playerSide) do
{
	case west: 
	{
		life_atmcash = 7500;
		life_paycheck = 500;
	};
	case civilian: 
	{
		life_atmcash = 5000;
		life_paycheck = 250;
	};
	
	case independent: {
		life_atmcash = 10000;
		life_paycheck = 450;
	};
	
	case east:
	{
		life_atmcash = 10000;
		life_paycheck = 450;
	};
};

/*
	Master Array of items?
*/
life_vShop_rentalOnly = ["B_MRAP_01_hmg_F","B_G_Offroad_01_armed_F"];
__CONST__(life_vShop_rentalOnly,life_vShop_rentalOnly); //These vehicles can never be bought and only 'rented'. Used as a balancer & money sink. If you want your server to be chaotic then fine.. Remove it..

life_inv_items = 
[
	"life_inv_oilu",
	"life_inv_oilp",
	"life_inv_heroinu",
	"life_inv_heroinp",
	"life_inv_cannabis",
	"life_inv_marijuana",
	"life_inv_apple",
	"life_inv_rabbit",
	"life_inv_salema",
	"life_inv_ornate",
	"life_inv_mackerel",
	"life_inv_tuna",
	"life_inv_mullet",
	"life_inv_catshark",
	"life_inv_turtle",
	"life_inv_fishingpoles",
	"life_inv_water",
	"life_inv_donuts",
	"life_inv_turtlesoup",
	"life_inv_coffee",
	"life_inv_fuelF",
	"life_inv_fuelE",
	"life_inv_pickaxe",
	"life_inv_copperore",
	"life_inv_ironore",
	"life_inv_ironr",
	"life_inv_copperr",
	"life_inv_sand",
	"life_inv_salt",
	"life_inv_saltr",
	"life_inv_glass",
	"life_inv_tbacon",
	"life_inv_lockpick",
	"life_inv_redgull",
	"life_inv_peach",
	"life_inv_diamond",
	"life_inv_coke",
	"life_inv_cokep",
	"life_inv_diamondr",
	"life_inv_spikeStrip",
	"life_inv_rock",
	"life_inv_cement",
	"life_inv_goldbar",
	"life_inv_blastingcharge",
	"life_inv_boltcutter",
	"life_inv_defusekit",
	"life_inv_methu",
	"life_inv_methp",
	"life_inv_moonshine",
	"life_inv_vodka",
	"life_inv_grapes",
	"life_inv_goldu",
	"life_inv_goldp",
	"life_inv_silberu",
	"life_inv_silberp",
	"life_inv_uranu",
	"life_inv_uranp",
	"life_inv_frogs",
    "life_inv_frogslsd",
	"life_inv_handcuffs",
	"life_inv_cerises",
	"life_inv_banane",
	"life_inv_pcolap",
	"life_inv_sotbp",
	"life_inv_maitp",
	"life_inv_birne",
	"life_inv_pille",
	"life_inv_storage1",
	"life_inv_storage2",
	"life_inv_battery"
];

//Setup variable inv vars.
{missionNamespace setVariable[_x,0];} foreach life_inv_items;
//Licenses [license var, civ/cop]
life_licenses =
[
	["license_cop_air","cop"],
	["license_cop_swat","cop"],
	["license_cop_cg","cop"],
	["license_civ_quad","civ"],
	["license_civ_kart","civ"],
	["license_civ_driver","civ"],
	["license_civ_air","civ"],
	["license_civ_heroin","civ"],
	["license_civ_marijuana","civ"],
	["license_civ_gang","civ"],
	["license_civ_boat","civ"],
	["license_civ_oil","civ"],
	["license_civ_dive","civ"],
	["license_civ_truck","civ"],
	["license_civ_gun","civ"],
	["license_civ_rebel","civ"],
	["license_civ_coke","civ"],
	["license_civ_diamond","civ"],
	["license_civ_copper","civ"],
	["license_civ_iron","civ"],
	["license_civ_sand","civ"],
	["license_civ_salt","civ"],
	["license_civ_cement","civ"],
	["license_civ_meth","civ"],
	["license_civ_grapes","civ"],
	["license_civ_moonshine","civ"],
	["license_civ_gold","civ"],
	["license_civ_silber","civ"],
	["license_civ_uran","civ"],
	["license_civ_lsd","civ"],
	["license_civ_pcola","civ"],
	["license_civ_sotb","civ"],
	["license_civ_mait","civ"],
	["license_civ_home","civ"]
];

//Setup License Variables
{missionNamespace setVariable[(_x select 0),false];} foreach life_licenses;

life_dp_points = ["dp_1","dp_2","dp_3","dp_4","dp_5","dp_6","dp_7","dp_8","dp_9","dp_10","dp_11","dp_12","dp_13","dp_14","dp_15","dp_15","dp_16","dp_17","dp_18","dp_19","dp_20","dp_21","dp_22","dp_23","dp_24","dp_25"];
//[shortVar,reward]
life_illegal_items = [["heroinu",900],["heroinp",2400],["cocaine",2000],["cocainep",3500],["marijuana",2000],["methu",700],["methp",2200],["turtle",4200],["cannabis",500],["moonshine",1150],["uranu",3600],["uranp",5100],["frogs",250],["frogslsd",1000],["blastingcharge",10000],["boltcutter",500]];
life_illegal_item_shortnames = ["heroinu","heroinp","cocaine","cocainep","cannabis","marijuana","turtle","methu","methp","moonshine",",uranu","uranp","frogs","frogslsd","blastingcharge","boltcutter"];

life_police_only_items = [];
life_police_only_items_bounty = [];


/*
	Sell / buy arrays
*/
sell_array = 
[
	["apple",16],
	["heroinu",900],
	["heroinp",2400],
	["salema",45],
	["ornate",60],
	["mackerel",150],
	["tuna",90],
	["mullet",90],
	["catshark",450],
	["rabbit",4],
	["oilp",1200],
	["turtle",6000],
	["water",5],
	["coffee",5],
	["turtlesoup",1750],
	["donuts",3],
	["cannabis",500],
	["marijuana",2000],
	["tbacon",4],
	["lockpick",1000],
	["pickaxe",100],
	["redgull",15],
	["peach",18],
	["cocaine",2000],
	["cocainep",3500],
	["diamond",300],
	["diamondc",900],
	["iron_r",600],
	["copper_r",525],
	["salt_r",600],
	["glass",550],
	["fuelF",200],
	["spikeStrip",50],
	["cement",850],
	["methu",700],
	["methp",2200],
	["moonshine",1150],
	["vodka",500],
	["grapes",15],
	["goldp",1300],
	["silberp",1200],
	["uranu",3600],
	["uranp",5100],
	["frogs",250],
    ["frogslsd",1000],
	["banane",16],
	["cerises",18],
	["pcolap",80],
	["sotbp",90],
	["maitp",70],
	["birne",16],
	["battery",75],
	["goldbar",8000]
];
__CONST__(sell_array,sell_array);

buy_array = 
[
	["rabbit",6],
	["salema",60],
	["ornate",75],
	["mackerel",150],
	["tuna",90],
	["mullet",120],
	["catshark",450],
	["water",7],
	["turtle",3000],
	["turtlesoup",2000],
	["donuts",5],
	["coffee",10],
	["tbacon",8],
	["lockpick",1500],
	["pickaxe",250],
	["redgull",20],
	["fuelF",250],
	["spikeStrip",100],
	["blastingcharge",35000],
	["boltcutter",7500],
	["defusekit",2500],
	["handcuffs",500],
	["pille",50000],
	["storage1",100000],
    ["storage2",250000],
	["battery",250]
];
__CONST__(buy_array,buy_array);

life_weapon_shop_array =
[
	["arifle_sdar_F",0],
	["hgun_P07_snds_F",0],
	["hgun_P07_F",0],
	["Binocular",0],
	["ItemGPS",0],
	["ToolKit",0],
	["FirstAidKit",0],
	["Medikit",0],
	["NVGoggles",0],
	["16Rnd_9x21_Mag",0],
	["20Rnd_556x45_UW_mag",0],
	["ItemMap",0],
	["ItemCompass",0],
	["Chemlight_blue",0],
	["Chemlight_yellow",0],
	["Chemlight_green",0],
	["Chemlight_red",0],
	["hgun_Rook40_F",0],
	["arifle_Katiba_F",0],
	["30Rnd_556x45_Stanag",0],
	["20Rnd_762x51_Mag",0],
	["30Rnd_65x39_caseless_green",0],
	["DemoCharge_Remote_Mag",0],
	["SLAMDirectionalMine_Wire_Mag",0],
	["optic_ACO_grn",0],
	["acc_flashlight",0],
	["srifle_EBR_F",0],
	["arifle_TRG21_F",0],
	["optic_MRCO",0],
	["optic_Aco",0],
	["arifle_MX_F",0],
	["arifle_MXC_F",0],
	["arifle_MXM_F",0],
	["MineDetector",0],
	["optic_Holosight",0],
	["acc_pointer_IR",0],
	["arifle_TRG20_F",0],
	["SMG_01_F",0],
	["arifle_Mk20C_F",0],
	["30Rnd_45ACP_Mag_SMG_01",0],
	["30Rnd_9x21_Mag",0]
];
__CONST__(life_weapon_shop_array,life_weapon_shop_array);

life_garage_prices =
[
	["B_Quadbike_01_F",50],
	["C_Hatchback_01_F",175],
	["C_Offroad_01_F", 175],
	["B_G_Offroad_01_F",200],
	["C_SUV_01_F",200],
	["C_Van_01_transport_F",350],
	["C_Hatchback_01_sport_F",400],
	["C_Van_01_fuel_F",200],
	["I_Heli_Transport_02_F",2500],
	["C_Van_01_box_F",500],
	["I_Truck_02_covered_F",1000],
	["I_Truck_02_transport_F",750],
	["I_Truck_02_box_F",1250],
	["B_Truck_01_covered_F",1750],
	["B_Truck_01_transport_F",1500],
	["B_Truck_01_box_F", 1750],
	["O_MRAP_02_F",1500],
	["B_Heli_Light_01_F",1250],
	["O_Heli_Light_02_unarmed_F",2500],
	["C_Rubberboat",500],
	["C_Boat_Civil_01_F",650],
	["B_Boat_Transport_01_F",200],
	["C_Boat_Civil_01_police_F",300],
	["B_Boat_Armed_01_minigun_F",875],
	["B_MRAP_01_F",1500],
	["I_MRAP_03_F",1500],
	["I_Heli_light_03_unarmed_F",2500],
	["C_Kart_01_Blu_F",625],
	["C_Kart_01_Fuel_F",625],
	["C_Kart_01_Red_F",625],
	["C_Kart_01_Vrana_F",625],
	["O_Truck_03_transport_F",1250],
	["O_Truck_03_covered_F",1500],
	["O_Truck_03_repair_F",1750],
	["B_Truck_01_mover_F",1750]
];
__CONST__(life_garage_prices,life_garage_prices);

life_garage_sell =
[
	["B_Quadbike_01_F",500],
	["C_Hatchback_01_F",2000],
	["C_Offroad_01_F", 2500],
	["B_G_Offroad_01_F",12500],
	["C_SUV_01_F",4250],
	["C_Van_01_transport_F",3750],
	["C_Hatchback_01_sport_F",5000],
	["C_Van_01_fuel_F",200],
	["I_Heli_Transport_02_F",100000],
	["C_Van_01_box_F",7000],
	["I_Truck_02_covered_F",17500],
	["I_Truck_02_transport_F",16250],
	["I_Truck_02_box_F",21250],
	["B_Truck_01_covered_F",75000],
	["B_Truck_01_transport_F",15000],
	["B_Truck_01_box_F", 75000],
	["O_MRAP_02_F",10000],
	["B_Heli_Light_01_F",20000],
	["O_Heli_Light_02_unarmed_F",75000],
	["C_Rubberboat",2500],
	["C_Boat_Civil_01_F",11000],
	["B_Boat_Transport_01_F",750],
	["C_Boat_Civil_01_police_F",1250],
	["B_Boat_Armed_01_minigun_F",3500],
	["B_MRAP_01_F",162500],
	["I_MRAP_03_F",12500],
	["I_Heli_light_03_unarmed_F",7000],
	["C_Kart_01_Blu_F",2500],
	["C_Kart_01_Fuel_F",2500],
	["C_Kart_01_Red_F",2500],
	["C_Kart_01_Vrana_F",2500],
	["O_Truck_03_transport_F",65000],
	["O_Truck_03_covered_F",70000],
	["O_Truck_03_repair_F",75000],
	["B_Truck_01_mover_F",15000]
];
__CONST__(life_garage_sell,life_garage_sell);