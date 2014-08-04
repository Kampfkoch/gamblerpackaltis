[] spawn  {
	private["_fnc_food","_fnc_water","_fnc_battery"];
	_fnc_food = 
	{
		if(life_hunger < 2) then {player setDamage 1; hint "Du bist verhungert.";}
		else
		{
		life_hunger = life_hunger - 10;
		[] call life_fnc_hudUpdate;
		if(life_hunger < 2) then {player setDamage 1; hint "Du bist verhungert.";};
		switch(life_hunger) do {
			case 30: {hint "Du hast eine Weile nichts gegessen, du solltest schnell etwas finden!";};
			case 20: {hint "Du hast angefangen zu verhungern, du musst etwas zu essen finden ansonsten wirst du sterben..";};
			case 10: {hint "Du wirst nun zu Tode hungern, du wirst sehr bald sterben, falls du nichts essen solltes.";player setFatigue 1;};
			};
		};
	};
	
	_fnc_water = 
	{
		if(life_thirst < 2) then {player setDamage 1; hint "Du bist Ausgetrocknet..";}
		else
		{
			life_thirst = life_thirst - 10;
			[] call life_fnc_hudUpdate;
			if(life_thirst < 2) then {player setDamage 1; hint "Du bist Ausgetrocknet..";};
			switch(life_thirst) do 
			{
				case 30: {hint"Du hast eine Weile nichts getrunken, du solltest bald etwas finden..";};
				case 20: {hint "Du hast eine lange Zeit nichts getrunken, du solltest bald etwas zu trinken finden oder du wirst wegen Austrocknung sterben."; player setFatigue 1;};
				case 10: {hint "Du leidest unter schwerer Austrocknung, du solltest schnell etwas trinken!!"; player setFatigue 1;};
			};
		};
	};
	
	_fnc_battery =
	{
		if(life_battery < 2) then {hint "Dein Akku ist leer!";}
		else
		{
			life_battery = life_battery - 10;
			[] call life_fnc_hudUpdate;
			if(life_battery < 2) then {hint "Dein Akku ist leer!";};
			switch(life_battery) do 
			{
				case 30: {hint "Dein Akku hat nur noch 30%.";};
				case 20: {hint "Dein Akku hat nur noch 20%.";};
				case 10: {hint "Dein Akku hat nur noch 10%.";};
			};
		};
	};
	
	while{true} do
	{
		sleep 600;
		[] call _fnc_water;
		sleep 10;
		[] call _fnc_battery;
		sleep 250;
		[] call _fnc_food;
	};
};

[] spawn
{
	private["_bp","_load","_cfg"];
	while{true} do
	{
		waitUntil {backpack player != ""};
		_bp = backpack player;
		_cfg = getNumber(configFile >> "CfgVehicles" >> (backpack player) >> "maximumload");
		_load = round(_cfg / 8);
		life_maxWeight = life_maxWeightT + _load;
		if(playerSide == west) then {(unitBackpack player) setObjectTextureGlobal [0,""];};
		waitUntil {backpack player != _bp};
		if(backpack player == "") then 
		{
			life_maxWeight = life_maxWeightT;
		};
	};
};

[] spawn
{
	while {true} do
	{
		sleep 1.5;
		if(life_carryWeight > life_maxWeight && !isForcedWalk player) then {
			player forceWalk true;
			player setFatigue 1;
			hint "You are over carrying your max weight! You will not be able to run or move fast till you drop some items!";
		} else {
			if(isForcedWalk player) then {
				player forceWalk false;
			};
		};
	};
};

[] spawn  
{
	private["_walkDis","_myLastPos","_MaxWalk","_runHunger","_runDehydrate"];
	_walkDis = 0;
	_myLastPos = (getPos player select 0) + (getPos player select 1);
	_MaxWalk = 1200;
	while{true} do 
	{
		sleep 0.5;
		if(!alive player) then {_walkDis = 0;}
		else
		{
			_CurPos = (getPos player select 0) + (getPos player select 1);
			if((_CurPos != _myLastPos) && (vehicle player == player)) then
			{
				_walkDis = _walkDis + 1;
				if(_walkDis == _MaxWalk) then
				{
					_walkDis = 0;
					life_thirst = life_thirst - 5;
					life_hunger = life_hunger - 5;
					[] call life_fnc_hudUpdate;
				};
			};
			_myLastPos = (getPos player select 0) + (getPos player select 1);
		};
	};
};