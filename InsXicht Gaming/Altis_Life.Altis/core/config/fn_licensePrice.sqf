/*
	File: fn_licensePrice.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Returns the license price.
*/
private["_type"];
_type = [_this,0,"",[""]] call BIS_fnc_param;
if(_type == "") exitWith {-1};

switch (_type) do
{
	case "quad": {250};
	case "kart": {500};
	case "driver": {1000}; //Drivers License cost
	case "boat": {1200}; //Boating license cost
	case "pilot": {25000}; //Pilot/air license cost
	case "gun": {25000}; //Firearm/gun license cost
	case "dive": {2000}; //Diving license cost
	case "oil": {20000}; //Oil processing license cost
	case "cair": {15000}; //Cop Pilot License cost
	case "swat": {35000}; //Swat License cost
	case "cg": {8000}; //Coast guard license cost
	case "heroin": {200000}; //Heroin processing license cost
	case "marijuana": {125000}; //Marijuana processing license cost
	case "medmarijuana": {1500}; //Medical Marijuana processing license cost
	case "gang": {250000}; //Gang license cost
	case "rebel": {200000}; //Rebel license cost
	case "truck": {8000}; //Truck license cost
	case "diamond": {40000};
	case "salt": {10000};
	case "cocaine": {225000};
	case "sand": {10000};
	case "iron": {10000};
	case "copper": {5000};
	case "cement": {5000};
	case "meth": {100000};
	case "grapes": {7000};
	case "moonshine": {150000};
	case "gold": {30000};
	case "silber": {15000};
	case "uran": {250000};
	case "special": {100000};
	case "lsd": {215000};
	case "pcola": {1000};
	case "sotb": {1000};
	case "mait": {1000};
	case "home": {175000};
};