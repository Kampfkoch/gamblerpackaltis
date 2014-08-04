/*
	File: fn_processAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master handling for processing an item.
*/
private["_vendor","_type","_itemInfo","_oldItem","_oldItem2","_newItem","_cost","_upp","_hasLicense","_itemName","_oldVal","_oldVal2","_ui","_progress","_pgText","_cP","_error"];
_vendor = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_type = [_this,3,"",[""]] call BIS_fnc_param;
//Error check
if(isNull _vendor OR _type == "" OR (player distance _vendor > 10)) exitWith {};

_error = false;
//unprocessed item,processed item, cost if no license,Text to display (I.e Processing  (percent) ...",processing 2Items?, (only for processing with 2) second Item.
_itemInfo = switch (_type) do
{
	case "oil": {["oilu","oilp",1000,"Verarbeitet Oel",false];};
	case "diamond": {["diamond","diamondc",1000,"Verarbeitet Diamant",false]};
	case "heroin": {["heroinu","heroinp",7500,"Verarbeitet Heroin",false]};
	case "copper": {["copperore","copper_r",1000,"Verarbeitet Kupfer",false]};
	case "iron": {["ironore","iron_r",1000,"Verarbeitet Eisen",false]};
	case "sand": {["sand","glass",1000,"Verarbeitet Sand in Glas",false]};
	case "salt": {["salt","salt_r",1000,"Verarbeitet Salz",false]};
	case "cocaine": {["cocaine","cocainep",10000,"Verarbeitet Kokain",false]};
	case "marijuana": {["cannabis","marijuana",7500,"Verarbeitet Marijuana",false]};
	case "cement": {["rock","cement",1000,"Mixt Zement",false]};
	case "meth": {["methu","methp",7500,"Koche Meth",false]};
	case "grapes": {["grapes","vodka",1000,"Verarbeitet Trauben in Vodka",false]};
	case "moonshine": {["grapes","moonshine",7500,"Verarbeitet Trauben in Schwarzgebranntes",false]};
	case "gold": {["goldu","goldp",1000,"Verarbeitet Golderz in Goldbarren",false];};
	case "silber": {["silberu","silberp",1000,"Verarbeitet Silbererz in Silberbarren",false];};
	case "uran": {["uranu","uranp",10000,"Verarbeitet Uran in Uranium",false];};
	case "lsd": {["frogs","frogslsd",5000,"Verarbeitet Tryptophan in Lysergsaeurediethylamid",false];};
	case "pcola": {["banane","pcolap",100,"Mixt Pinacolada",true,"cerises"]};
	case "sotb": {["peach","sotbp",100,"Mixt Sex on the Beach",true,"birne"]};
	case "mait": {["apple","maitp",100,"Mixt Mai Tai",true,"banane"]};
	case "rind": {["rindu","rindp",1500,"Grillt Rohfleisch in Steak",false]};
	case "basar": {["basaru","basarp",10000,"Schneidert gefaelschte Kleidung",false]};
	default {[]};
};

//Error checking
if(count _itemInfo == 0) exitWith {};

//Setup vars.
_2var = _itemInfo select 4;
_oldItem = _itemInfo select 0;
_newItem = _itemInfo select 1;
_cost = _itemInfo select 2;
_upp = _itemInfo select 3;

if(_2var) then { _oldItem2 = _itemInfo select 5; };

_hasLicense = missionNamespace getVariable (([_type,0] call life_fnc_licenseType) select 0);
_itemName = [([_newItem,0] call life_fnc_varHandle)] call life_fnc_varToStr;
_oldVal = missionNamespace getVariable ([_oldItem,0] call life_fnc_varHandle);

if(_2var) then { _oldVal2 = missionNamespace getVariable ([_oldItem2,0] call life_fnc_varHandle); };

if(_2var) then { 
       if(_oldVal !=_oldVal2) then {
              _error = true;
       };
};
if(_error) exitWith{hint "Bitte benutze die selbe Menge beider Früchte"};


_cost = _cost * _oldVal;
//Some more checks
if(_oldVal == 0) exitWith {};

//Setup our progress bar.
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["%2 (1%1)...","%",_upp];
_progress progressSetPosition 0.01;
_cP = 0.01;

life_is_processing = true;

if(_hasLicense) then
{
	while{true} do
	{
		if(animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then {
			[[player,"AinvPknlMstpSnonWnonDnon_medic_1"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
			player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
		};
		
		sleep  0.3;
		_cP = _cP + 0.01;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
		if(_cP >= 1) exitWith {};
		if(player distance _vendor > 10) exitWith {};
	};
	
	if(player distance _vendor > 10) exitWith {hint "You need to stay within 10m to process."; 5 cutText ["","PLAIN"]; life_is_processing = false;};
	
	if(_2var) then 
	{
		([false,_oldItem2,_oldVal2] call life_fnc_handleInv);
	};
	
	if(!([false,_oldItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; life_is_processing = false;};
	if(!([true,_newItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; [true,_oldItem,_oldVal] call life_fnc_handleInv; life_is_processing = false;};
	5 cutText ["","PLAIN"];
	titleText[format["Du hast %1 in %2 verarbeitet.",_oldVal,_itemName],"PLAIN"];
	life_is_processing = false;
}
	else
{
	if(life_cash < _cost) exitWith {hint format["Du benoetigst $%1 um ohne Lizens zu verarbeiten.",[_cost] call life_fnc_numberText]; 5 cutText ["","PLAIN"]; life_is_processing = false;};
	
	while{true} do
	{
		if(animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then {
			[[player,"AinvPknlMstpSnonWnonDnon_medic_1"],"life_fnc_animSync",true,false] spawn life_fnc_MP;
			player playMoveNow "AinvPknlMstpSnonWnonDnon_medic_1";
		};
		
		sleep  0.9;
		_cP = _cP + 0.01;
		_progress progressSetPosition _cP;
		_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_upp];
		if(_cP >= 1) exitWith {};
		if(player distance _vendor > 10) exitWith {};
	};
	
	if(player distance _vendor > 10) exitWith {hint "You need to stay within 10m to process."; 5 cutText ["","PLAIN"]; life_is_processing = false;};
	if(life_cash < _cost) exitWith {hint format["You need $%1 to process  without a license!",[_cost] call life_fnc_numberText]; 5 cutText ["","PLAIN"]; life_is_processing = false;};
	
	
	if(_2var) then 
	{
		([false,_oldItem2,_oldVal2] call life_fnc_handleInv);
	};
	
	if(!([false,_oldItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; life_is_processing = false;};
	if(!([true,_newItem,_oldVal] call life_fnc_handleInv)) exitWith {5 cutText ["","PLAIN"]; [true,_oldItem,_oldVal] call life_fnc_handleInv; life_is_processing = false;};
	5 cutText ["","PLAIN"];
	titleText[format["You have processed %1 into %2 for $%3",_oldVal,_itemName,[_cost] call life_fnc_numberText],"PLAIN"];
	life_cash = life_cash - _cost;
	life_is_processing = false;
};	