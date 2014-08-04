private["_veh, _newPos"];
_veh = cursorTarget; //Why isn't the cursorTarget given over by vInteraction? Doesn't matter.
if(isNull _veh) exitWith {}; //Exit if Null
if(_veh isKindOf "Air") exitWith {titleText["This is not a car.","PLAIN"];}; //Exit if no car or boat
if({alive _x} count crew _veh > 0) exitWith {titleText["There is someone in the car.","PLAIN"];}; //Exit if crew in car
if(damage _veh > 0.02) exitWith {titleText["You cannot flip the car when its damaged.","PLAIN"];};//Exit if car is damaged

titleText["Please stay away car will be flipped in 4 seconds.","PLAIN"]; //Announce

sleep 4;
_newPos = getPosASL _veh;
_newPos set [2, (_newPos select 2)+1];
_veh setVectorUp (surfaceNormal _newPos);
_veh setPosASL _newPos;