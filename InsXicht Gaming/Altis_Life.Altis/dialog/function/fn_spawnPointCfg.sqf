/*
	File: fn_spawnPointCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for available spawn points depending on the units side.
	
	Return:
	[Spawn Marker,Spawn Name,Image Path]
*/
private["_side","_markers","_mkName","_mk"];
_side = [_this,0,civilian,[civilian]] call BIS_fnc_param;

//Spawn Marker, Spawn Name, PathToImage
switch (_side) do
{
	case west:
	{
		_markers = [
			["cop_spawn_1","Kavala HQ","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["cop_spawn_2","Pyrgos HQ","\a3\ui_f\data\map\MapControl\fuelstation_ca.paa"],
			["cop_spawn_3","Athira HQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_spawn_4","Air HQ","\a3\ui_f\data\map\Markers\NATO\b_air.paa"],
			["cop_spawn_5","HW Patrol","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"],
			["cop_tr","Trainingsgelaende","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]
		];
	};
	
	case civilian:
	{
		_markers = [
			["civ_spawn_1","Kavala","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_2","Pyrgos","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_3","Athira","\a3\ui_f\data\map\MapControl\watertower_ca.paa"],
			["civ_spawn_4","Sofia","\a3\ui_f\data\map\MapControl\watertower_ca.paa"]
		];
		
	if(license_civ_rebel && playerSide == civilian) then {
		_markers = _markers + [
			["Rebelop_1","RebellenHQ","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]
		];
	};	
	if((getPlayerUID player) in ["76561198014197508","76561198010817099","76561198011503397","76561198002548340","76561198074796807","76561198073302415","76561198066887034","76561198063467741","76561198075941270","76561197985874427","76561197960728515"])then {
		_markers = _markers + [
			["hp_spawn","Hard Protection","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]
		];
	};
	
	if((getPlayerUID player) in ["76561198079369851","76561198068704276","76561198026621349","76561198035364308"])then {
		_markers = _markers + [
				["ass_spawn","ASS","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]
		];
	};
	
	if((getPlayerUID player) in ["76561198055707793","76561198073025954","76561198063375920","76561198042395087","76561198073326507"])then {
		_markers = _markers + [
				["pcda_spawn","PCDC","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]
		];
	};
	
	if((getPlayerUID player) in ["76561198069314260","76561198088299390","76561197994091619","76561198086941513","76561198107182773","76561198055279704"])then {
		_markers = _markers + [
				["lbb_spawn","Little Big Brothers","\a3\ui_f\data\map\GroupIcons\badge_rotate_0_gs.paa"]
		];
	};
	
		_houses = [
			"Land_i_House_Small_01_V1_F",
			"Land_i_House_Small_01_V2_F",
			"Land_i_House_Small_01_V3_F",
			"Land_i_House_Small_02_V1_F",
			"Land_i_House_Small_02_V2_F",
			"Land_i_House_Small_02_V3_F",
			"Land_i_House_Small_03_V1_F",
			"Land_i_House_Big_01_V1_F",
			"Land_i_House_Big_01_V2_F",
			"Land_i_House_Big_01_V3_F",
			"Land_i_House_Big_02_V1_F",
			"Land_i_House_Big_02_V2_F",
			"Land_i_House_Big_02_V3_F"
		];
			
		_i = 1;
		{
			_house = nearestObject [(_x select 0), "House_F"];
			if((typeOf _house) in _houses) then {
				
				_mkName  = format["civ_spawn_home_%1", _i];
				
				if (isNil (_mkName)) then {
					_mk = createMarkerLocal [_mkName, (_x select 0)];
					_mk setMarkerAlphaLocal 0;
				};
				
				_markers set [count _markers, [_mkName, format ["Haus %1", _i], "\a3\ui_f\data\map\MapControl\watertower_ca.paa"]];
				_i = _i + 1;
			};
		}forEach life_houses;
	};
	
	case independent: {
		_markers = [
			["medic_spawn_1","Kavala Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_2","Athira Regional","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_3","Pygros Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["medic_spawn_4","Sofia Hospital","\a3\ui_f\data\map\MapControl\hospital_ca.paa"]
		];
	};
	
	case east: {
		_markers = [
			["adac_spawn_1","Adac Kavala","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["adac_spawn_2","Adac Athira","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["adac_spawn_3","Adac Pygros","\a3\ui_f\data\map\MapControl\hospital_ca.paa"],
			["adac_spawn_4","Adac Sofia","\a3\ui_f\data\map\MapControl\hospital_ca.paa"]
		];
	};
};
_markers;