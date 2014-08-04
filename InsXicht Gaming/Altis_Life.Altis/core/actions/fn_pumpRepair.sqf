/*
	File: fn_pumpRepair.sqf
	
	Description:
	Quick simple action that is only temp.
*/
private["_method"];
if(life_cash < 1250) then
{
	if(life_atmcash < 1250) exitWith {_method = 0;};
	_method = 2;
}
	else
{
	_method = 1;
};

switch (_method) do
{
	case 0: {hint "So viel Geld hast du weder bei dir, noch auf der Bank."};
	case 1: {vehicle player setDamage 0; life_cash = life_cash - 1250; hint "Dein Fahrzeug wurde repariert. Dafür hast du 1250€ bezahlt.";};
	case 2: {vehicle player setDamage 0; life_atmcash = life_atmcash - 1250; hint "Dein Fahrzeug wurde repariert. Dafür hast du 1250€ bezahlt.";};
};