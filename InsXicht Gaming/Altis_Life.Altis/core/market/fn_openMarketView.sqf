/*

	Open pack-up dlg

*/
if(side player == civilian) then 
{
	if(!createDialog "marketView") exitWith {hint "Failed Creating Dialog";}; //Couldn't create the menu?
	disableSerialization;
	waitUntil {!isnull (findDisplay 39500)};
	[] spawn life_fnc_refreshMarketView;
}
else
{
	hint "Nur für Zivilisten";
};