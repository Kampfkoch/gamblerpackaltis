/*
	bet on the first club!
*/
if(!life_bet) exitWith {hint "Bitte ersteinmal die Wette anschauen!"};
if(life_cash < 2500) exitWith {hint "Willst du mich verarschen?! Ich habe gesagt $2500!"};
life_cash = life_cash - 2500;

life_bets = 1;
hint format [ "Du hast $2500 auf %1 gesetzt!",life_club1];
[] spawn life_fnc_betSystem;