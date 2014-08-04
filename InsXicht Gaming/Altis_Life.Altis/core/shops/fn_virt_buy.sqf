/*
	File: fn_virt_buy.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Buy a virtual item from the store.
*/
private["_type","_price","_amount","_diff","_name","_marketprice"];
if((lbCurSel 2401) == -1) exitWith {hint "Du musst ein Item auswaehlen was du kaufen willst!"};
_type = lbData[2401,(lbCurSel 2401)];
_price = lbValue[2401,(lbCurSel 2401)];
_amount = ctrlText 2404;

////////////##73

_marketprice = [_type] call life_fnc_marketGetBuyPrice;

if(_marketprice != -1) then
{
	_price = _marketprice;
};

/*if(_marketprice != -1) exitWith
{
	hint "Du kannst das nicht kaufen!";
};*/

///////////


if(!([_amount] call fnc_isnumber)) exitWith {hint "Du hast keine Menge angegeben";};
_diff = [_type,parseNumber(_amount),life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
_amount = parseNumber(_amount);
if(_diff <= 0) exitWith {hint "Du hast nicht genug Platz fuer diese Menge!"};
_amount = _diff;
if((_price * _amount) > life_cash) exitWith {hint "Du hast kein Geld!"};

_name = [([_type,0] call life_fnc_varHandle)] call life_fnc_varToStr;
if(([true,_type,_amount] call life_fnc_handleInv)) then
{
	hint format["You bought %1 %2 for $%3",_amount,_name,[(_price * _amount)] call life_fnc_numberText];
	life_cash = life_cash - (_price * _amount);
	if(_marketprice != -1) then 
		{ 
			//##94
			[_type, _amount] spawn
			{
				sleep 25;
				[_this select 0,_this select 1] call life_fnc_marketBuy;
			};			
		};
		[] call life_fnc_virt_update;
	playSound "caching";
};
