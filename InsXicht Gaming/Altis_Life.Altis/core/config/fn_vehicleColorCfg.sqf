/*
	File: fn_vehicleColorCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for vehicle colors.
*/
private["_vehicle","_ret","_path"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
if(_vehicle == "") exitWith {[]};
_ret = [];

switch (_vehicle) do
{
	case "I_Heli_Transport_02_F":
	{
		_path = "\a3\air_f_beta\Heli_Transport_02\Data\Skins\";
		_ret =
		[
			[_path + "heli_transport_02_1_ion_co.paa","civ",_path + "heli_transport_02_2_ion_co.paa",_path + "heli_transport_02_3_ion_co.paa"],
			[_path + "heli_transport_02_1_dahoman_co.paa","civ",_path + "heli_transport_02_2_dahoman_co.paa",_path + "heli_transport_02_3_dahoman_co.paa"],
			["#(argb,8,8,3)color(0.302,0.275,0,1)","adac","#(argb,8,8,3)color(0.302,0.275,0,1)","#(argb,8,8,3)color(0.302,0.275,0,1)"]
		];
	};
	
	case "B_Truck_01_transport_F":
	{
		_ret =
		[
			["images\hemtt_adac.jpg","adac"]
		];
	};
	
	case "C_Hatchback_01_sport_F":
	{
		_path = "\a3\soft_f_gamma\Hatchback_01\data\";
		_ret =
		[
			[_path + "hatchback_01_ext_sport01_co.paa","civ"],
			[_path + "hatchback_01_ext_sport02_co.paa","civ"],
			[_path + "hatchback_01_ext_sport03_co.paa","civ"],
			[_path + "hatchback_01_ext_sport05_co.paa","civ"],
			["\A3\soft_f_gamma\Hatchback_01\Data\hatchback_01_ext_sport06_co.paa","civ"],
			["images\policeHB.jpg","cop"],
			["#(ai,64,64,1)Fresnel(1.3,7)","fed"],
			["images\civ_hatchback_sport.jpg","civ"],
			["images\ghost_hatchback_sport.jpg","civ"],
			["images\hatchbackv1.jpg","civ"],
			["images\hatchbackv2.jpg","civ"],
			["images\redgull_hatchback_sport.jpg","civ"]
		];
	};
		
	case "C_Offroad_01_F":
	{
		_ret = 
		[
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_co.paa", "civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE01_CO.paa", "civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa", "civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE03_CO.paa","civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE04_CO.paa","civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE05_CO.paa","civ"],
			["images\med_offroad.jpg","med"],
			["images\monsterenergy_off.jpg","civ"],
			["images\police_offroad.jpg","cop"],
			["images\offroad_monster.jpg","civ"],
			["images\pokemon.jpg","civ"],
			["images\offroad_adac3.jpg","adac"]
		];
	};
	
	case "C_Hatchback_01_F":
	{
		_ret =
		[
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base01_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base02_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base03_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base04_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base06_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base07_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base08_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base09_co.paa","civ"]
		];
	};
	
	case "C_SUV_01_F":
	{
		_ret =
		[
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_03_co.paa","civ"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_04_co.paa","civ"],
			["#(ai,64,64,1)Fresnel(1.3,7)","fed"],
			["images\police_suv.jpg","cop"],
			["images\suv_pro.jpg","civ"],
			["images\med_suv.jpg","med"],
			["images\batman_suv.jpg","civ"],
			["images\ferrari_suv.jpg","civ"],
			["images\pink_suv.jpg","civ"],
			["images\superman_Suv.jpg","civ"]
		];
	};
	
	case "C_Van_01_box_F":
	{
		_ret = 
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"]
		];
	};
	
	case "C_Van_01_transport_F":
	{
		_ret = 
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"]
		];
	};
	
	case "B_Quadbike_01_F":
	{
		_ret = 
		[
			["\A3\Soft_F\Quadbike_01\Data\Quadbike_01_co.paa","cop"],
			["\A3\Soft_F\Quadbike_01\Data\quadbike_01_opfor_co.paa","reb"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_black_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_blue_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_red_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_white_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_indp_co.paa","civ"],
			["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","civ"],
			["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","reb"]
		];
	};
	
	case "B_Heli_Light_01_F":
	{
		_ret = 
		[
			["images\police_heli.jpg","cop"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_ion_co.paa","fed"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_blue_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_indp_co.paa","donate"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_blueline_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_elliptical_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_furious_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_jeans_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_speedy_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sunset_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_vrana_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_wave_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa","reb"],
			["images\med_hummingbird.jpg","med"],
			["#(argb,8,8,3)color(0.302,0.275,0,1)","adac"]
		];
	};
	
	case "O_Heli_Light_02_unarmed_F":
	{
		_ret = 
		[
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_co.paa","civ"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_civilian_co.paa","civ"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_indp_co.paa","reb"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_opfor_co.paa","reb"],
			["images\med_orca.jpg","med"]
		];
	};
	
	case "B_MRAP_01_F":
	{
		_ret = 
		[
			["images\rebell_hunter.jpg","reb","images\rebell_hunter2.jpg"]
		];
	};
	
	case "I_MRAP_03_F":
	{
		_ret = 
		[
			["images\polizei_strider.jpg","cop"]
		];
	};
	
	case "O_MRAP_02_F":
	{
		_ret = 
		[
			["images\Ifrit_Polizei4_Front.jpg","cop","images\Ifrit_Polizei4_hinten.jpg"]
		];
	};
	
	case "I_Truck_02_covered_F":
	{
		_ret = 
		[
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","#(argb,8,8,3)color(0.047,0.322,0.875,1)"],
			["#(argb,8,8,3)color(1,1,1,1)","civ","#(argb,8,8,3)color(0,0,0,1)"],
			["#(argb,8,8,3)color(0.059,0.576,0,1)","civ","#(argb,8,8,3)color(0.729,0.004,0.004,1)"]
		];
	};
	
	case "I_Truck_02_transport_F":
	{
		_ret = 
		[
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","#(argb,8,8,3)color(0.047,0.322,0.875,1)"],
			["#(argb,8,8,3)color(1,1,1,1)","civ","#(argb,8,8,3)color(0,0,0,1)"],
			["#(argb,8,8,3)color(0.059,0.576,0,1)","civ","#(argb,8,8,3)color(0.729,0.004,0.004,1)"]
		];
	};
	
	case "I_Truck_02_box_F":
	{
		_ret = 
		[
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","#(argb,8,8,3)color(0.047,0.322,0.875,1)"],
			["#(argb,8,8,3)color(1,1,1,1)","civ","#(argb,8,8,3)color(0,0,0,1)"],
			["#(argb,8,8,3)color(0.059,0.576,0,1)","civ","#(argb,8,8,3)color(0.729,0.004,0.004,1)"]
		];
	};
	
	
	case "I_Heli_light_03_unarmed_F":
	{
		_path = "\A3\air_f_ebp\Heli_Light_03\data\";
		_ret =
		[
			["\A3\air_f_ebp\Heli_Light_03\data\heli_light_03_base_co.paa","fed"],
			["images\police_hellcat.jpg","cop"]
		];
	};
};

_ret;