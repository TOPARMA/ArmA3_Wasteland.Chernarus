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

#include "functions\setupServerPVars.sqf"

currentStaticHelis = []; // Storage for the heli marker numbers so that we don't spawn wrecks on top of live helis

//Civilian Vehicle List - Random Spawns
civilianVehicles =
[
  "C_Quadbike_01_F",
  "rhs_tigr_vdv",
  "C_Offroad_01_F",
  "rhsusf_m1025_w"
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
//  "B_Heli_Light_01_F",
  "rhs_uh60m_mev2",
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


// Each array item in the following random*Cargo arrays is an array
// containg [cargo type, weapon amount, item amount, weapon duplicates,
// item duplicates] to be passed to randomCargoFill.sqf, used to fill
// already existing box/vehicle.

randomMissionBasicCargo = [
  ["box_west_basic", 5, 5, true, true],
  ["box_east_basic", 5, 5, true, true]
];

randomMissionSpecialCargo = [
  ["box_west_special", 5, 5, true, true],
  ["box_east_special", 5, 5, true, true]
];

randomMissionExplosiveCargo = [
  ["box_west_explosive", 3, 5, true, true],
  ["box_east_explosive", 3, 5, true, true]
];

// Combine all into a randomMissionCargo array
randomMissionCargo = (
  randomMissionBasicCargo +
  randomMissionSpecialCargo +
  randomMissionExplosiveCargo
);

// Each array item in the randomWeaponBoxes arrays is an array
// containg [cargo type, weapon amount, item amount, box class] to
// be passed to randomWeaponsBox.sqf, used to spawn and fill a 
// box/vehicle (e.g. box class could be a vehicle class).

randomWeaponBoxes = [
  ["box_west_basic", 4, 5, "rhs_weapons_crate_ak_ammo_545x39_standard"],
  ["box_west_special", 4, 5, "rhs_weapons_crate_ak_standard"],
  ["box_west_explosive", 2, 5, "rhs_weapons_crate_ak_ammo_545x39_standard"],
  ["box_east_basic", 4, 5, "rhs_weapons_crate_ak_ammo_545x39_standard"],
  ["box_east_special", 4, 5, "rhs_weapons_crate_ak_standard"],
  ["box_east_explosive", 2, 5, "rhs_weapons_crate_ak_ammo_545x39_standard"]
];


// Each item is an array containing a [weapon class, magazine
// amount, random attachment amount, random alt muzzle
// magazine amount] followed by an array of cargo types it has
// a chance to  randomly spawn in
randomCargoWeapons = [

// PISTOL/SMG/SHOTGUN
  [["rhs_weap_pya", 2, 2, 0], ["box_west_basic", "box_east_basic"]],                    // MP-443
  [["hlc_smg_mp5k", 2, 2, 0], ["box_west_basic", "box_east_basic"]],                    // HK MP5k

  [["hlc_smg_mp5k_PDW", 3, 1, 0], ["box_west_basic", "box_east_basic"]],                // HK MP5k PDW
  [["hlc_smg_mp5a2", 3, 1, 0], ["box_west_basic", "box_east_basic"]],                   // MP5A2 no rail
  [["hlc_smg_mp5a3", 3, 1, 0], ["box_west_basic", "box_east_basic"]],                   // MP5A3 no rail
  [["hlc_smg_mp5a4", 3, 1, 0], ["box_west_basic", "box_east_basic"]],                   // MP5A4 Navy
  [["hlc_smg_mp5n", 3, 1, 0], ["box_west_basic", "box_east_basic"]],                    // MP5N Navy
  [["hlc_smg_mp510", 3, 1, 0], ["box_west_basic", "box_east_basic"]],                   // MP5/10 Navy
  [["hlc_smg_mp5sd5", 3, 1, 0], ["box_west_basic", "box_east_basic"]],                  // MP5SD5 Navy
  [["hlc_smg_mp5sd6", 3, 1, 0], ["box_west_basic", "box_east_basic"]],                  // MP5SD6 Navy
  [["hlc_smg_9mmar", 3, 1, 0], ["box_west_basic", "box_east_basic"]],                   // Navy SMG (Half-Life)
  [["hlc_rifle_augpara", 3, 1, 0], ["box_west_basic", "box_east_basic"]],               // Steyr AUGA1 9mm Para
  [["hlc_rifle_auga2para", 3, 1, 0], ["box_west_basic", "box_east_basic"]],             // Steyr AUGA2 9mm Para

  [["hlc_rifle_saiga12k", 3, 1, 0], ["box_west_basic", "box_east_basic"]],              // Izhmash Saiga12K


// M16/M4/M4A1/M320
  [["rhs_weap_m16a4", 3, 2, 2], ["box_west_basic"]],                                    // M16A4 RIS
  [["rhs_weap_m16a4_bipod", 3, 2, 2], ["box_west_basic"]],                              // M16A4 (Bipod)
  [["rhs_weap_m16a4_grip", 3, 2, 2], ["box_west_basic"]],                               // M16A4 (Grippod)
  [["rhs_weap_m16a4_carryhandle", 3, 2, 2], ["box_west_basic"]],                        // M16A4 (Carryhandle)
  [["rhs_weap_m16a4_carryhandle_pmag", 3, 2, 2], ["box_west_basic"]],                   // M16A4 (Carryhandle/Pmag)


  [["rhs_weap_m4", 3, 2, 2], ["box_west_basic"]],                                       // M4 RIS
  [["rhs_weap_m4_grip2", 3, 2, 2], ["box_west_basic"]],                                 // M4 (AFG)
  [["rhs_weap_m4_bipod", 3, 2, 2], ["box_west_basic"]],                                 // M4 (Bipod)
  [["rhs_weap_m4_grip", 3, 2, 2], ["box_west_basic"]],                                  // M4 (Grippod)
  [["rhs_weap_m4_carryhandle", 3, 2, 2], ["box_west_basic"]],                           // M4 (Carryhandle)
  [["rhs_weap_m4_carryhandle_pmag", 3, 2, 2], ["box_west_basic"]],                      // M4 (Carryhandle/PMAG)
  [["rhs_m4_m320", 3, 2, 2], ["box_west_basic"]],                                       // M4 (M320)

  [["rhs_weap_m4a1", 3, 2, 2], ["box_west_basic"]],                                     // M4A1 RIS
  [["rhs_weap_m4a1_grip2", 3, 2, 2], ["box_west_basic"]],                               // M4A1 (AFG)
  [["rhs_weap_m4a1_bipod", 3, 2, 2], ["box_west_basic"]],                               // M4A1 (Bipod)
  [["rhs_weap_m4a1_grip", 3, 2, 2], ["box_west_basic"]],                                // M4A1 (Grippod)
  [["rhs_m4a1_m320", 3, 2, 2], ["box_west_basic"]],                                     // M4A1 (M320)

  [["rhs_weap_M320", 3, 2, 2], ["box_west_basic"]],                                     // M320 GLM


// AK
  [["rhs_weap_ak74m", 3, 2, 2], ["box_east_basic"]],                                    // AK-74M
  [["rhs_weap_ak74m_folded", 3, 2, 2], ["box_east_basic"]],                             // AK-74M (folded)
  [["rhs_weap_ak74m_2mag", 3, 2, 2], ["box_east_basic"]],                               // AK-74M (2 mag)
  [["rhs_weap_ak74m_gp25", 3, 2, 2], ["box_east_basic"]],                               // AK-74M (GP-25 Kostyor)
  [["hlc_rifle_ak12", 3, 2, 2], ["box_east_basic"]],                                    // AK12

  [["hlc_rifle_aek971", 3, 2, 2], ["box_east_basic"]],                                  // Izhmash EAK971
  [["hlc_rifle_aks74", 3, 2, 2], ["box_east_basic"]],                                   // Izhmash AKS74
  [["hlc_rifle_aks74_GL", 3, 2, 2], ["box_east_basic"]],                                // Izhmash AKS74 GL
  [["hlc_rifle_aks74u", 3, 2, 2], ["box_east_basic"]],                                  // Izhmash AKS74U
  [["hlc_rifle_ak74", 3, 2, 2], ["box_east_basic"]],                                    // Izhmash AK74
  [["hlc_rifle_aks74_GL", 3, 2, 2], ["box_east_basic"]],                                // Izhmash AKS74 GP30
  [["hlc_rifle_akm", 3, 2, 2], ["box_east_basic"]],                                     // Izhmash AKM
  [["hlc_rifle_akmgl", 3, 2, 2], ["box_east_basic"]],                                   // Izhmash AKM GL GP25


// AUG
  [["hlc_rifle_aug", 3, 2, 2], ["box_west_basic"]],                                     // Steyr AUGA1 Rifle
  [["hlc_rifle_auga1carb", 3, 2, 2], ["box_west_basic"]],                               // Steyr AUGA1 Carbine
  [["hlc_rifle_aughbar", 3, 2, 2], ["box_west_basic"]],                                 // Steyr AUGA1 Heavy
  [["hlc_rifle_auga2", 3, 2, 2], ["box_west_basic"]],                                   // Steyr AUGA2 Rifle
  [["hlc_rifle_auga2carb", 3, 2, 2], ["box_west_basic"]],                               // Steyr AUGA2 Carbine
  [["hlc_rifle_auga2lsw", 3, 2, 2], ["box_west_basic"]],                                // Steyr AUGA2 Heavy
  [["hlc_rifle_augsr", 3, 2, 2], ["box_west_basic"]],                                   // Steyr AUGSR Rifle
  [["hlc_rifle_augsrcarb", 3, 2, 2], ["box_west_basic"]],                               // Steyr AUGSR Carbine
  [["hlc_rifle_augsrhbar", 3, 2, 2], ["box_west_basic"]],                               // Steyr AUGSR Heavy
  [["hlc_rifle_auga3", 3, 2, 2], ["box_west_basic"]],                                   // Steyr AUGA3 Rifle (Green)
  [["hlc_rifle_auga3_b", 3, 2, 2], ["box_west_basic"]],                                 // Steyr AUGA3 Rifle (Black)
  [["hlc_rifle_auga3_GL", 3, 2, 2], ["box_west_basic"]],                                // Steyr AUGA3 with M203A1 (Green)


// FAL
  [["hlc_rifle_l1a1slr", 3, 2, 2], ["box_east_special"]],                               // Enfield L1A1 SLR
  [["hlc_rifle_SLR", 3, 2, 2], ["box_east_special"]],                                   // Lithgow SLR (Aussy L1A1)
  [["hlc_rifle_STG58F", 3, 2, 2], ["box_east_special"]],                                // Steyr STG.58
  [["hlc_rifle_FAL5061", 3, 2, 2], ["box_east_special"]],                               // FN FAL (Para)
  [["hlc_rifle_c1A1", 3, 2, 2], ["box_east_special"]],                                  // FN C1A1 (CAN SLR)
  [["hlc_rifle_LAR", 3, 2, 2], ["box_east_special"]],                                   // FN LAR (Israel)
  [["hlc_rifle_SLRchopmod", 3, 2, 2], ["box_east_special"]],                            // Lithgow SLR Chopmod
  [["hlc_rifle_falosw", 3, 2, 2], ["box_east_special"]],                                // DSA FAL OSW
  [["hlc_rifle_osw_GL", 3, 2, 2], ["box_east_special"]],                                // DSA FAL OSW M203GL


// G3
  [["hlc_rifle_g3sg1", 3, 2, 2], ["box_east_special"]],                                 // H&K G3SG1
  [["hlc_rifle_g3a3", 3, 2, 2], ["box_east_special"]],                                  // H&K G3A3
  [["hlc_rifle_g3ka4", 3, 2, 2], ["box_east_special"]],                                 // H&K G3KA4
  [["HLC_Rifle_g3ka4_GL", 3, 2, 2], ["box_east_special"]],                              // H&K G3KA4 M203
  [["hlc_rifle_hk51", 3, 2, 2], ["box_east_special"]],                                  // FR Ordnance MC51 (G3)
  [["hlc_rifle_hk53", 3, 2, 2], ["box_east_special"]],                                  // H&K HK53


// AR
  [["hlc_rifle_RU556", 3, 2, 2], ["box_west_special"]],                                 // AR15 Sanitied Carbine
  [["hlc_rifle_RU5562", 3, 2, 2], ["box_west_special"]],                                // AR15 Magpul Carbine
  [["hlc_rifle_Colt727", 3, 2, 2], ["box_west_special"]],                               // Colt Carbine(727 Commando)
  [["hlc_rifle_Colt727_GL", 3, 2, 2], ["box_west_special"]],                            // Colt Carbine M203(727 Commando)
  [["hlc_rifle_bcmjack", 3, 2, 2], ["box_west_special"]],                               // Bravo Company MFG/Haley
  [["hlc_rifle_Bushmaster300", 3, 2, 2], ["box_west_special"]],                         // Bushmaster .300 Carbine
  [["hlc_rifle_vendimus", 3, 2, 2], ["box_west_special"]],                              // AR15 .300 Dissipator
  [["hlc_rifle_SAMR", 3, 2, 2], ["box_west_special"]],                                  // Rock River Arms LAR-15 AMR
  [["hlc_rifle_samr2", 3, 2, 2], ["box_west_special"]],                                 // Rock River Arms LAR-15 AMR N
  [["hlc_rifle_honeybadger", 3, 2, 2], ["box_west_special"]],                           // AAC Honey-Badger Carbine


// M14
  [["hlc_rifle_M14", 3, 1, 0], ["box_west_special"]],                                   // M14
  [["hlc_rifle_M14DMR", 3, 1, 0], ["box_west_special"]],                                // M14 DMR(ArmA2 DMR)
  [["hlc_rifle_m14sopmod", 3, 1, 0], ["box_west_special"]],                             // Troy M14 SOPMOD
  [["rhs_weap_m14ebrri", 3, 1, 0], ["box_west_special"]],                               // Mk14 EBR-RI


// SNIPER
  [["rhs_weap_svdp", 4, 1, 0], ["box_east_special"]],                                   // SVD-M Dragunov
  [["rhs_weap_svds", 4, 1, 0], ["box_east_special"]],                                   // SVD-S Dragunov

  [["rhs_weap_XM2010", 4, 1, 0], ["box_west_special"]],                                 // M2010 ESR
  [["hlc_rifle_psg1", 4, 1, 0], ["box_west_special"]],                                  // H&K PSG1
  [["hlc_rifle_M21", 4, 1, 0], ["box_west_special"]],                                   // M21


// LMG
  [["rhs_weap_pkp", 1, 2, 2], ["box_east_special"]],                                    // PKP (Pecheneg)
  [["hlc_rifle_RPK12", 2, 2, 2], ["box_east_special"]],                                 // Izhmash RPK12
  [["hlc_rifle_rpk", 2, 2, 2], ["box_east_special"]],                                   // Izhmash RPK

  [["rhs_weap_m249_pip", 1, 2, 2], ["box_west_special"]],                               // M249 PIP(SAW)
  [["rhs_weap_m240B", 1, 2, 2], ["box_west_special"]],                                  // M240B
  [["hlc_lmg_m60", 1, 2, 2], ["box_west_special"]],                                     // M60 (no optic)
  [["hlc_lmg_M60E4", 1, 2, 2], ["box_west_special"]],                                   // M60E4


// LAUNCHER
  [["rhs_weap_igla", 2, 2, 0], ["box_east_explosive"]],                                 // 9K38 Igla AA
  [["rhs_weap_rpg26", 2, 2, 0], ["box_east_explosive"]],                                // RPG-26
  [["rhs_weap_rpg7", 2, 2, 0], ["box_east_explosive"]],                                 // RPG-7
  [["rhs_weap_rshg2", 2, 2, 0], ["box_east_explosive"]],                                // RShG-2

  [["rhs_weap_fgm148", 2, 2, 0], ["box_west_explosive"]],                               // FGM-148 Javelin
  [["rhs_weap_fim92", 2, 2, 0], ["box_west_explosive"]],                                // FIM-92F
  [["rhs_weap_M136", 2, 2, 0], ["box_west_explosive"]],                                 // M136 (HEAT)
  [["rhs_weap_M136_hedp", 2, 2, 0], ["box_west_explosive"]],                            // M136 (HEDP)
  [["rhs_weap_M136_hp", 2, 2, 0], ["box_west_explosive"]]                               // M136 (HP)
];

// Each item is an array containg an item class, followed by
// an array of each cargo type it has a chance to randomly
randomCargoItems = [
  ["rhs_mag_mk3a2", ["box_west_basic","box_west_explosive"]],                           // M84 Stun Grenade
  ["rhs_mag_mk84", ["box_west_special","box_west_explosive"]],                          // Mk84 Stun Grenade
  ["rhs_mag_m67", ["box_west_basic","box_west_special","box_west_explosive"]],          // M67 Frag Grenade
  ["rhs_mag_an_m14_th3", ["box_west_explosive"]],                                       // M14/Th3 Incendiary Grenade
  ["rhs_mine_M19_ammo", ["box_west_explosive"]],                                        // M19 AT Mine

  ["rhs_mag_rgd5", ["box_east_basic", "box_east_special", "box_east_explosive"]],       // RGD-5 Grenade
  ["rhs_mag_fakel", ["box_east_special", "box_east_explosive"]],                        // Fakel Grenade
  ["rhs_mag_fakels", ["box_east_special", "box_east_explosive"]],                       // Fakel-S Grenade
  ["rhs_mag_zarya2", ["box_east_explosive"]],                                           // Zarya-2 Grenade
  ["rhs_mag_plamyam", ["box_east_explosive"]],                                          // Plamya-M Grenade
  ["rhs_mine_pmn2", ["box_east_explosive"]],                                            // PMN-2 AP Mine
  ["rhs_mine_tm62m", ["box_east_explosive"]],                                           // TM-62M AT Mine

  ["ItemGPS", ["box_west_basic", "box_east_basic"]],                                    // GPS
  ["FirstAidKit", ["box_west_basic", "box_east_basic"]],                                // First Aid Kit
  ["Medikit", ["box_west_basic", "box_east_basic"]],                                    // Medikit
  ["ToolKit", ["box_west_basic", "box_east_basic"]],                                    // Toolkit
  ["rhsusf_ANPVS_14", ["box_west_basic", "box_east_basic"]],                            // NV AN PVS-14
  ["rhsusf_ANPVS_15", ["box_west_basic", "box_east_basic"]],                            // NV AN PVS-15
  ["Binocular", ["box_west_basic", "box_east_basic"]],                                  // Binoculars
  ["Rangefinder", ["box_west_basic", "box_east_basic"]],                                // Rangefinder
  ["Laserdesignator", ["box_west_basic", "box_east_basic"]]                             // Laser Designator
];


aiRandomClasses = [
  "C_man_1_3_F",
  "C_man_polo_1_F",
  "C_man_polo_2_F",
  "C_man_polo_3_F",
  "C_man_polo_4_F",
  "C_man_polo_5_F",
  "C_man_polo_6_F"
];

aiLoadoutsBasic = [
  [
    ["rhs_uniform_cu_ucp_patchless"],                                                                                         // Uniforms
    ["rhsusf_iotv_ocp", "rhsusf_iotv_ocp_grenadier", "rhsusf_iotv_ocp_medic", "rhsusf_iotv_ocp_rifleman"],                    // Vests
    ["rhsusf_ach_bare", "rhs_Booniehat_ocp", "rhsusf_patrolcap_ocp", "rhsusf_ach_helmet_m81"],                                // Headgear
    ["rhs_weap_m16a4","rhs_weap_m16a4_grip","rhs_weap_m4_carryhandle","rhs_m4_m320"],                                         // Rifles
    ["rhsusf_assault_eagleaiii_ocp", "rhs_weap_M136", "rhs_m136_mag"]                                                         // Backpack, Launcher, Missile
  ],
  [
    ["rhs_uniform_emr_patchless"],                                                                                            // Uniforms
    ["rhs_6b23_digi", "rhs_6b23_digi_crew", "rhs_6b23_digi_medic", "rhs_6b23_digi_rifleman"],                                 // Vests
    ["rhs_6b27m_digi", "rhs_6b27m_digi_bala", "rhs_6b28", "rhs_6b28_ess_bala", "rhs_Booniehat_digi", "rhs_fieldcap"],         // Headgear
    ["hlc_rifle_aks74","hlc_rifle_aks74_GL","hlc_rifle_aks74u","hlc_rifle_ak74"],                                             // Rifles
    ["rhs_assault_umbts", "rhs_weap_rpg7", "rhs_rpg7_PG7VL_mag"]                                                              // Backpack, Launcher, Missile
  ]
];

aiLoadoutsCrewman = [
  [
    ["rhs_uniform_cu_ucp_patchless"],                                                     // Uniforms
    ["hlc_smg_mp5k_PDW", "hlc_smg_mp5a3", "hlc_smg_9mmar", "hlc_rifle_auga2para"]         // Rifles
  ],
  [
    ["rhs_uniform_emr_patchless"],                                                        // Uniforms
    ["hlc_rifle_saiga12k", "rhs_weap_ak74m_folded", "hlc_rifle_aks74u"]                   // Rifles
  ] 
];