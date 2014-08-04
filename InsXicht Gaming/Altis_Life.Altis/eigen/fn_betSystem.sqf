/*
	handle bet and give money if he won.
*/
life_bet = false;
sleep 2;
_fac = 0.0;
_score = "";
_win = 0;
_x=floor(random 12);
switch (life_bets) do
	{
		case 1: 	{ _fac = 2.1; }; 	
		case 2: 	{ _fac = 2.6; }; 	
		case 3: 	{ _fac = 3.3; };
	};
	

switch (_x) do
	{
		case 0: 	{ _win = 1; }; 	
		case 1: 	{ _win = 1; }; 	
		case 2: 	{ _win = 1; }; 	
		case 3: 	{ _win = 1; };
		case 4: 	{ _win = 1; };	
		case 5: 	{ _win = 2; };		
		case 6: 	{ _win = 2; };	
		case 7: 	{ _win = 2; };	
		case 8: 	{ _win = 2; };
		case 9: 	{ _win = 3; };
		case 10: 	{ _win = 3; };	
		case 11: 	{ _win = 3; };	
				
	};
	
switch (_x) do
	{
		case 0: 	{  _score = "1 : 0";}; 	
		case 1: 	{  _score = "2 : 0";}; 	
		case 2: 	{  _score = "2 : 1";}; 	
		case 3: 	{  _score = "3 : 0";};
		case 4: 	{  _score = "3 : 1";};	
		case 5: 	{  _score = "0 : 1";};		
		case 6: 	{  _score = "0 : 2";};	
		case 7: 	{  _score = "0 : 3";};	
		case 8: 	{  _score = "1 : 2";};
		case 9: 	{  _score = "1 : 1";};
		case 10: 	{  _score = "2 : 2";};	
		case 11: 	{  _score = "0 : 0";};	
	};				
				
	
hint format [" %1 gegen %2 hat %3 gespielt.",life_club1,life_club2,_score];
sleep 2.5;

if(!(_win == life_bets)) exitWith {hint "Du hast leider Falsch gewettet"};
if(_win == life_bets) then {hint format["Du hast Richtig gewettet und $%1 gewonnen",(_fac*2500)];
	life_cash = life_cash + (2500*_fac);
};

life_club1 = "";
life_club2 = "";
[] call SOCK_fnc_updateRequest;



