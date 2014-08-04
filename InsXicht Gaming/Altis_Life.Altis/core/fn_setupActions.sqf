#include <macro.h>
/*
	File: fn_setupActions.sqf
	
	Description:
	Master addAction file handler for all client-based actions.
*/
switch (playerSide) do
{
    case west:
    {
		// nano EMP Little Bird
		life_actions = life_actions + [player addAction["<t color='#FF0000'>EMP Operator Konsole oeffnen</t>",life_fnc_openEmpMenu,[],8,false,false,"",'[_this] call life_fnc_isEmpOperator']];
		//search house      
        life_actions = life_actions + [player addAction["<t color='#FFFF00'>Search House</t>",life_fnc_houseOwnerSearch,cursorTarget,5,false,false,"",
        ' !isNull cursorTarget && (player distance cursorTarget) < 10 && speed cursorTarget < 2 && (cursorTarget isKindOf "Land_i_House_Small_01_V1_F" || cursorTarget isKindOf "Land_i_House_Small_01_V2_F" || cursorTarget isKindOf "Land_i_House_Small_01_V3_F" || cursorTarget isKindOf "Land_i_House_Small_02_V1_F" || cursorTarget isKindOf "Land_i_House_Small_02_V2_F" || cursorTarget isKindOf "Land_i_House_Small_02_V3_F" || cursorTarget isKindOf "Land_i_House_Small_03_V1_F" || cursorTarget isKindOf "Land_i_House_Big_01_V1_F" || cursorTarget isKindOf "Land_i_House_Big_01_V2_F" || cursorTarget isKindOf "Land_i_House_Big_01_V3_F" || cursorTarget isKindOf "Land_i_House_Big_02_V1_F" || cursorTarget isKindOf "Land_i_House_Big_02_V2_F" || cursorTarget isKindOf "Land_i_House_Big_02_V3_F") && !life_action_inUse']];
        life_actions = life_actions + [player addAction["<t color='#FF0000'>Raid House</t>",life_fnc_raidHouse,cursorTarget,5,false,false,"",
        ' !isNull cursorTarget && (player distance cursorTarget) < 10 && speed cursorTarget < 2 && (count (cursorTarget getVariable ["life_homeOwners", []]) > 0) && (cursorTarget isKindOf "Land_i_House_Small_01_V1_F" || cursorTarget isKindOf "Land_i_House_Small_01_V2_F" || cursorTarget isKindOf "Land_i_House_Small_01_V3_F" || cursorTarget isKindOf "Land_i_House_Small_02_V1_F" || cursorTarget isKindOf "Land_i_House_Small_02_V2_F" || cursorTarget isKindOf "Land_i_House_Small_02_V3_F" || cursorTarget isKindOf "Land_i_House_Small_03_V1_F" || cursorTarget isKindOf "Land_i_House_Big_01_V1_F" || cursorTarget isKindOf "Land_i_House_Big_01_V2_F" || cursorTarget isKindOf "Land_i_House_Big_01_V3_F" || cursorTarget isKindOf "Land_i_House_Big_02_V1_F" || cursorTarget isKindOf "Land_i_House_Big_02_V2_F" || cursorTarget isKindOf "Land_i_House_Big_02_V3_F") && !life_action_inUse']];     
        life_actions = life_actions + [player addAction["<t color='#FFFF00'>Search House Inventory</t>",life_fnc_houseInvSearch,cursorTarget,5,false,false,"",
        ' !isNull cursorTarget && (player distance cursorTarget) < 5 && speed cursorTarget < 2 && (cursorTarget getVariable ["life_locked", 1] == 0) && (cursorTarget isKindOf "Land_i_House_Small_01_V1_F" || cursorTarget isKindOf "Land_i_House_Small_01_V2_F" || cursorTarget isKindOf "Land_i_House_Small_01_V3_F" || cursorTarget isKindOf "Land_i_House_Small_02_V1_F" || cursorTarget isKindOf "Land_i_House_Small_02_V2_F" || cursorTarget isKindOf "Land_i_House_Small_02_V3_F" || cursorTarget isKindOf "Land_i_House_Small_03_V1_F" || cursorTarget isKindOf "Land_i_House_Big_01_V1_F" || cursorTarget isKindOf "Land_i_House_Big_01_V2_F" || cursorTarget isKindOf "Land_i_House_Big_01_V3_F" || cursorTarget isKindOf "Land_i_House_Big_02_V1_F" || cursorTarget isKindOf "Land_i_House_Big_02_V2_F" || cursorTarget isKindOf "Land_i_House_Big_02_V3_F") && !life_action_inUse']];
    
		//Seize Objects
        life_actions = life_actions + [player addAction["Waffen entfernen",life_fnc_seizeObjects,cursorTarget,0,false,false,"",'count(nearestObjects [player,["weaponholder"],3])>0']];
	};
	
    case civilian:
    {
		//Drop fishing net
		life_actions = [player addAction["Werfe Fischernetz",life_fnc_dropFishingNet,"",0,false,false,"",'
		(surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "Ship") && life_carryWeight < life_maxWeight && speed (vehicle player) < 2 && speed (vehicle player) > -1 && !life_net_dropped ']];
		//Rob person
		life_actions = life_actions + [player addAction["Person ausrauben",life_fnc_robAction,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && animationState cursorTarget in ["Incapacitated","amovpercmstpsnonwnondnon_amovpercmstpssurwnondnon"] && !(cursorTarget getVariable["robbed",FALSE]) ']];
		//Houses
        life_actions = life_actions + [player addAction["<t color='#FF0000'>Toggle House Locks</t>",life_fnc_lockHouse,cursorTarget,10,false,false,"",
        ' !isNull cursorTarget && (player distance cursorTarget) < 20 && cursorTarget isKindOf "House" && license_civ_home && (getPlayerUID player) in (cursorTarget getVariable["life_homeOwners", []])']];
        life_actions = life_actions + [player addAction["<t color='#FFFF00'>Toggle Storage Locks</t>",life_fnc_lockStorage,cursorTarget,10,false,false,"",
        ' !isNull cursorTarget && (player distance cursorTarget) < 20 && cursorTarget isKindOf "House" && license_civ_home && (getPlayerUID player) in (cursorTarget getVariable["life_homeOwners", []])']];
        life_actions = life_actions + [player addAction["<t color='#00FF00'>House Menu</t>",life_fnc_houseMenu,cursorTarget,10,false,false,"",
        ' !isNull cursorTarget && (player distance cursorTarget) < 20 && cursorTarget isKindOf "House" && ([typeOf cursorTarget] call life_fnc_housePrice) > -1 && !(([cursorTarget] call life_fnc_getBuildID) in life_public_houses)']];
        life_actions = life_actions + [player addAction["Item Storage",life_fnc_openStorage,cursorTarget,10,false,false,"",
        ' !isNull cursorTarget && (player distance cursorTarget) < 6 && cursorTarget isKindOf "House"  && speed cursorTarget < 2 && (count (cursorTarget getVariable["containers", []]) > 0) && license_civ_home && ((getPlayerUID player) in (cursorTarget getVariable["life_homeOwners", []]) || ((cursorTarget getVariable["storage_locked", 1]) == 0))']];// || !(cursorTarget getVariable["life_locked", true])
        life_actions = life_actions + [player addAction["Vehicle Garage",life_fnc_vehicleGarage,"car",0,false,false,"",
        ' !isNull cursorTarget && (player distance cursorTarget) < 20 && cursorTarget isKindOf "House" && license_civ_home && (typeOf cursorTarget == "Land_i_Garage_V1_F" || typeOf cursorTarget == "Land_i_Garage_V2_F" || typeOf cursorTarget == "Land_i_Garage_V1_dam_F") && (((getPlayerUID player) in (cursorTarget getVariable["life_homeOwners", []])) || ((cursorTarget getVariable["life_locked", 1]) == 0)) ']];
        life_actions = life_actions + [player addAction["Store Vehicle in Garage",life_fnc_storeVehicle,"",0,false,false,"",
        ' !life_garage_store && !isNull cursorTarget && (player distance cursorTarget) < 20 && license_civ_home && cursorTarget isKindOf "House" && (typeOf cursorTarget == "Land_i_Garage_V1_F" || typeOf cursorTarget == "Land_i_Garage_V2_F" || typeOf cursorTarget == "Land_i_Garage_V1_dam_F") && (((getPlayerUID player) in (cursorTarget getVariable["life_homeOwners", []])) || (cursorTarget getVariable["life_locked", 1]) == 0) ']];
	};
};