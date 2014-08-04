class Socket_Reciever
{
	tag = "SOCK";
	class SQL_Socket
	{
		file = "core\session";
		class requestReceived {};
		class dataQuery {};
		class insertPlayerInfo {};
		class updateRequest {};
		class syncData {};
	};
};

class Life_Client_Core
{
	tag = "life";
	
	class Master_Directory
	{
		file = "core";
		class setupActions {};
		class setupEVH {};
		class initCiv {};
		class initCop {};
		class initMedic {};
		class welcomeNotification {};
		class initZeus {};
		class initADAC {};
	};
	
	class Admin
	{
		file = "core\admin";
		class admininfo {};
		class adminid {};
		class admingetID {};
		class adminMenu {};
		class adminQuery {};
	};
	
	class Medical_System
	{
		file = "core\medical";
		class onPlayerKilled {};
		class onPlayerRespawn {};
		class respawned {};
		class revivePlayer {};
		class revived {};
		class medicMarkers {};
		class requestMedic {};
		class medicRequest {};
		class deathScreen {};
		class medicLoadout {};
		class medicSirenLights {};
		class medicLights {};
		class medSiren {};
		class equipGear {};
	};
	
	class adac
	{
		file = "core\adac";
		class adacsaveLoadout {};
		class adacLoadout {};
		class adacSirenLights {};
		class adacLights {};
	};
	
	class Actions
	{
		file = "core\actions";
		class arrestAction {};
		class buyLicense {};
		class catchFish {};
		class catchTurtle {};
		class chemlightUse {};
		class dpFinish {};
		class dropFishingNet {};
		class escortAction {};
		class flipAction {};
		class gatherApples {};
		class gatherBanane {};
		class gatherBasar {};
		class gatherBirne {};
		class gatherCannabis {};
		class gatherCerises {};
		class gatherCocaine {};
		class gatherFrogs {};
		class gatherGold {};
		class gatherGrapes {};
		class gatherHeroin {};
		class gatherMeth {};
		class gatherOil {};
		class gatherPeaches {};
		class gatherRind {};
		class gatherSilber {};
		class gatherUran {};
		class getDPMission {};
		class heal {};
		class healHospital {};
		class impoundAction {};
		class packupSpikes {};
		class pickupItem {};
		class pickupMoney {};
		class postBail {};
		class processAction {};
		class pulloutAction {};
		class pumpRepair {};
		class pushVehicle {};
		class putInCar {};
		class removeWeaponAction {};
		class repairTruck {};
		class restrainAction {};
		class robAction {};
		class searchAction {};
		class sellOil {};
		class sellTurtle {};
		class serviceChopper {};
		class serviceTruck {};
		class stopEscorting {};
		class storeVehicle {};
		class suicideBomb {};
		class surrender {};
		class ticketAction {};
		class TorturePlayer {};
		class unrestrain {};
		class searchVehAction {};
		class sellGoldBars {};
		class robShops {};
		class robShops2 {};
		class shopState {};
	};
	
	class Config
	{
		file = "core\config";
		class copDefault {};
		class eatFood {};
		class itemWeight {};
		class licensePrice {};
		class licenseType {};
		class shopMenus {};
		class taxRate{};
		class varHandle {};
		class varToStr {};
		class vehicleAnimate {};
		class vehicleColorCfg {};
		class vehicleColorStr {};
		class vehicleListCfg {};
		class vehicleWeightCfg {};
		class vehShopLicenses {};
		class virt_shops {};
		class weaponShopCfg {};
		class houseContainers {};
        class housePrice {};
		class updateClothing {};
		class adacDefault {};
		
		//Clothing Store Configs
		class clothing_cop {};
		class clothing_bruce {};
		class clothing_ems {};
		class clothing_adac {};
		class clothing_reb {};
		class clothing_dive {};
		class clothing_kart {};
	};

	class Player_Menu
	{
		file = "core\pmenu";
		class wantedList {};
		class wantedInfo {};
		class wantedMenu {};
		class pardon {};
		class giveItem {};
		class giveMoney {};
		class p_openMenu {};
		class p_updateMenu {};
		class removeItem {};
		class useItem {};
		class cellphone {};
		class keyMenu {};
		class keyGive {};
		class keyDrop {};
		class s_onSliderChange {};
		class updateViewDistance {};
		class settingsMenu {};
		class settingsInit {};
		class wantedadd2 {};
		class wanted2 {};
	};
	
	class Functions
	{
		file = "core\functions";
		class accType {};
		class actionKeyHandler {};
		class animSync {};
		class calWeightDiff {};
		class clearVehicleAmmo {};
		class dropItems{};
		class escInterupt {};
		class fetchCfgDetails {};
		class fetchDeadGear{};
		class fetchGear {};
		class fetchVehInfo{};
		class giveDiff {};
		class globalSound {};
		class globalSoundClient {};
		class handleDamage {};
		class handleInv {};
		class handleItem {};
		class hudSetup {};
		class hudUpdate {};
		class inString {};
		class isnumeric {};
		class keyHandler {};
		class loadDeadGear {};
		class mouseHandler {};
		class nearUnits {};
		class numberText {};
		class onFired {};
		class onPlayerDisconnect {};
		class onTakeItem {};
		class playerCount {};
		class playerTags {};
		class pullOutVeh {};
		class pushObject {};
		class random {};
		class randomRound {};
		class receiveItem {};
		class receiveMoney {};
		class secondsToString {};
		class setUniform {};
		class simDisable {};
		class tazeSound {};
		class updateCash {};
        class vehicleGarage {};
		class callCellPhone {};
		class progressWaitUntilFinished {};
		class revealObjects {};
		class onTakePutBackItem {};
		class onTake {};
	};
	
	class Network
	{
		file = "core\functions\network";
		class broadcast {};
		class MP {};
		class MPexec {};
		class netSetVar {};
		class corpse {};
		class jumpFnc {};
		class soundDevice {};
		class setFuel {};
	};
	
	class Civilian
	{
		file = "core\civilian";
		class civFetchGear {};
		class civLoadGear {};
		class jail {};
		class jailMe {};
		class knockedOut {};
		class knockoutAction {};
		class pInteraction_reb {};
		class removeLicenses {};
		class removeWeapons {};
		class robPerson {};
		class robReceive {};
		class tazed {};
		class zoneCreator {};
		class demoChargeTimer {};
	};
	
	class Vehicle
	{
		file = "core\vehicle";
		class colorVehicle {};
		class openInventory {};
		class lockVehicle {};
		class vehicleOwners {};
		class vehStoreItem {};
		class vehTakeItem {};
		class vehInventory {};
		class vInteractionMenu {};
		class vehicleWeight {};
		class deviceMine {};
		class addVehicle2Chain {};
	};
	
	class Cop
	{
		file = "core\cop";
		class arrestDialog_Arrest {};
		class bountyReceive {};
		class copInteractionMenu {};
		class copLights {};
		class copMarkers {};
		class copOpener {};
		class copSearch {};
		class copSiren {};
		class fetchDeadGear {};
		class licenseCheck {};
		class licensesRead {};
		class loadGear {};
		class saveGear {};
		class questionDealer {};
		class radar {};
		class restrain {};
		class searchClient {};
		class showArrestDialog {};
		class sirenLights {};
		class spikeStripEffect {};
		class ticketGive {};
		class ticketPay {};
		class ticketPrompt {};
		class vehInvSearch {};
		class houseOwnerSearch {};
        class houseInvSearch {};
        class raidHouse {};
		class seizeObjects {};
		class repairDoor {};
		class doorAnimate {};
		class fedCamDisplay {};
	};
	
	class Gangs
	{
		file = "core\gangs";
		class createGang {};
		class gangBrowser {};
		class gangManagement {};
		class gangMenu {};
		class joinGang {};
		class kickGang {};
		class leaveGang {};
		class setGangLeader {};
		class lockGang {};
		class unlockGang {};
	};
	
	class Shops
	{
		file = "core\shops";
		class atmMenu {};
		class buyClothes {};
		class changeClothes {};
		class clothingMenu {};
		class clothingFilter {};
		class vehicleShopMenu {};
		class vehicleShopLBChange {};
		class vehicleShopBuy {};
		class weaponShopFilter {};
		class weaponShopMenu {};
		class weaponShopSelection {};
		class weaponShopBuySell {};
		class virt_buy {};
		class virt_menu {};
		class virt_update {};
		class virt_sell {};
		class chopShopMenu {};
		class chopShopSelection {};
		class chopShopSell {};
	};
	
	class Items
	{
		file = "core\items";
		class bankalarmsound {};
		class cocaine {};
		class heroine {};
		class jerryRefuel {};
		class lockpick {};
		class pickaxeUse {};
		class weed {};
		class flashbang {};
		class spikeStrip {};
		class boltcutter {};
		class blastingCharge {};
		class defuseKit {};
	};
	
	class Dialog_Controls
	{
		file = "dialog\function";
		class setMapPosition {};
		class displayHandler {};
		class spawnConfirm {};
		class spawnMenu {};
		class spawnPointCfg {};
		class spawnPointSelected {};
		class progressBar {};
		class impoundMenu {};
		class unimpound {};
		class sellGarage {};
		class bankDeposit {};
		class bankWithdraw {};
		class bankTransfer {};
		class garageLBChange {};
		class houseMenu {};
		class safeInventory {};
		class safeOpen {};
		class safeTake {};
		class safeFix {};
	};
	
	class Market
	{
		file = "core\market";
		
		class openMarketView {};
		class refreshMarketView {};
		class marketShortView {};
		class marketBuy {};
		class marketSell {};
		class marketGetBuyPrice {};
		class marketGetSellPrice {};
		class marketconfiguration {};
		class marketReset {};
		class marketChange {};
		class marketGetRow {};
		class marketGetPriceRow {};
		class marketSetPriceRow {};
	};	
	
	class eigen
	{
		file = "eigen";
		class betSystem {};
		class betFirst {};
		class betSecond {};
		class betShowQuotes {};
		class betDraw {};
	};
	
	class Special
	{
		file = "core\special";
		class openEmpMenu {};
		class isEmpOperator {};
		class scanVehicles {};
		class warnVehicle {};
		class empVehicle {};
		class vehicleWarned {};
		class vehicleEmpd {};
	};
	
	class Housing
	{
        file = "core\housing";
        class buyHouse {};
        class sellHouse {}; 
        class createMarkers {};
        class deleteMarkers {};
        class getBuildID {};
        class initHouses {};
        class lockHouse {};
        class lockStorage {};
        class countBuildingPositions {};
        class houseStoreItem {};
        class houseTakeItem {};
        class houseInventory {};
        class openStorage {};
        class placeStorage {};
        class preCloseHouseStorage {};
        class calcGarageSpawn {};
        class onPut {};
        class onTake {};
        class getBuildingPositions {};
        class isBuildingPosTaken {};
	};
};