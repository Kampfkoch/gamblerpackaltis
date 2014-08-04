#include <macro.h>
/*
	Master client initialization file
*/
life_firstSpawn = true;
private["_handle","_timeStamp"];
cutText["Setting up client, please wait...","BLACK FADED"];
0 cutFadeOut 9999999;
_timeStamp = diag_tickTime;
diag_log "------------------------------------------------------------------------------------------------------";
diag_log "--------------------------------- Starting Stratis Life Client Init ----------------------------------";
diag_log "------------------------------------------------------------------------------------------------------";
waitUntil {!isNull player && player == player}; //Wait till the player is ready
//Setup initial client core functions
_handle = [] spawn compile PreprocessFileLineNumbers "core\configuration.sqf";
diag_log "::Life Client:: Initialization Variables";
waitUntil {scriptDone _handle};
diag_log "::Life Client:: Variables initialized";
//[player] execVM "core\client\disable_respawn.sqf";
_handle = [] spawn life_fnc_setupEVH;
diag_log "::Life Client:: Setting up Eventhandlers";
waitUntil {scriptDone _handle};
diag_log "::Life Client:: Eventhandlers completed";
//_handle = [] spawn life_fnc_setupActions;
//diag_log "::Life Client:: Setting up user actions";
//waitUntil {scriptDone _handle};
diag_log "::Life Client:: User actions completed";
diag_log "::Life Client:: Waiting for server functions to transfer..";
waitUntil {(!isNil {clientGangLeader})};
diag_log "::Life Client:: Received server functions.";
[] call SOCK_fnc_dataQuery;
waitUntil {life_session_completed};
cutText["Finishing client setup procedure","BLACK FADED"];
0 cutFadeOut 9999999;

//diag_log "::Life Client:: Group Base Execution";
[] spawn life_fnc_escInterupt;

switch (playerSide) do
{
	case west:
	{
		_handle = [] spawn life_fnc_initCop;
		waitUntil {scriptDone _handle};
	};
	
	case civilian:
	{
		_handle = [] spawn life_fnc_initCiv;
		waitUntil {scriptDone _handle};
	};
	
	case independent:
	{
		_handle = [] spawn life_fnc_initMedic;
		waitUntil {scriptDone _handle};
	};
	
	case east:
	{
		_handle = [] spawn life_fnc_initADAC;
		waitUntil {scriptDone _handle};
	};
	
	case sideLogic:
    {
        _handle = [] spawn life_fnc_initZeus;
        waitUntil {scriptDone _handle};
    };
};

player setVariable["restrained",false,true];
player setVariable["Escorting",false,true];
player setVariable["transporting",false,true];
diag_log "Past Settings Init";
[] execFSM "core\fsm\client.fsm";
diag_log "Executing client.fsm";
waitUntil {!(isNull (findDisplay 46))};
diag_log "Display 46 Found";
(findDisplay 46) displayAddEventHandler ["KeyDown", "_this call life_fnc_keyHandler"];
player addRating 99999999;
_handle = [] spawn compile PreprocessFileLineNumbers "core\config_housing.sqf";
diag_log "::Life Client:: Housing Variables";
waitUntil {scriptDone _handle};
diag_log "::Life Client:: Housing Variables initialized";
diag_log "------------------------------------------------------------------------------------------------------";
diag_log format["                End of Stratis Life Client Init :: Total Execution Time %1 seconds ",(diag_tickTime) - _timeStamp];
diag_log "------------------------------------------------------------------------------------------------------";
life_sidechat = true;
[[player,life_sidechat,playerSide],"TON_fnc_managesc",false,false] spawn life_fnc_MP;
cutText ["","BLACK IN"];
[] call life_fnc_hudSetup;
LIFE_ID_PlayerTags = ["LIFE_PlayerTags","onEachFrame","life_fnc_playerTags"] call BIS_fnc_addStackedEventHandler;
LIFE_ID_RevealObjects = ["LIFE_RevealObjects","onEachFrame","life_fnc_revealObjects"] call BIS_fnc_addStackedEventHandler;
[] call life_fnc_settingsInit;

[] spawn {
	private["_name"];
	_name = "";
 	while {true} do {
 		_name = name player;
 		if(_name != "Error: No unit") exitWith {};
	};
 	player setVariable["realname",_name,true];
};

life_fnc_moveIn = compileFinal
"
	player moveInCargo (_this select 0);
";

[] execVM "core\init_survival.sqf";
[] execVM "core\fn_keyRestore.sqf";
[] call life_fnc_setupActions;

__CONST__(life_paycheck,life_paycheck); //Make the paycheck static.