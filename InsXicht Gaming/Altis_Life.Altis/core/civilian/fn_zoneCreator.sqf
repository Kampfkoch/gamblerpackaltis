/*
	File: fn_zoneCreator.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Creates triggers around the map to add the addAction for specific
	fields such as apples, cocaine, heroin, etc. This method is to reduce
	CPU load.
	
	Note: 
	Triggers are NOT my preferred method so this is considered temporary until a more suitable
	option is presented.
*/
private["_appleZones","_peachZones","_heroinZones","_cocaineZones","_weedZones","_methZones","_grapeZones","_frogZones","_cerisesZones","_bananeZones","_birneZones"];
_appleZones = ["apple_1"];
_peachZones = ["peaches_1"];
_heroinZones = ["heroin_1"];
_cocaineZones = ["cocaine_1"];
_weedZones = ["weed_1"];
_methZones = ["meth_1"];
_grapeZones = ["grape_1","grape_2"];
_frogZones = ["frogs_1"];
_cerisesZones = ["cerises_1"];
_bananeZones = ["banane_1"];
_birneZones = ["birne_1"];

//Create apple zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[25,25,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Apples = player addAction['Sammel Aepfel',life_fnc_gatherApples,'',0,false,false,'','!life_action_gather'];","player removeAction LIFE_Action_Apples;"];
} foreach _appleZones;

//Create peach zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[25,25,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Peaches = player addAction['Sammel Pfirsiche',life_fnc_gatherPeaches,'',0,false,false,'','!life_action_gather'];","player removeAction LIFE_Action_Peaches;"];
} foreach _peachZones;

//Create heroin zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[75,75,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_heroin = player addAction['Sammel Heroin',life_fnc_gatherHeroin,'',0,false,false,'','!life_action_gather'];","player removeAction LIFE_Action_Heroin;"];
} foreach _heroinZones;

//Create Weed zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[75,75,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Cannabis = player addAction['Sammel Cannabis',life_fnc_gatherCannabis,'',0,false,false,'','!life_action_gather'];","player removeAction LIFE_Action_Cannabis;"];
} foreach _weedZones;

//Create cocaine zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[75,75,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Coke = player addAction['Sammel Kokain',life_fnc_gatherCocaine,'',0,false,false,'','!life_action_gather'];","player removeAction LIFE_Action_Coke;"];
} foreach _cocaineZones;

//Create meth zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[75,75,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Meth = player addAction['Stehle Methzutaten',life_fnc_gatherMeth,'',0,false,false,'','!life_action_gather'];","player removeAction LIFE_Action_Meth;"];
} foreach _methZones;

//Create grape zones
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[25,25,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_Grapes = player addAction['Sammel Trauben',life_fnc_gatherGrapes,'',0,false,false,'','!life_action_gather'];","player removeAction LIFE_Action_Grapes;"];
} foreach _grapeZones;

//Create lsd
{
	_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
	_zone setTriggerArea[25,25,0,false];
	_zone setTriggerActivation["CIV","PRESENT",true];
	_zone setTriggerStatements["player in thislist","LIFE_Action_frogs = player addAction['Suche Tryptophan',life_fnc_gatherfrogs,'',0,false,false,'','!life_action_gather'];","player removeAction LIFE_Action_frogs;"];
} foreach _frogZones;

//Create cerises zones
{
_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
_zone setTriggerArea[25,25,0,false];
_zone setTriggerActivation["CIV","PRESENT",true];
_zone setTriggerStatements["player in thislist","LIFE_Action_cerises = player addAction['Sammel Kirschen',life_fnc_gathercerises,'',0,false,false,'','!life_action_gather'];","player removeAction LIFE_Action_cerises;"];
} foreach _cerisesZones;


//Create Banane zones
{
_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
_zone setTriggerArea[25,25,0,false];
_zone setTriggerActivation["CIV","PRESENT",true];
_zone setTriggerStatements["player in thislist","LIFE_Action_banane = player addAction['Sammel Bananen',life_fnc_gatherbanane,'',0,false,false,'','!life_action_gather'];","player removeAction LIFE_Action_banane;"];
} foreach _bananeZones;

//Create Birne zones
{
_zone = createTrigger ["EmptyDetector",(getMarkerPos _x)];
_zone setTriggerArea[25,25,0,false];
_zone setTriggerActivation["CIV","PRESENT",true];
_zone setTriggerStatements["player in thislist","LIFE_Action_birne = player addAction['Sammel Birnen',life_fnc_gatherbirne,'',0,false,false,'','!life_action_gather'];","player removeAction LIFE_Action_birne;"];
} foreach _birneZones;