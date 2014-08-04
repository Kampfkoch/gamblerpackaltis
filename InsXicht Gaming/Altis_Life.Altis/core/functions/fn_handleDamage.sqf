private["_unit","_damage","_source","_projectile","_lowCoca"];
_unit = _this select 0;
_damage = _this select 2;
_source = _this select 3;
_projectile = _this select 4;

//Handle the tazer first (Top-Priority).
if(!isNull _source) then {
	if(_source != _unit) then {
		if(_projectile == "B_9x21_Ball") then {
					if(side _source == west) then {
							if (playerSide == west) then
							{
								_damage = 0;
							} else
							{
							private["_isVehicle","_isQuad"];
							_isVehicle = if(vehicle player != player) then {true} else {false};
							_isQuad = if(_isVehicle) then {if(typeOf (vehicle player) == "B_Quadbike_01_F") then {true} else {false}} else {false};
							_damage = 0;
							if(_unit distance _source < 50) then {
								if(!life_istazed && !(_unit getVariable["restrained",false])) then {
									if(_isVehicle && _isQuad) then {
										player action ["Eject",vehicle player];
									};
							[_unit,_source] spawn life_fnc_tazed;
						};
					};
				};
			};
		};
	};
};

[] call life_fnc_hudUpdate;
_damage;