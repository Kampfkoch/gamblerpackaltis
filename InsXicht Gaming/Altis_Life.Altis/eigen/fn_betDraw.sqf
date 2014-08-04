/*
bet on a draw
*/
if(!life_bet) exitWith {hint "Bitte ersteinmal die Wette anschauen!"};
if(life_cash < 2500) exitWith {hint "Willst du mich verarschen?! Ich habe gesagt $2500!"};
life_cash = life_cash - 2500;

life_bets = 3;
hint format["Du hast $2500 auf ein unentschieden zwischen %1 und %2 gesetzt!",life_club1,life_club2];
[] spawn life_fnc_betSystem;