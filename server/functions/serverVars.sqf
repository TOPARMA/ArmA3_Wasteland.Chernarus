// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//  @file Version: 1.1
//  @file Name: serverVars.sqf
//  @file Author: [404] Deadbeat, [404] Costlyy, [404] Pulse, [GoT] JoSchaap, MercyfulFate, AgentRev
//  @file Created: 20/11/2012 05:19
//  @file Args:

if (!isServer) exitWith {};

diag_log "WASTELAND SERVER - Initializing Server Vars";

#include "setupServerPVars.sqf"

currentStaticHelis = []; // Storage for the heli marker numbers so that we don't spawn wrecks on top of live helis

//Civilian Vehicle List - Random Spawns
civilianVehicles =
[
  "C_Quadbike_01_F",
  "rhs_tigr_vdv",
  "rhs_tigr_vv",
  "rhs_tigr_vmf",
  "rhs_uaz_vmf",
  "rhs_uaz_vdv",
  "rhs_uaz_vv",
  "rhs_uaz_msv"
];

//Light Military Vehicle List - Random Spawns
lightMilitaryVehicles =
[
  "B_Quadbike_01_F",
  "O_Quadbike_01_F",
  "I_Quadbike_01_F",
  "I_G_Quadbike_01_F",
//  "O_Truck_02_covered_F",
//  "I_Truck_02_covered_F",
//  "O_Truck_02_transport_F",
//  "I_Truck_02_transport_F",
  "rhsusf_m1025_w_s_m2"
];

//Medium Military Vehicle List - Random Spawns
mediumMilitaryVehicles =
[
//  "I_Truck_02_Fuel_F",
//  "O_Truck_02_Fuel_F",
//  "I_Truck_02_medical_F",
//  "O_Truck_02_medical_F",
//  "B_MRAP_01_F",
//  "O_MRAP_02_F",
//  "I_MRAP_03_F"
  "rhsusf_m1025_w_s",
  "rhsusf_m998_w_s_4dr"
  
];

//Water Vehicles - Random Spawns
waterVehicles =
[
//  "B_Lifeboat",
//  "O_Lifeboat",
//  "C_Rubberboat",
//  "B_SDV_01_F",
//  "O_SDV_01_F",
//  "I_SDV_01_F",
//  "B_Boat_Transport_01_F",
//  "O_Boat_Transport_01_F",
//  "I_Boat_Transport_01_F",
//  "I_G_Boat_Transport_01_F",
  "B_Boat_Armed_01_minigun_F",
  "O_Boat_Armed_01_hmg_F",
  "I_Boat_Armed_01_minigun_F",
  "C_Boat_Civil_01_F",
  "C_Boat_Civil_01_police_F",
  "C_Boat_Civil_01_rescue_F"
];

//Essential List - Random Spawns.
essentialsList =
[
  "B_supplyCrate_F",
  "Land_Sacks_goods_F",
  "Land_BarrelWater_F"
];

//Object List - Random Spawns.
objectList =
[
  "B_supplyCrate_F",
  "B_supplyCrate_F",
  "CamoNet_INDP_open_F",
  "CamoNet_INDP_open_F",
  "Land_BagBunker_Large_F",
  "Land_BagBunker_Large_F",
  "Land_BagBunker_Small_F",
  "Land_BagBunker_Small_F",
  "Land_BagBunker_Tower_F",
  "Land_BagBunker_Tower_F",
  "Land_BarGate_F",
  "Land_Canal_Wall_Stairs_F",
  "Land_Canal_WallSmall_10m_F",
  "Land_Canal_WallSmall_10m_F",
  "Land_CncBarrierMedium4_F",
  "Land_CncShelter_F",
  "Land_CncWall4_F",
  "Land_HBarrier_1_F",
  "Land_HBarrier_3_F",
  "Land_HBarrier_5_F",
  "Land_HBarrier_5_F",
  "Land_HBarrier_5_F",
  "Land_HBarrierBig_F",
  "Land_HBarrierBig_F",
  "Land_HBarrierBig_F",
  "Land_HBarrierBig_F",
  "Land_HBarrierTower_F",
  "Land_HBarrierWall4_F",
  "Land_HBarrierWall4_F",
  "Land_HBarrierWall6_F",
  "Land_HBarrierWall6_F",
  "Land_MetalBarrel_F",
  "Land_Mil_ConcreteWall_F",
  "Land_Mil_WallBig_4m_F",
  "Land_Mil_WallBig_4m_F",
  "Land_Mil_WallBig_4m_F",
  "Land_Pipes_large_F",
  "Land_RampConcrete_F",
  "Land_RampConcreteHigh_F",
  "Land_Sacks_goods_F",
  "Land_Shoot_House_Wall_F",
  "Land_BarrelWater_F"
];

//Object List - Random Spawns.
staticWeaponsList =
[
  "B_Mortar_01_F",
  "O_Mortar_01_F",
  "I_Mortar_01_F",
  "I_G_Mortar_01_F"
];

//Object List - Random Helis.
staticHeliList =
[
  "B_Heli_Light_01_F",
  "rhs_ka60_c"
  // don't put cargo helicopters here, it doesn't make sense to find them in towns; they spawn in the CivHeli mission
];

//Object List - Random Planes.
staticPlaneList =
[
  "B_Plane_CAS_01_F",
  "O_Plane_CAS_02_F",
  "I_Plane_Fighter_03_CAS_F"
];

//Random Weapon List - Change this to what you want to spawn in cars.
vehicleWeapons =
[
//  "hgun_P07_F",
//  "hgun_Rook40_F",
//  "hgun_ACPC2_F",
//  "arifle_SDAR_F",
  "rhs_weap_m4a1",
  "rhs_weap_m4a1_grip2",
  "rhs_weap_m4a1_bipod",
  "rhs_weap_m4a1_grip",
  "rhs_m4a1_m320",
  "rhs_weap_m16a4",
  "rhs_weap_m16a4_carryhandle",
  "rhs_weap_m249_pip",
  "rhs_weap_m240B",
  "rhs_weap_M320",
  "rhs_weap_ak74m_gp25",
  "rhs_weap_ak74m_2mag_camo",
  "rhs_weap_ak74m_desert",
  "rhs_weap_ak74m_folded",
  "rhs_weap_pkp",
  "hlc_smg_mp5a2",
  "hlc_smg_mp510",
  "hlc_rifle_augpara",
  "hlc_rifle_M14",
  "hlc_rifle_akm",
  "hlc_rifle_FAL5061",
  "hlc_rifle_g3a3",
  "hlc_rifle_aug",
  "rhs_weap_m249_pip",
  "hlc_rifle_l1a1slr",
  "hlc_rifle_hk53"
];

vehicleAddition =
[
  "rhs_acc_tgpa",
  "rhsusf_acc_M2010S",
  "rhs_acc_1p29",
  "rhs_acc_1p63",
  "rhs_acc_ekp1",
  "rhs_acc_pgo7v",
  "rhs_acc_pkas",
  "rhs_acc_pso1m2",
  "rhsusf_acc_anpeq15",
  "rhsusf_acc_anpeq15A",
  "rhsusf_acc_anpeq15_light",
  "rhsusf_acc_EOTECH",
  "rhsusf_acc_compm4",
  "rhsusf_acc_ACOG2",
  "rhsusf_acc_ACOG",
  "Medikit",
  "Medikit",
  "FirstAidKit",
  "ToolKit"
];

vehicleAddition2 =
[
  "rhs_mag_m67",
  "rhs_ammo_m84",
  "rhs_mag_rgd5",
  "rhs_mag_fakels",
  "rhs_mag_nspn_green"
];

// Each item is an array containg [cargo type, weapon amount,
// item amount, box class] to be used by randomWeaponsBox.sqf
randomWeaponBoxes = [
  ["box_west_basic", 6, 2, "rhs_weapons_crate_ak_ammo_545x39_standard"],
  ["box_west_special", 6, 2, "rhs_weapons_crate_ak_standard"],
  ["box_west_explosive", 2, 6, "rhs_weapons_crate_ak_ammo_545x39_standard"],
  ["box_east_basic", 6, 2, "rhs_weapons_crate_ak_ammo_545x39_standard"],
  ["box_east_special", 6, 2, "rhs_weapons_crate_ak_standard"],
  ["box_east_explosive", 2, 6, "rhs_weapons_crate_ak_ammo_545x39_standard"]/*,
  ["box_ind_basic", 5, 2, "rhs_weapons_crate_ak_ammo_545x39_standard"],
  ["box_ind_special", 4, 2, "rhs_weapons_crate_ak_standard"]*/
];

// Each item is an array containing a [weapon class, magazine
// amount, random attachment amount, random alt muzzle
// magazine amount] followed by an array of cargo types it has
// a chance to  randomly spawn in
randomCargoWeapons = [
  [["hlc_smg_mp5a2", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["hlc_smg_mp5a3", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["hlc_smg_mp5a4", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["hlc_smg_mp5n", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["hlc_smg_mp510", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["hlc_smg_mp5sd5", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["hlc_smg_mp5sd6", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["hlc_smg_9mmar", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["hlc_rifle_augpara", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["hlc_rifle_auga2para", 2, 2, 2], ["box_west_basic", "box_east_basic"]],

  [["hlc_rifle_saiga12k", 2, 2, 2], ["box_west_basic", "box_east_basic"]],

  [["hlc_rifle_M14", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["hlc_rifle_M21", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["hlc_rifle_M14DMR", 2, 2, 2], ["box_east_special", "box_west_special"]],
  [["hlc_rifle_m14sopmod", 2, 2, 2], ["box_east_special", "box_west_special"]],
  [["rhs_weap_m14ebrri", 2, 2, 2], ["box_east_special", "box_west_special"]],

  [["rhs_weap_m16a4", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["rhs_weap_m16a4_bipod", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["rhs_weap_m16a4_grip", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["rhs_weap_m16a4_carryhandle", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["rhs_weap_m16a4_carryhandle_pmag", 2, 2, 2], ["box_west_basic", "box_east_basic"]],

  [["rhs_weap_M320", 2, 2, 2], ["box_west_basic", "box_east_basic"]],

  [["rhs_weap_m4", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["rhs_weap_m4_grip2", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["rhs_weap_m4_bipod", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["rhs_weap_m4_grip", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["rhs_weap_m4_carryhandle", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["rhs_weap_m4_carryhandle_pmag", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["rhs_m4_m320", 2, 2, 2], ["box_west_basic", "box_east_basic"]],

  [["rhs_weap_m4a1", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["rhs_weap_m4a1_grip2", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["rhs_weap_m4a1_bipod", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["rhs_weap_m4a1_grip", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["rhs_m4a1_m320", 2, 2, 2], ["box_west_basic", "box_east_basic"]],


  [["rhs_weap_ak74m", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["rhs_weap_ak74m_folded", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["rhs_weap_ak74m_2mag", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["rhs_weap_ak74m_gp25", 2, 2, 2], ["box_west_basic", "box_east_basic"]],

  [["hlc_rifle_ak74", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["hlc_rifle_aks74", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["hlc_rifle_aks74u", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["hlc_rifle_akm", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["hlc_rifle_rpk", 2, 2, 2], ["box_east_special", "box_west_special"]],
  [["hlc_rifle_ak12", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["hlc_rifle_akmgl", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["hlc_rifle_aks74_GL", 2, 2, 2], ["box_west_basic", "box_east_basic"]],


  [["hlc_rifle_l1a1slr", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["hlc_rifle_SLR", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["hlc_rifle_STG58F", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["hlc_rifle_FAL5061", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["hlc_rifle_c1A1", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["hlc_rifle_LAR", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["hlc_rifle_SLRchopmod", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["hlc_rifle_falosw", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["hlc_rifle_osw_GL", 2, 2, 2], ["box_east_special", "box_west_special"]],


  [["hlc_rifle_g3sg1", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["hlc_rifle_g3a3", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["hlc_rifle_g3ka4", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["HLC_Rifle_g3ka4_GL", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["hlc_rifle_hk51", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["hlc_rifle_hk53", 2, 2, 2], ["box_west_basic", "box_east_basic"]],



  [["hlc_rifle_RU556", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["hlc_rifle_RU5562", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["hlc_rifle_Colt727", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["hlc_rifle_Colt727_GL", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["hlc_rifle_bcmjack", 2, 2, 2], ["box_east_special", "box_west_special"]],
  [["hlc_rifle_Bushmaster300", 2, 2, 2], ["box_east_special", "box_west_special"]],
  [["hlc_rifle_vendimus", 2, 2, 2], ["box_east_special", "box_west_special"]],
  [["hlc_rifle_SAMR", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["hlc_rifle_honeybadger", 2, 2, 2], ["box_east_special", "box_west_special"]],

  [["hlc_rifle_aug", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["hlc_rifle_auga1carb", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["hlc_rifle_aughbar", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["hlc_rifle_auga2", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["hlc_rifle_auga2carb", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["hlc_rifle_auga2lsw", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["hlc_rifle_augsr", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["hlc_rifle_augsrcarb", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["hlc_rifle_augsrhbar", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["hlc_rifle_auga3", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["hlc_rifle_auga3_b", 2, 2, 2], ["box_west_basic", "box_east_basic"]],
  [["hlc_rifle_auga3_GL", 2, 2, 2], ["box_west_basic", "box_east_basic"]],

  [["rhs_weap_svdp", 2, 2, 2], ["box_east_special", "box_west_special"]],
  [["rhs_weap_svds", 2, 2, 2], ["box_east_special", "box_west_special"]],
  [["rhs_weap_XM2010", 2, 2, 2], ["box_east_special", "box_west_special"]],
  [["hlc_rifle_psg1", 2, 2, 2], ["box_east_special", "box_west_special"]],
  [["rhs_weap_pkp", 2, 2, 2], ["box_east_special", "box_west_special"]],
  [["rhs_weap_m249_pip", 2, 2, 2], ["box_east_special", "box_west_special"]],
  [["rhs_weap_m240B", 2, 2, 2], ["box_east_special", "box_west_special"]],
  [["hlc_lmg_m60", 2, 2, 2], ["box_east_special", "box_west_special"]],
  [["hlc_lmg_M60E4", 2, 2, 2], ["box_east_special", "box_west_special"]],

  [["rhs_weap_igla", 2, 2, 2], ["box_west_explosive", "box_east_explosive"]],
  [["rhs_weap_rpg26", 2, 2, 2], ["box_west_explosive", "box_east_explosive"]],
  [["rhs_weap_rpg7", 2, 2, 2], ["box_west_explosive", "box_east_explosive"]],
  [["rhs_weap_rshg2", 2, 2, 2], ["box_west_explosive", "box_east_explosive"]],

  [["rhs_weap_fgm148", 2, 2, 2], ["box_west_explosive", "box_east_explosive"]],
  [["rhs_weap_fim92", 2, 2, 2], ["box_west_explosive", "box_east_explosive"]],
  [["rhs_weap_M136", 2, 2, 2], ["box_west_explosive", "box_east_explosive"]],
  [["rhs_weap_M136_hedp", 2, 2, 2], ["box_west_explosive", "box_east_explosive"]],
  [["rhs_weap_M136_hp", 2, 2, 2], ["box_west_explosive", "box_east_explosive"]]
];

// Each item is an array containg an item class, followed by
// an array of each cargo type it has a chance to randomly
randomCargoItems = [
  ["rhs_mag_mk3a2", ["box_west_basic","box_west_explosive"]],
  ["rhs_mag_mk84", ["box_west_special","box_west_explosive"]],
  ["rhs_mag_m67", ["box_west_basic","box_west_special","box_west_explosive"]],
  ["rhs_mag_an_m14_th3", ["box_west_explosive"]],
  ["rhs_mine_M19_ammo", ["box_west_explosive"]],

  ["rhs_mag_rgd5", ["box_east_basic", "box_east_special", "box_east_explosive"]],
  ["rhs_mag_fakel", ["box_east_special", "box_east_explosive"]],
  ["rhs_mag_fakels", ["box_east_special", "box_east_explosive"]],
  ["rhs_mag_zarya2", ["box_east_explosive"]],
  ["rhs_mag_plamyam", ["box_east_explosive"]],
  ["rhs_mine_pmn2", ["box_east_explosive"]],
  ["rhs_mine_tm62m", ["box_east_explosive"]]
];