/*

	Some random and dynamical stuff for market

*/

private["_rand","_modifier","_price", "_globalchange","_defaultprice","_shortname","_difference"];

_rand = [0,180] call life_fnc_randomRound;

/*

	HINWEIS: obige Zahl in random erhöhen, um alle ereignisse seltener zu machen!
	
*/

diag_log "[MARKET] marketChange called.";

switch(true) do
{
	case (_rand <= 30): //30% default market change value (strong version)
	{
		{
			if(random(10) <= 4) then //Random for each resource
			{
				/*_price = _x select 1;
				_globalchange = _x select 2;*/
				
				_modifier = [-20,20] call life_fnc_randomRound; //Verkaufte/Gekaufte Items
				/*_modifier = _price * _modifier;
				
				_price = _price + _modifier;
				_globalchange = _globalchange + _modifier;
				
				life_market_prices set [_forEachIndex, [_x select 0, _price, _globalchange, _modifier] ];*/
				
				if(_modifier < 0) then
				{
					[_x select 0, -(_modifier), true] call life_fnc_marketSell; 
				}
				else
				{
					[_x select 0, _modifier, true] call life_fnc_marketBuy; 
				};
			};
		}
		foreach life_market_prices;
	};
	
	case (_rand <= 37):
	{
		[[0,"Umfrage: Beliebteste Droge bei der Unterschicht ist CrystelMeth"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["methp", [17,36] call life_fnc_randomRound, true] call life_fnc_marketBuy;
	};
	
	case (_rand <= 102):
	{
		[[0,"News: Dubai hat mit dem Bau eines der groeßten Gebaeude der Welt begonnen"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["glass", [50,150] call life_fnc_randomRound, true] call life_fnc_marketBuy;
	};
	
	case (_rand <= 45):
	{
		[[0,"News: Deutsche Ruestungsindustrie erforscht neue Legierungen fuer Waffen"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["copper_r", [25,75] call life_fnc_randomRound, true] call life_fnc_marketBuy;
		["iron_r", [50,150] call life_fnc_randomRound, true] call life_fnc_marketBuy;
	};
	
	case (_rand <= 110):
	{
		[[0,"News: Anleger verlieren Vertrauen in Euro"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["goldp", [17,36] call life_fnc_randomRound, true] call life_fnc_marketBuy;
	};
	
	case (_rand <= 53):
	{
		[[0,"News: Frachtschiff voller silber ist vor altis gesunken"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["silberp", [17,36] call life_fnc_randomRound, true] call life_fnc_marketBuy;
	};
	
	case (_rand <= 118):
	{
		[[0,"News: Im Norden von Altis haben Aktivisten einen Anschlag auf eine Oelbohrinsel veruebt"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["oilp", [17,36] call life_fnc_randomRound, true] call life_fnc_marketBuy;
	};
	
	case (_rand <= 61):
	{
		[[0,"Umfrage: Marihuana ist die beliebteste Einstiegsdroge bei der jungen Altis Bevoelkerung"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["marijuana", [25,75] call life_fnc_randomRound, true] call life_fnc_marketBuy;
	};
	
	case (_rand <= 126):
	{
		[[0,"News: Bandenkriege haben die Preise von Heroin in die hoehe schießen lassen"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["heroinp", [17,36] call life_fnc_randomRound, true] call life_fnc_marketBuy;
	};
	
	case (_rand <= 69):
	{
		[[0,"News: Polizei von Altis hat einen Illegalen Spirituosen Ring ausgehoben"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["moonshine", [50,150] call life_fnc_randomRound, true] call life_fnc_marketBuy;
	};
	///////
	
	case (_rand <= 134):
	{
		[[0,"News: Russland hat die Vodkaproduktion verdoppelt"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["vodka", [50,150] call life_fnc_randomRound, true] call life_fnc_marketSell;
	};
	
	case (_rand <= 77):
	{
		[[0,"News: In Kongo wurde ein neues riesen Diamantenvorkommen entdeckt"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["diamondc", [25,75] call life_fnc_randomRound, true] call life_fnc_marketSell;
	};
	
	case (_rand <= 142):
	{
		[[0,"News: Debatte ueber deutsches Atomprogramm"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["uranp", [10,25] call life_fnc_randomRound, true] call life_fnc_marketSell;
	};
	
	case (_rand <= 85):
	{
		[[0,"News: Die Droge Kokain ueberschwemmt den Drogenmarkt!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["cocainep", [17,36] call life_fnc_randomRound, true] call life_fnc_marketSell;
	};
	
	case (_rand <= 150):
	{
		[[0,"News: Der Bau des neuen Flughafen Altis wurde eingestellt"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["cement", [17,36] call life_fnc_randomRound, true] call life_fnc_marketSell;
	};
	
	case (_rand <= 94):
	{
		[[0,"News: Riesiges Salzfeld entdeckt"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["salt_r", [50,150] call life_fnc_randomRound, true] call life_fnc_marketSell;
	};
	
	case (_rand <= 158):
	{
		[[0,"News: keine Abnehmer fuer den LSD Markt da die Ware immer schlechtere Qualitaet aufweist"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["frogslsd", [25,75] call life_fnc_randomRound, true] call life_fnc_marketSell;
	};

	
	default //market change: default version
	{
		//diag_log format["[MARKET] marketChange did nothing. Rand=%1", _rand];
		{
			//Get default price
			_defaultprice = 0;
			_shortname = _x select 0;
			_price = _x select 1;
			_globalchange = _x select 2;
		
			{
				if((_x select 0) == _shortname) exitWith
				{
					_defaultprice = _x select 1;
				};
			}
			foreach life_market_resources;
			
			if(_defaultprice > 0) then
			{
			
				//Get difference
				_difference = _defaultprice - _price; //Defaultprice - current price
			
				_modifier = _difference * (random 0.4);
				_modifier = round _modifier;
			
				//Protecting hard caps
				/*if( _modifier < -700) then {_modifier = -700;};
				if( _modifier > 700) then {_modifier = 700;};*/
			
				//_modifier = [-15,25] call life_fnc_randomRound; //Verkaufte/Gekaufte Items
				
				/*if(_modifier < 0) then
				{
					[_x select 0, -(_modifier), true] call life_fnc_marketSell; 
				}
				else
				{
					[_x select 0, _modifier, true] call life_fnc_marketBuy; 
				};*/
				
				diag_log format["+Market+ Correcting market value of %1 from %2 to %3 by %4", _shortname, _price, (_price + _modifier), _modifier];
				
				_price = _price + _modifier;
				_globalchange = _globalchange + _modifier;
				
				
				
				//New price arr
				life_market_prices set [_forEachIndex, [_shortname, _price,_globalchange,_modifier] ]; //set raw values
			
			}
			else
			{
				diag_log format["+Market+ Cannot correct market value of %1", _shortname];
			};
		}
		foreach life_market_prices;
	};
};

publicVariable "life_market_prices";