// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: fn_refillbox.sqf  "fn_refillbox"
//	@file Author: [404] Pulse , [404] Costlyy , [404] Deadbeat, AgentRev
//	@file Created: 22/1/2012 00:00
//	@file Args: [OBJECT (Weapons box that needs filling), STRING (Name of the fill to give to object)]

if (!isServer) exitWith {};

#define RANDOM_BETWEEN(START,END) (START + floor random ((END - START) + 1))

private ["_box", "_boxType", "_boxItems", "_item", "_qty", "_mag"];
_box = _this select 0;
_boxType = _this select 1;

_box allowDamage false; // No more fucking busted crates
_box setVariable ["A3W_inventoryLockR3F", true, true];

// Clear pre-existing cargo first
//clearBackpackCargoGlobal _box;
clearMagazineCargoGlobal _box;
clearWeaponCargoGlobal _box;
clearItemCargoGlobal _box;

if (_boxType == "mission_USSpecial2") then { _boxType = "mission_USSpecial" };

switch (_boxType) do
{
	case "mission_USLaunchers":
	{
		_boxItems =
		[
			// Item type, Item class(es), # of items, # of magazines per weapon
			["wep", ["rhs_weap_fgm148", "rhs_weap_M136_hp", "rhs_weap_M136_hedp", "rhs_weap_M136"], RANDOM_BETWEEN(3,5), RANDOM_BETWEEN(1,2)],
			["wep", ["rhs_weap_fim92", "rhs_weap_fim92"], RANDOM_BETWEEN(1,2), RANDOM_BETWEEN(1,2)],
			["mag", ["ClaymoreDirectionalMine_Remote_Mag", "SLAMDirectionalMine_Wire_Mag", "ATMine_Range_Mag", "DemoCharge_Remote_Mag", "SatchelCharge_Remote_Mag"], RANDOM_BETWEEN(4,8)]
		];
	};
	case "mission_USSpecial":
	{
		_boxItems =
		[
			// Item type, Item class(es), # of items, # of magazines per weapon
			//["itm", "NVGoggles", 5],
			["wep", ["Binocular", "Rangefinder"], RANDOM_BETWEEN(1,5)],
			["itm", "Medikit", RANDOM_BETWEEN(1,3)],
			["itm", "Toolkit", RANDOM_BETWEEN(0,1)],
			["wep", ["hlc_rifle_honeybadger", "hlc_rifle_vendimus", "hlc_rifle_Bushmaster300", "hlc_rifle_m14sopmod", "hlc_rifle_osw_GL"], RANDOM_BETWEEN(2,3), RANDOM_BETWEEN(4,6)],
			["wep", ["hlc_rifle_augpara_b", "hlc_rifle_augpara_t", "hlc_rifle_auga2para_b", "hlc_rifle_auga2para_t", "rhs_weap_ak74m_camo", "rhs_weap_ak74m_desert", "rhs_weap_ak74m_2mag_camo"], RANDOM_BETWEEN(2,3), RANDOM_BETWEEN(4,6)],
			["wep", ["hlc_rifle_auga1_B", "hlc_rifle_auga2_b", "hlc_rifle_augsr_b", "hlc_rifle_auga3_bl", "hlc_rifle_auga3_GL_B", "hlc_rifle_auga3_GL_BL"], RANDOM_BETWEEN(1,3), RANDOM_BETWEEN(4,6)],
			["wep", ["rhs_weap_pkp", "rhs_weap_m249_pip", "rhs_weap_m240B", "hlc_lmg_M60E4"], RANDOM_BETWEEN(1,3), RANDOM_BETWEEN(2,4)],
			["mag", "rhs_mag_rdg2_black", RANDOM_BETWEEN(4,6)],
			["mag", "rhs_mag_rgd5", RANDOM_BETWEEN(4,6)]
		];
	};

//Armed Diver Mission / main: hostileheliformation
	case "mission_Main_A3snipers":
	{
		_boxItems =
		[
			// Item type, Item class(es), # of items, # of magazines per weapon
			["wep", ["rhs_weap_svdp_wd", "rhs_weap_XM2010_wd", "rhs_weap_XM2010_d", "rhs_weap_XM2010_sa"], RANDOM_BETWEEN(2,3), RANDOM_BETWEEN(6,8)],
			["wep", ["hlc_rifle_psg1", "hlc_rifle_M21"], RANDOM_BETWEEN(2,3), RANDOM_BETWEEN(6,8)],
			["wep", ["Rangefinder"], RANDOM_BETWEEN(4,4)],
			["itm", ["HLC_Optic_PSO1", "optic_SOS"], RANDOM_BETWEEN(3,4)]
		];
	};
	case "mission_TOP_Sniper":
	{
		_boxItems =
		[
			// Item type, Item class(es), # of items, # of magazines per weapon
			["wep", ["srifle_LRR_SOS_F", "srifle_LRR_camo_SOS_F", "srifle_GM6_SOS_F", "srifle_GM6_camo_SOS_F"], RANDOM_BETWEEN(1,5), RANDOM_BETWEEN(4,6)],
			["wep", ["srifle_EBR_F", "srifle_DMR_01_F"], RANDOM_BETWEEN(1,3), RANDOM_BETWEEN(4,6)],
			["wep", "Rangefinder", RANDOM_BETWEEN(1,3)],
			["itm", ["HLC_Optic_PSO1", "optic_SOS"], RANDOM_BETWEEN(3,4)]
		];
	};
	case "mission_TOP_Gear1":
	{
		_boxItems =
		[
			// Item type, Item class(es), # of items, # of magazines per weapon
			["itm", ["V_RebreatherB", "V_PlateCarrierIAGL_dgtl", "V_TacVest_camo", "V_PlateCarrierGL_rgr"], RANDOM_BETWEEN(1,8)],
			["itm", ["B_Carryall_mcamo", "B_Kitbag_mcamo"], RANDOM_BETWEEN(1,5)],
			["itm", ["U_B_HeliPilotCoveralls","U_B_Wetsuit","U_B_CombatUniform_mcam_vest"], RANDOM_BETWEEN(1,4)],
			["itm", ["H_HelmetCrew_B","H_CrewHelmetHeli_B","H_HelmetB_plain_blk","H_HelmetSpecB"], RANDOM_BETWEEN(1,5)]
		];
	};
};

[_box, _boxItems] call processItems;
