#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			default
			{
				["Rekrut",
					[
						["hgun_P07_snds_F","Stun Pistol",1000],
						["16Rnd_9x21_Mag",nil,50],
						["SMG_02_F","Tasergewehr",2500],
						["30Rnd_9x21_Mag",nil,75],
						["muzzle_snds_L",nil,500],
						["muzzle_snds_H",nil,500],
						["muzzle_snds_B",nil,500],
						["optic_Aco",nil,500],
						["optic_ACO_grn",nil,500],
						["optic_ACO_grn_smg",nil,500],
						["optic_Holosight_smg",nil,750],
						["optic_Holosight",nil,750],
						["optic_Arco",nil,1000],
						["optic_MRCO",nil,1000],
						["optic_Hamr",nil,1000],
						["acc_flashlight",nil,500],
						["Binocular",nil,100],
						["ItemGPS",nil,100],
						["ToolKit",nil,100],
						["FirstAidKit",nil,100],
						["NVGoggles",nil,1000]	
					]
				];
			};
		};
	};
	
	case "cop_officer":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) != 2): {"Du bist kein Streifenpolizist!"};
			default
			{
				["Streifenpolizist",
					[
						["arifle_TRG21_F",nil,5000],
						["30Rnd_556x45_Stanag",nil,200]
					]
				];
			};
		};
	};

	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"Du bist kein Notarzt"};
			default {
				["Sani Shop",
					[
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["NVGoggles",nil,1200]
					]
				];
			};
		};
	};
	
	case "adac_basic":
	{
		switch (true) do 
		{
			case (playerSide != east): {"Du bist kein ADAC"};
			default {
				["ADAC Shop",
					[
						["ItemGPS",nil,100],
						["Binocular",nil,150],
						["ToolKit",nil,250],
						["FirstAidKit",nil,150],
						["NVGoggles",nil,1200]
					]
				];
			};
		};
	};
	
	case "cop_patrol":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) != 3): {"Du bist kein Kommissar!"};
			default
			{
				["Kommissar",
					[					
						["SMG_02_F",nil,2500],
						["30Rnd_9x21_Mag",nil,75],
						["arifle_MX_Black_F",nil,5000],
						["30Rnd_65x39_caseless_mag",nil,100],
						["DemoCharge_Remote_Mag",nil,500]
					]
				];
			};
		};
	};

	
	case "cop_sergeant":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) != 5): {"Du bist kein Hauptkommissar!"};
			default
			{
				["Hauptkommissar",
					[	
						["SMG_02_F",nil,2500],
						["30Rnd_9x21_Mag",nil,75],
						["arifle_MX_Black_F",nil,5000],
						["arifle_MXM_Black_F",nil,5000],
						["30Rnd_65x39_caseless_mag",nil,100],
						["srifle_EBR_F",nil,5000],
						["20Rnd_762x51_Mag",nil,100],
						["B_UavTerminal",nil,500],
						["B_UAV_01_backpack_F",nil,1000],
						["DemoCharge_Remote_Mag",nil,500],
						["HandGrenade_Stone","Flashbang",500]
					]
				];
			};
		};
	};
	
	case "cop_chief":
	{
		switch(true) do
		{
			case (playerSide != west): {"Du bist kein Polizist!"};
			case (__GETC__(life_coplevel) != 7): {"Du bist kein Polizeichef!"};
			default
			{
				["Polizeichef",
					[
						["SMG_02_F",nil,2500],
						["30Rnd_9x21_Mag",nil,75],
						["arifle_MX_Black_F",nil,5000],
						["arifle_MXM_Black_F",nil,5000],
						["30Rnd_65x39_caseless_mag",nil,100],
						["srifle_EBR_F",nil,5000],
						["20Rnd_762x51_Mag",nil,100],
						["arifle_MX_SW_Black_F",nil,7500],
						["100Rnd_65x39_caseless_mag",nil,150],
						["B_UavTerminal",nil,500],
						["B_UAV_01_backpack_F",nil,1000],
						["DemoCharge_Remote_Mag",nil,500],
						["HandGrenade_Stone","Flashbang",500]
					]
				];
			};
		};
	};
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Zivilist!"};
			case (!license_civ_rebel): {"Du hast keine Rebellen Liezens!"};
			default
			{
				["Mohammed's Jihadi Shop",
					[
						["arifle_SDAR_F",nil,20000],
						["20Rnd_556x45_UW_mag",nil,125],
						["30Rnd_556x45_Stanag",nil,300],
						["arifle_TRG20_F",nil,25000],
						["arifle_Mk20_F",nil,25000],
						["30Rnd_556x45_Stanag",nil,250],
						["30Rnd_556x45_Stanag",nil,300],
						["arifle_Katiba_F",nil,30000],
						["30Rnd_65x39_caseless_green",nil,275],
						["LMG_Mk200_F",nil,200000],
						["200Rnd_65x39_cased_Box",nil,5000],
						["srifle_DMR_01_F",nil,150000],
						["10Rnd_762x51_Mag",nil,1000],
						["optic_Aco",nil,3500],
						["optic_ACO_grn",nil,3500],
						["optic_ACO_grn_smg",nil,3500],
						["optic_Holosight_smg",nil,5000],
						["optic_Holosight",nil,5000],
						["optic_Arco",nil,7500],
						["optic_MRCO",nil,7500],
						["optic_Hamr",nil,7500],
						["acc_flashlight",nil,1000],
						["ToolKit",nil,2000],
						["FirstAidKit",nil,500],
						["NVGoggles",nil,12500]
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Du bist kein Polizist!"};
			case (!license_civ_gun): {"Du hast keinen Waffenschein!"};
			default
			{
				["Billy Joe's Firearms",
					[
						["SMG_01_F",nil,25000],
						["30Rnd_45ACP_Mag_SMG_01",nil,125],
						["hgun_PDW2000_F",nil,20000],
						["hgun_Rook40_F",nil,7500],
						["16Rnd_9x21_Mag",nil,75],
						["30Rnd_9x21_Mag",nil,125],
						["hgun_ACPC2_F",nil,10000],
						["9Rnd_45ACP_Mag",nil,75],
						["hgun_Pistol_heavy_02_Yorris_F",nil,12500],
						["6Rnd_45ACP_Cylinder",nil,100],
						["optic_Aco_smg",nil,2500],
						["optic_ACO_grn_smg",nil,2500],
						["V_Rangemaster_belt",nil,2500]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Werkzeugladen",
			[
				["Binocular",nil,150],
				["ItemGPS",nil,250],
				["ToolKit",nil,1500],
				["FirstAidKit",nil,250],
				["NVGoggles",nil,10000],
				["Chemlight_red",nil,300],
				["Chemlight_yellow",nil,300],
				["Chemlight_green",nil,300],
				["Chemlight_blue",nil,300]
			]
		];
	};
	
	case "gasstore":
	{
		["Tankstellenladen",
			[
				["ToolKit",nil,2500],
				["FirstAidKit",nil,750]
			]
		];
	};
};
