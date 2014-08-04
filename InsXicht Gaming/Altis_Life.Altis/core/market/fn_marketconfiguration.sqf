/*

	Main configuration for non-persistent market system
	Will need triggers to hook into vanilla pricing methods

*/

////////////MAIN CONFIG

life_market_resources = [

	//Schema: SHORTNAME, DEFAULT-WERT, MIN-WERT, MAX-WERT, VERÄNDERUNG BEI AKTION [VERKAUF Multipliziert mit 1, Kauf multipliziert um -1
	//["gold", 1500, 450, 2300, 8, 5],
	["diamondc", 950, 25, 1000, 0.75, 0.25,
		[ 
			["oilp",1], 
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["glass",1],
			["cement",1],
			["vodka",1],
			["silberp",1],
			["goldp",1]
		]
	],
	
	["goldp", 1300, 25, 1450, 1.25, 0.5,
		[ 
			["diamondc",1], 
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["glass",1],
			["oilp",1],
			["vodka",1],
			["cement",1],
			["silberp",1]
		]
	],
	
	["oilp", 1200, 25, 1350, 1.25, 0.5,
		[ 
			["diamondc",1], 
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["glass",1],
			["cement",1],
			["vodka",1],
			["silberp",1],
			["goldp",1]
		]
	],
	
	["salt_r", 525, 25, 600, 0.50, 0.125,
		[ 
			["diamondc",1], 
			["iron_r",1],
			["copper_r",1],
			["oilp",1],
			["glass",1],
			["cement",1],
			["vodka",1],
			["silberp",1],
			["goldp",1]
		]
	],
	
	["silberp", 1200, 25, 1350, 1.25, 0.5,
		[ 
			["diamondc",1], 
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["glass",1],
			["oilp",1],
			["vodka",1],
			["cement",1],
			["goldp",1]
		]
	],
	
	["iron_r", 550, 25, 625, 0.50, 0.125,
		[ 
			["diamondc",1], 
			["oilp",1],
			["copper_r",1],
			["salt_r",1],
			["glass",1],
			["cement",1],
			["vodka",1],
			["silberp",1],
			["goldp",1]
		]
	],
	
	["glass", 625, 25, 725, 0.50, 0.125,
		[ 
			["diamondc",1], 
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["oilp",1],
			["cement",1],
			["vodka",1],
			["silberp",1],
			["goldp",1]
		]
	],
	
	["vodka", 475, 25, 550, 0.50, 0.125,
		[ 
			["diamondc",1], 
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["glass",1],
			["oilp",1],
			["cement",1],
			["silberp",1],
			["goldp",1]
		]
	],
	
	["cement", 775, 25, 925, 1.25, 0.5,
		[ 
			["diamondc",1], 
			["iron_r",1],
			["copper_r",1],
			["salt_r",1],
			["glass",1],
			["oilp",1],
			["vodka",1],
			["silberp",1],
			["goldp",1]
		]
	],
	
	["copper_r", 475, 25, 575, 0.75, 0.25,
		[ 
			["diamondc",1], 
			["iron_r",1],
			["oilp",1],
			["salt_r",1],
			["glass",1],
			["cement",1],
			["vodka",1],
			["silberp",1],
			["goldp",1]
		]
	],
	
	///////////////////////////////////
	
	["uranp", 5350, 50, 5600, 2, 0.75,
		[
			["marijuana",1],
			["cocainep",1],
			["methp",1],
			["moonshine",1],
			["heroinp",1],
			["frogslsd",1]
		]
	],
	
	["cocainep", 3500, 50, 3700, 1.25, 0.5,
		[
			["marijuana",1],
			["heroinp",1],
			["methp",1],
			["moonshine",1],
			["uranp",1],
			["frogslsd",1]
		]
	],
	
	["frogslsd", 2250, 50, 2400, 0.75, 0.25,
		[
			["marijuana",1],
			["cocainep",1],
			["methp",1],
			["moonshine",1],
			["heroinp",1],
			["uranp",1]
		]
	],
	
	["heroinp", 2500, 50, 2700, 1.25, 0.5,
		[
			["marijuana",1],
			["cocainep",1],
			["methp",1],
			["moonshine",1],
			["uranp",1],
			["frogslsd",1]
		]
	],
	
	["moonshine", 1175, 50, 1300, 0.50, 0.125,
		[
			["marijuana",1],
			["cocainep",1],
			["methp",1],
			["heroinp",1],
			["uranp",1],
			["frogslsd",1]
		]
	],
	
	["marijuana", 1800, 50, 1950, 0.75, 0.25,
		[
			["heroinp",1],
			["cocainep",1],
			["methp",1],
			["moonshine",1],
			["uranp",1],
			["frogslsd",1]
		]
	],
	
	["methp", 2200, 50, 2400, 1.25, 0.5,
		[
			["marijuana",1],
			["cocainep",1],
			["heroinp",1],
			["moonshine",1],
			["uranp",1],
			["frogslsd",1]
		]
	],
	
	["turtle", 6000, 50, 6000, 0, 0]
		
];
publicVariable "life_market_resources";

////////////GENERATED CONFIG
//life_market_changes = []; //[SHORTNAME,SELL,BUY]
life_market_shortnames = []; //shortnames if in market
//life_market_clampprices = []; //[SHORTNAME,MIN,MAX]

{
	life_market_shortnames set [count life_market_shortnames, _x select 0];
	//life_market_clampprices set [count life_market_clampprices, [_x select 0, _x select 2, _x select 3] ];
	//life_market_changes set [count life_market_changes, [_x select 0, _x select 4, _x select 5] ];
}
foreach life_market_resources;

publicVariable "life_market_shortnames";
//publicVariable "life_market_clampprices";

////////////SYNC PRICES WITH SERVER IF EMPTY
//if(isNil("life_market_prices")) then
//{
	life_market_prices = []; //[SHORTNAME,CURRENTPRICE,DIRECTIONGLOBAL,DIRECTIONLOCAL]
	{
	
		life_market_prices set [count life_market_prices, [_x select 0, _x select 1, 0, 0] ];
	}
	foreach life_market_resources;
	
	publicVariable "life_market_prices";
	
	systemChat "Market Prices Generated!";
//};