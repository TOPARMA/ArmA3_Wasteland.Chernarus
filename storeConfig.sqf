// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
/*********************************************************#
# @@ScriptName: storeConfig.sqf
# @@Author: His_Shadow, AgentRev
# @@Create Date: 2013-09-16 20:40:58
#*********************************************************/

// This tracks which store owner the client is interacting with
currentOwnerName = "";

// Gunstore Weapon List - Gun Store Base List
// Text name, classname, buy cost

pistolArray = compileFinal str
[
	["MP-443", "rhs_weap_pya", 50],
	["HK MP5k", "hlc_smg_mp5k", 100]
];



smgArray = compileFinal str
[

	["HK MP5k PDW", "hlc_smg_mp5k_PDW", 125],
	["MP5A2 no rail", "hlc_smg_mp5a2", 125],
	["MP5A3 no rail", "hlc_smg_mp5a3", 125],
	["MP5A4 Navy", "hlc_smg_mp5a4", 150],
	["MP5N Navy", "hlc_smg_mp5n", 150],
	["MP5/10 Navy", "hlc_smg_mp510", 150],
	["MP5SD5 Navy", "hlc_smg_mp5sd5", 175],
	["MP5SD6 Navy", "hlc_smg_mp5sd6", 175],
	["Navy SMG (Half-Life)", "hlc_smg_9mmar", 200],
	["Steyr AUGA1 9mm Para", "hlc_rifle_augpara", 225],
	//["Steyr AUGA1 9mm Para(Tan)", "hlc_rifle_augpara_t", 225],
	//["Steyr AUGA1 9mm Para(Black)", "hlc_rifle_augpara_b", 225],
	["Steyr AUGA2 9mm Para", "hlc_rifle_auga2para", 225]
	//["Steyr AUGA2 9mm Para", "hlc_rifle_auga2para_t", 225],
	//["Steyr AUGA2 9mm Para", "hlc_rifle_auga2para_b", 225]
];



rifleArray = compileFinal str
[

//DLC
//	["ASP-1 Kir 12.7 mm (Black)", "srifle_DMR_04_F", 1000],
//	["ASP-1 Kir 12.7 mm (Tan)", "srifle_DMR_04_Tan_F", 1000],
//	["Cyrus 9.3 mm (Black)", "srifle_DMR_05_blk_F", 1000],
//	["Cyrus 9.3 mm (Hex)", "srifle_DMR_05_hex_F", 1000],
//	["Cyrus 9.3 mm (Tan)", "srifle_DMR_05_tan_f", 1000],
//	["MAR-10 .338 (Black)", "srifle_DMR_02_F", 1000],
//	["MAR-10 .338 (Camo)", "srifle_DMR_02_camo_F", 1000],
//	["MAR-10 .338 (Sand)", "srifle_DMR_02_sniper_F", 1000],
//	["Mk-1 EMR 7.62 mm (Black)", "srifle_DMR_03_F", 1000],
//	["Mk-1 EMR 7.62 mm (Camo)", "srifle_DMR_03_multicam_F", 1000],
//	["Mk-1 EMR 7.62 mm (Khaki)", "srifle_DMR_03_khaki_F", 1000],
//	["Mk-1 EMR 7.62 mm (Sand)", "srifle_DMR_03_tan_F", 1000],
//	["Mk-1 EMR 7.62 mm (Woodland)", "srifle_DMR_03_woodland_F", 1000],
//	["Mk14 7.62 mm (Camo)", "srifle_DMR_06_camo_F", 1000],
//	["Mk14 7.62 mm (Olive)", "srifle_DMR_06_olive_F", 1000],

	//SHOTGUN
	["Izhmash Saiga12K", "hlc_rifle_saiga12k", 400],
	// Underwater Gun
	["SDAR Underwater Rifle", "arifle_SDAR_F", 100],
	["M14", "hlc_rifle_M14", 375],
	["M14 DMR(ArmA2 DMR)", "hlc_rifle_M14DMR", 375],
	["Troy M14 SOPMOD", "hlc_rifle_m14sopmod", 450],
	["Mk14 EBR-RI", "rhs_weap_m14ebrri", 450],
	["M16A4 RIS", "rhs_weap_m16a4", 200],
	["M16A4 (Bipod)", "rhs_weap_m16a4_bipod", 225],
	["M16A4 (Grippod)", "rhs_weap_m16a4_grip", 225],
	["M16A4 (Carryhandle)", "rhs_weap_m16a4_carryhandle", 225],
	["M16A4 (Carryhandle/Pmag)", "rhs_weap_m16a4_carryhandle_pmag", 225],
	["M320 GLM", "rhs_weap_M320", 250],
	["M4 RIS", "rhs_weap_m4", 300],
	["M4 (AFG)", "rhs_weap_m4_grip2", 300],
	["M4 (Bipod)", "rhs_weap_m4_bipod", 300],
	["M4 (Grippod)", "rhs_weap_m4_grip", 300],
	["M4 (Carryhandle)", "rhs_weap_m4_carryhandle", 300],
	["M4 (Carryhandle/PMAG)", "rhs_weap_m4_carryhandle_pmag", 300],
	["M4 (M320)", "rhs_m4_m320", 375],
	["M4A1 RIS", "rhs_weap_m4a1", 325],
	["M4A1 (AFG)", "rhs_weap_m4a1_grip2", 325],
	["M4A1 (Bipod)", "rhs_weap_m4a1_bipod", 325],
	["M4A1 (Grippod)", "rhs_weap_m4a1_grip", 325],
	["M4A1 (M320)", "rhs_m4a1_m320", 400],
	["AK-74M", "rhs_weap_ak74m", 325],
	["AK-74M (folded)", "rhs_weap_ak74m_folded", 325],
	//["AK-74M (camo)", "rhs_weap_ak74m_camo", 550],
	//["AK-74M (desert)", "rhs_weap_ak74m_desert", 550],
	["AK-74M (2 mag)", "rhs_weap_ak74m_2mag", 325],
	//["AK-74M (2 mag and camo)", "rhs_weap_ak74m_2mag_camo", 550],
	["AK-74M (GP-25 Kostyor)", "rhs_weap_ak74m_gp25", 400],
	["AK12", "hlc_rifle_ak12", 325],
	["AK12 GL", "hlc_rifle_ak12gl", 450],
	["Izhmash AK47", "hlc_rifle_ak47", 375],
	["Izhmash EAK971", "hlc_rifle_aek971", 500],
	["Izhmash AKS74", "hlc_rifle_aks74", 300],
	["Izhmash AKS74 GL", "hlc_rifle_aks74_GL", 700],
	["Izhmash AKS74U", "hlc_rifle_aks74u", 300],
	["Izhmash AK74", "hlc_rifle_ak74", 300],
	["Izhmash AKS74 GP30", "hlc_rifle_aks74_GL", 400],
	["Izhmash AKM", "hlc_rifle_akm", 375],
	["Izhmash AKM GL GP25", "hlc_rifle_akmgl", 450],
	["Enfield L1A1 SLR", "hlc_rifle_l1a1slr", 375],
	["Lithgow SLR (Aussy L1A1)", "hlc_rifle_SLR", 375],
	["Steyr STG.58", "hlc_rifle_STG58F", 375],
	["FN FAL (Para)", "hlc_rifle_FAL5061", 375],
	["FN C1A1 (CAN SLR)", "hlc_rifle_c1A1", 375],
	["FN LAR (Israel)", "hlc_rifle_LAR", 375],
	["Lithgow SLR Chopmod", "hlc_rifle_SLRchopmod", 375],
	["DSA FAL OSW", "hlc_rifle_falosw", 400],
	["DSA FAL OSW M203GL", "hlc_rifle_osw_GL", 450],
	["H&K G3SG1", "hlc_rifle_g3sg1", 375],
	["H&K G3A3", "hlc_rifle_g3a3", 375],
	["H&K G3KA4", "hlc_rifle_g3ka4", 375],
	["H&K G3KA4 M203", "HLC_Rifle_g3ka4_GL", 375],
	["FR Ordnance MC51 (G3)", "hlc_rifle_hk51", 375],
	["H&K HK53", "hlc_rifle_hk53", 375],
	["AR15 Sanitied Carbine", "hlc_rifle_RU556", 350],
	["AR15 Magpul Carbine", "hlc_rifle_RU5562", 350],
	["Colt Carbine(727 Commando)", "hlc_rifle_Colt727", 350],
	["Colt Carbine M203(727 Commando)", "hlc_rifle_Colt727_GL", 425],
	["Bravo Company MFG/Haley", "hlc_rifle_bcmjack", 350],
	["Bushmaster .300 Carbine", "hlc_rifle_Bushmaster300", 400],
	["AR15 .300 Dissipator", "hlc_rifle_vendimus", 400],
	["Rock River Arms LAR-15 AMR", "hlc_rifle_SAMR", 350],
	["Rock River Arms LAR-15 AMR N", "hlc_rifle_samr2", 350],
	//["AAC Honey-Badger", "hlc_rifle_honeybase", 400],
	["AAC Honey-Badger Carbine", "hlc_rifle_honeybadger", 400],
	["Steyr AUGA1 Rifle", "hlc_rifle_aug", 350],
	//["Steyr AUGA1 Rifle (Tan)", "hlc_rifle_auga1_t", 350],
	//["Steyr AUGA1 Rifle (Black)", "hlc_rifle_auga1_B", 350],
	["Steyr AUGA1 Carbine", "hlc_rifle_auga1carb", 350],
	//["Steyr AUGA1 Carbine (Tan)", "hlc_rifle_auga1carb_t", 350],
	//["Steyr AUGA1 Carbine (Black)", "hlc_rifle_auga1carb_b", 350],
	["Steyr AUGA1 Heavy", "hlc_rifle_aughbar", 350],
	//["Steyr AUGA1 Heavy (Tan)", "hlc_rifle_aughbar_t", 350],
	//["Steyr AUGA1 Heavy (Black)", "hlc_rifle_aughbar_b", 350],
	["Steyr AUGA2 Rifle", "hlc_rifle_auga2", 350],
	//["Steyr AUGA2 Rifle (Tan)", "hlc_rifle_auga2_t", 350],
	//["Steyr AUGA2 Rifle (Black)", "hlc_rifle_auga2_b", 350],
	["Steyr AUGA2 Carbine", "hlc_rifle_auga2carb", 350],
	//["Steyr AUGA2 Carbine (Tan)", "hlc_rifle_auga2carb_t", 350],
	//["Steyr AUGA2 Carbine (Black)", "hlc_rifle_auga2carb_b", 350],
	["Steyr AUGA2 Heavy", "hlc_rifle_auga2lsw", 350],
	//["Steyr AUGA2 Heavy (Tan)", "hlc_rifle_auga2lsw_t", 350],
	//["Steyr AUGA2 Heavy (Black)", "hlc_rifle_auga2lsw_b", 350],
	["Steyr AUGSR Rifle", "hlc_rifle_augsr", 350],
	//["Steyr AUGSR Rifle(Tan)", "hlc_rifle_augsr_t", 350],
	//["Steyr AUGSR Rifle(Black)", "hlc_rifle_augsr_b", 350],
	["Steyr AUGSR Carbine", "hlc_rifle_augsrcarb", 350],
	//["Steyr AUGSR Carbine (Tan)", "hlc_rifle_augsrcarb_t", 350],
	//["Steyr AUGSR Carbine (Black)", "hlc_rifle_augsrcarb_b", 350],
	["Steyr AUGSR Heavy", "hlc_rifle_augsrhbar", 350],
	//["Steyr AUGSR Heavy (Tan)", "hlc_rifle_augsrhbar_t", 350],
	//["Steyr AUGSR Heavy (Black)", "hlc_rifle_augsrhbar_b", 350],
	["Steyr AUGA3 Rifle (Green)", "hlc_rifle_auga3", 350],
	//["Steyr AUGA3 Rifle (Blue)", "hlc_rifle_auga3_bl", 350],
	//["Steyr AUGA3 Rifle (Black)", "hlc_rifle_auga3_b", 350],
	["Steyr AUGA3 with M203A1 (Green)", "hlc_rifle_auga3_GL", 425],
	//["Steyr AUGA3 with M203A1 (Blue)", "hlc_rifle_auga3_GL_BL", 425],
	//["Steyr AUGA3 with M203A1 (Black)", "hlc_rifle_auga3_GL_B", 425],


// Sniper Rifles
	["M21", "hlc_rifle_M21", 900],
	["SVD-M Dragunov", "rhs_weap_svdp", 1000],
	//["SVD-M Dragunov (camo)", "rhs_weap_svdp_wd", 1000],
	["SVD-S Dragunov", "rhs_weap_svds", 1000],
	["M320 LRR Sniper", "srifle_LRR_SOS_F", 1000],
	["M320 LRR Sniper (Camo)", "srifle_LRR_camo_SOS_F", 1150],
	["M2010 ESR", "rhs_weap_XM2010", 1250],
	//["M2010 ESR (camo)", "rhs_weap_XM2010_wd", 1250],
	//["M2010 ESR (desert)", "rhs_weap_XM2010_d", 1250],
	//["M2010 ESR (semi-arid)", "rhs_weap_XM2010_sa", 1250],
	["H&K PSG1", "hlc_rifle_psg1", 1700]
];



lmgArray = compileFinal str
[

//DLC LMG
// 	["SPMG .338 (Black)", "MMG_02_black_F", 500],
// 	["SPMG .338 (MTP)", "MMG_02_camo_F", 500],
// 	["SPMG .338 (Sand)", "MMG_02_sand_F", 500],
// 	["Navid 9.3 mm (Hex)", "MMG_01_hex_F", 550],
//	["Navid 9.3 mm (Tan)", "MMG_01_tan_F", 550],

	["M249 PIP(SAW)", "rhs_weap_m249_pip", 375],
	["PKP (Pecheneg)", "rhs_weap_pkp", 450],
	["Izhmash RPK12", "hlc_rifle_RPK12", 450],
	["Izhmash RPK", "hlc_rifle_rpk", 450],
	["M240B", "rhs_weap_m240B", 450],
	["M60 (no optic)", "hlc_lmg_m60", 450],
	["M60E4", "hlc_lmg_M60E4", 450]
];

launcherArray = compileFinal str
[
	["RPG-7", "rhs_weap_rpg7", 400],
	["RPG-26", "rhs_weap_rpg26", 700],
	["RShG-2", "rhs_weap_rshg2", 700],
	["M136 (HEAT)", "rhs_weap_M136", 700],
	["M136 (HEDP)", "rhs_weap_M136_hedp", 700],
	["M136 (HP)", "rhs_weap_M136_hp", 700],
	["9K38 Igla AA", "rhs_weap_igla", 1500],
	["FIM-92F", "rhs_weap_fim92", 1500],    //20k
	["FGM-148 Javelin", "rhs_weap_fgm148", 3500]  //20k
];



allGunStoreFirearms = compileFinal str (call pistolArray + call smgArray + call rifleArray + call lmgArray + call launcherArray);


staticGunsArray = compileFinal str
[

//DLC	
["Remote Designator Bag (NATO)", "B_Static_Designator_01_weapon_F", 2000, "backpack"],
["Remote Designator Bag (CSAT)", "O_Static_Designator_02_weapon_F", 2000, "backpack"],

	// ["Vehicle Ammo Crate", "Box_NATO_AmmoVeh_F", 2500],
	//["Static Titan AT 4Rnd (NATO)", "B_static_AT_F", 2500], // Static launchers only have 4 ammo, hence the low price
	//["Static Titan AT 4Rnd (CSAT)", "O_static_AT_F", 2500],
	//["Static Titan AT 4Rnd (AAF)", "I_static_AT_F", 2500],
	//["Static Titan AA 4Rnd (NATO)", "B_static_AA_F", 3000],
	//["Static Titan AA 4Rnd (CSAT)", "O_static_AA_F", 3000],
	//["Static Titan AA 4Rnd (AAF)", "I_static_AA_F", 3000],
	["Mk30 HMG .50 Low tripod (NATO)", "B_HMG_01_F", 2000],
	["Mk30 HMG .50 Low tripod (CSAT)", "O_HMG_01_F", 2000],
	["Mk30 HMG .50 Low tripod (AAF)", "I_HMG_01_F", 2000],
	// ["Mk30A HMG .50 Sentry (NATO)", "B_HMG_01_A_F", 5000], // "A" = Autonomous = Overpowered
	// ["Mk30A HMG .50 Sentry (CSAT)", "O_HMG_01_A_F", 5000],
	// ["Mk30A HMG .50 Sentry (AAF)", "I_HMG_01_A_F", 5000],
	["Mk30 HMG .50 High tripod (NATO)", "B_HMG_01_high_F", 3000],
	["Mk30 HMG .50 High tripod (CSAT)", "O_HMG_01_high_F", 3000],
	["Mk30 HMG .50 High tripod (AAF)", "I_HMG_01_high_F", 3000],
	["Mk32 GMG 20mm Low tripod (NATO)", "B_GMG_01_F", 5000],
	["Mk32 GMG 20mm Low tripod (CSAT)", "O_GMG_01_F", 5000],
	["Mk32 GMG 20mm Low tripod (AAF)", "I_GMG_01_F", 5000],
	// ["Mk32A GMG 20mm Sentry (NATO)", "B_GMG_01_A_F", 10000],
	// ["Mk32A GMG 20mm Sentry (CSAT)", "O_GMG_01_A_F", 10000],
	// ["Mk32A GMG 20mm Sentry (AAF)", "I_GMG_01_A_F", 10000],
	["Mk32 GMG 20mm High tripod (NATO)", "B_GMG_01_high_F", 6000],
	["Mk32 GMG 20mm High tripod (CSAT)", "O_GMG_01_high_F", 6000],
	["Mk32 GMG 20mm High tripod (AAF)", "I_GMG_01_high_F", 6000],
	["Mk6 Mortar (NATO)", "B_Mortar_01_F", 12500],
	["Mk6 Mortar (CSAT)", "O_Mortar_01_F", 12500],
	["Mk6 Mortar (AAF)", "I_Mortar_01_F", 12500]
];

throwputArray = compileFinal str
[

	//["RGD-5", "rhs_mag_rgd5", 100],
	["RGD-2 (white smoke)", "rhs_mag_rdg2_white", 50],
	["RGD-2 (black smoke)", "rhs_mag_rdg2_black", 50],
	//["NSP-N (yellow flare)", "rhs_mag_nspn_yellow", 50],
	["NSP-N (red flare)", "rhs_mag_nspn_red", 50],
	//["NSP-N (green flare)", "rhs_mag_nspn_green", 50],
	["NSP-D (red flare)", "rhs_mag_nspd", 50],
	//["Fakel", "rhs_mag_fakel", 100],
	//["Fakel-S", "rhs_mag_fakels", 100],
	//["Zarya-2", "rhs_mag_zarya2", 100],
	//["Plamya-M", "rhs_mag_plamyam", 100],
	//["PMN-2 AP", "rhs_mine_pmn2", 300],
	//["TM-62M AT", "rhs_mine_tm62m", 350],
	["M67 Frag Grenade", "rhs_mag_m67", 100],
	//["M84 Stun Grenade", "rhs_ammo_m84", 100],
	["M19 AT", "rhs_mine_M19_ammo", 300],
	//["Mini Grenade", "MiniGrenade", 50],
	//["Frag Grenade", "HandGrenade", 100],
	["APERS Tripwire Mine", "APERSTripMine_Wire_Mag", 200],
	["APERS Bounding Mine", "APERSBoundingMine_Range_Mag", 250],
	["APERS Mine", "APERSMine_Range_Mag", 300],
	//["Claymore Charge", "ClaymoreDirectionalMine_Remote_Mag", 350],
	["M6 SLAM Mine", "SLAMDirectionalMine_Wire_Mag", 350],
	//["AT Mine", "ATMine_Range_Mag", 400],
	//["Explosive Charge", "DemoCharge_Remote_Mag", 450],
	["Explosive Satchel", "SatchelCharge_Remote_Mag", 500]
];

//Gun Store Ammo List
//Text name, classname, buy cost
ammoArray = compileFinal str
[

//DLC Ammo
//	["12.7mm 10Rnd Mag", "10Rnd_127x54_Mag", 50],
//	["9.3mm 10Rnd Mag", "10Rnd_93x64_DMR_05_Mag", 50],
//	["9.3mm 150Rnd Belt", "150Rnd_93x64_Mag", 150], //DLC Ammo
//	[".338 LM 10Rnd Mag", "10Rnd_338_Mag", 50],
//	[".338 NM 130Rnd Belt", "130Rnd_338_Mag", 150], //DLC Ammo
	
//	["7.62x54mm Ball 150Rnd", "150Rnd_762x54_Box", 150],
//	["7.62x54mm Tracer 150Rnd", "150Rnd_762x54_Box_Tracer", 150],

	["9x19mm Parabellum", "rhs_mag_9x19_17", 10],
	["5N7 AK-74 30Rnd", "rhs_30Rnd_545x39_AK", 30],
	["7T3M AK-74 30Rnd", "rhs_30Rnd_545x39_AK_green", 30],
	["7N10 AK-74 30Rnd", "rhs_30Rnd_545x39_7n10_AK", 30],
	["7N22 AK-74 30Rnd", "rhs_30Rnd_545x39_7n22_AK", 30],
	["5N7 RPK-74 45Rnd", "rhs_45Rnd_545X39_AK", 45],
	["7T3M RPK-74 45Rnd", "rhs_45Rnd_545X39_AK_Green", 40],
	["7N10 RPK-74 45Rnd", "rhs_45Rnd_545X39_7N10_AK", 45],
	["7N22 RPK-74 45Rnd", "rhs_45Rnd_545X39_7N22_AK", 45],
	["762x54mmR 100Rnd", "rhs_100Rnd_762x54mmR", 150],
	["7N1 10Rnd", "rhs_10Rnd_762x54mmR_7N1", 50],
	["M14 20Rnd", "20Rnd_762x51_Mag", 25],
	["Mk262 30Rnd", "rhs_mag_30Rnd_556x45_Mk262_Stanag", 30],
	["Mk318 30Rnd", "rhs_mag_30Rnd_556x45_Mk318_Stanag", 30],
	["M885A1 30Rnd", "rhs_mag_30Rnd_556x45_M855A1_Stanag", 30],
	["M885A1 (red) 30Rnd", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 25],
	["M885A1 (green) 30Rnd", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Green", 25],
	["M885A1 (yellow) 30Rnd", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Yellow", 25],
	[".300 Win Mag 5Rnd", "rhsusf_5Rnd_300winmag_xm2010", 50],
	["M240 100Rnd", "rhsusf_100Rnd_762x51", 100],
	["M249 100Rnd", "rhsusf_100Rnd_556x45_soft_pouch", 100],
	["M249 200Rnd", "rhsusf_200Rnd_556x45_soft_pouch", 200], 
	["7.62x51mm Ball 100Rnd", "hlc_100Rnd_762x51_B_M60E4", 150],
	["7.62x51mm Tracer 100Rnd", "hlc_100Rnd_762x51_T_M60E4", 150],
	["7.62x51mm Mixed 100Rnd", "hlc_100Rnd_762x51_M_M60E4	", 150],
	["5.45x39mm Ball 30Rnd", "hlc_30Rnd_545x39_B_AK", 30],
	["5.45x39mm Tracer 30Rnd", "hlc_30Rnd_545x39_T_AK", 30],
	["5.45x39mm EPR 30Rnd", "hlc_30Rnd_545x39_EP_AK", 30],
	["5.45x39mm S 30Rnd", "hlc_30Rnd_545x39_S_AK", 30],
	["5.45x39mm Mixed 45Rnd", "hlc_45Rnd_545x39_t_rpk", 45],
	["7.62x39mm Ball 30Rnd", "hlc_30Rnd_762x39_b_ak", 30],
	["7.62x39mm Tracer 30Rnd", "hlc_30Rnd_762x39_t_ak", 45],
	["7.62x39mm Tracer 45Rnd", "hlc_45Rnd_762x39_t_rpk", 60],
	["7.62x39mm Mixed 45Rnd", "hlc_45Rnd_762x39_m_rpk", 60],
	["7.62x39mm Tracer 45Rnd", "HLC_45Rnd_762x39_T_RPK", 60],
	["7.62x39mm Mixed 75Rnd", "hlc_75Rnd_762x39_m_rpk", 85],
	["7.62x51mm Ball 20Rnd", "hlc_20Rnd_762x51_B_fal", 30],
	["7.62x51mm Tracer 20Rnd", "hlc_20Rnd_762x51_t_fal", 25],
	["7.62x51mm Subsonic 20Rnd", "hlc_20Rnd_762x51_S_fal", 30],
	["7.62x51mm Mixed 50Rnd", "hlc_50rnd_762x51_M_FAL", 75],
	["7.62x51mm Ball 20Rnd", "hlc_20Rnd_762x51_B_G3", 30],
	["7.62x51mm Tracer 20Rnd", "hlc_20rnd_762x51_T_G3", 25],
	["7.62x51mm Mixed 50Rnd", "hlc_50rnd_762x51_M_G3", 100],
	["5.56x45mm Ball", "hlc_30rnd_556x45_b_HK33", 30],
	["5.56x45mm Tracer", "hlc_30rnd_556x45_t_HK33", 25],
	["5.565mm EPR", "hlc_30rnd_556x45_epr_HK33", 30],
	["5.56x45mm SOST", "hlc_30rnd_556x45_sost_HK33", 30],
	["7.62x51mm Ball", "hlc_20Rnd_762x51_B_M14", 30],
	["7.62x51mm Tracer", "hlc_20rnd_762x51_T_M14", 25],
	["7.62x51mm Mixed", "hlc_50rnd_762x51_M_M14", 75],
	[".300 Blackout 29rnd", "29rnd_300BLK_STANAG", 60],
	[".300 Blackout Tracer 29rnd", "29rnd_300BLK_STANAG_T", 60],
	[".300 Blackout FMJ 29rnd", "29rnd_300BLK_STANAG_S", 60],
	[".408 7Rnd Cheetah Mag", "7Rnd_408_Mag", 50],
	["5.56x45mm NATO EPR 30rnd", "hlc_30rnd_556x45_EPR", 30],
	["5.56x45mm NATO Mk318(SOST)30rnd", "hlc_30rnd_556x45_SOST", 30],
	["5.56x45mm NATO Mk262 30rnd", "hlc_30rnd_556x45_SPR", 30],
	["9x19mm M882 NATO Ball 30rnd", "hlc_30Rnd_9x19_B_MP5", 30],
	["9x19mm LE Hollowpoints 30rnd", "hlc_30Rnd_9x19_GD_MP5", 30],
	["9x19mm M882 subsonic 30rnd", "hlc_30Rnd_9x19_SD_MP5", 30],
	["10mm Auto FMJ 30rnd", "hlc_30Rnd_10mm_B_MP5", 40],
	["10mm Auto LE HP 30rnd", "hlc_30Rnd_10mm_JHP_MP5", 40],
	["5.56x45mm EPR 30rnd", "hlc_30Rnd_556x45_B_AUG", 30],
	["5.56x45mm Mk318 SOST 30rnd", "hlc_30Rnd_556x45_SOST_AUG", 30],
	["5.56x45mm Mk262 SPR 30rnd", "hlc_30Rnd_556x45_SPR_AUG", 30],
	["5.56x45mm Tracer 30rnd", "hlc_30Rnd_556x45_T_AUG", 30],
	["5.56x45mm EPR 40Rnd", "hlc_40Rnd_556x45_B_AUG", 40],
	["5.56x45mm Mk318 SOST 40Rnd", "hlc_40Rnd_556x45_SOST_AUG", 40],
	["5.56x45mm Mk262 SPR 40Rnd", "hlc_40Rnd_556x45_SPR_AUG", 40],
	["9x19mm M882 Ball 25Rnd", "hlc_25Rnd_9x19mm_M882_AUG", 30],
	["9x19mm LE HP 25Rnd", "hlc_25Rnd_9x19mm_JHP_AUG", 30],
	["9x19mm Subsonic 25Rnd", "hlc_25Rnd_9x19mm_subsonic_AUG", 30],
	["12g Buckshot 10rnd", "hlc_10rnd_12g_buck_S12", 50],
	["12g Slug 10rnd", "hlc_10rnd_12g_slug_S12", 50],
	["HE GP25 GP30", "hlc_VOG25_AK", 100],
	["Smoke GP25 GP30", "hlc_GRD_White", 75],
	["9M39 lgla", "rhs_mag_9k38_rocket", 650],
	["RPG-26 rocket", "rhs_rpg26_mag", 550],
	["PG-7VL RPG-7V2", "rhs_rpg7_PG7VL_mag", 550],
	["PG-7VR RPG-7V2", "rhs_rpg7_PG7VR_mag", 550],
	["OG-7V RPG-7V2", "rhs_rpg7_OG7V_mag", 550],  
	["TBG-7V RPG-7V2", "rhs_rpg7_TBG7V_mag", 550], 
	["RShG-2", "rhs_rshg2_mag", 550],
	["HEAT missile", "rhs_fgm148_magazine_AT", 850],  //5k
	["Stinger missile", "rhs_fim92_mag", 650],   
	["84mm HEAT", "rhs_m136_mag", 250],
	["84mm HEDP", "rhs_m136_hedp_mag", 300],
	["84mm HP", "rhs_m136_hp_mag", 250],
	["VOG-25", "rhs_VOG25", 100],
	["VOG-25P (Bouncing)", "rhs_VOG25p", 100],
	["VOG-25TB (Thermobaric)", "rhs_vg40tb", 100],
	["VOG-40SZ (Flashbang)", "rhs_g_vg40sz", 75],
	["VOG-40 (White Flare)", "rhs_vg40op_white", 50],
	//["VOG-40 (Green Flare)", "rhs_vg40op_green", 50],
	["VOG-40 (Red Flare)", "rhs_vg40op_red", 50],
	["GRD-40 (White Smoke)", "rhs_GRD40_white", 50],
	//["GRD-40 (Green Smoke)", "rhs_GRD40_green", 50],
	["GRD-40 (Red Smoke)", "rhs_GRD40_red", 50],
	["M433", "rhs_mag_M433_HEDP", 100],
	["Stun grenade", "rhs_mag_M4009", 75],
	["M576 Buckshot", "rhs_mag_m576", 50],
	["M585 (White flare)", "rhs_mag_M585_white", 50],
	["M661 (Green flare)", "rhs_mag_M661_green", 50],
	["M662 (Red flare)", "rhs_mag_M662_red", 50],
	["M713 (Red Smoke)", "rhs_mag_M713_red", 50],
	["M714 (White Smoke)", "rhs_mag_M714_white", 50],
	["M715 (Green Smoke)", "rhs_mag_M715_green", 50],
	["M716 (Yellow Smoke)", "rhs_mag_M716_yellow", 50],
	["5.56mm 20Rnd Underwater Mag", "20Rnd_556x45_UW_mag", 10],
	["40mm HE Grenade Round", "1Rnd_HE_Grenade_shell", 125],
	["40mm 3Rnd HE Grenades", "3Rnd_HE_Grenade_shell", 250],
	["40mm Smoke Round (White)", "1Rnd_Smoke_Grenade_shell", 50],
	["40mm Smoke Round (Purple)", "1Rnd_SmokePurple_Grenade_shell", 50],
	["40mm Smoke Round (Blue)", "1Rnd_SmokeBlue_Grenade_shell", 50],
	["40mm Smoke Round (Green)", "1Rnd_SmokeGreen_Grenade_shell", 50],
	["40mm Smoke Round (Yellow)", "1Rnd_SmokeYellow_Grenade_shell", 50],
	["40mm Smoke Round (Orange)", "1Rnd_SmokeOrange_Grenade_shell", 50],
	["40mm Smoke Round (Red)", "1Rnd_SmokeRed_Grenade_shell", 50],
	["40mm 3Rnd Smokes (White)", "3Rnd_Smoke_Grenade_shell", 100],
	["40mm 3Rnd Smokes (Purple)", "3Rnd_SmokePurple_Grenade_shell", 100],
	["40mm 3Rnd Smokes (Blue)", "3Rnd_SmokeBlue_Grenade_shell", 100],
	["40mm 3Rnd Smokes (Green)", "3Rnd_SmokeGreen_Grenade_shell", 100],
	["40mm 3Rnd Smokes (Yellow)", "3Rnd_SmokeYellow_Grenade_shell", 100],
	["40mm 3Rnd Smokes (Orange)", "3Rnd_SmokeOrange_Grenade_shell", 100],
	["40mm 3Rnd Smokes (Red)", "3Rnd_SmokeRed_Grenade_shell", 100],
	["40mm Flare Round (White)", "UGL_FlareWhite_F", 25],
	["40mm Flare Round (Green)", "UGL_FlareGreen_F", 25],
	["40mm Flare Round (Yellow)", "UGL_FlareYellow_F", 25],
	["40mm Flare Round (Red)", "UGL_FlareRed_F", 25],
	["40mm Flare Round (IR)", "UGL_FlareCIR_F", 25],
	["40mm 3Rnd Flares (White)", "3Rnd_UGL_FlareWhite_F", 50],
	["40mm 3Rnd Flares (Green)", "3Rnd_UGL_FlareGreen_F", 50],
	["40mm 3Rnd Flares (Yellow)", "3Rnd_UGL_FlareYellow_F", 50],
	["40mm 3Rnd Flares (Red)", "3Rnd_UGL_FlareRed_F", 50],
	["40mm 3Rnd Flares (IR)", "3Rnd_UGL_FlareCIR_F", 50]
];

//Gun Store item List
//Text name, classname, buy cost, item class
accessoriesArray = compileFinal str
[

// DLC Items

//	["Sound Suppressor (9.3 mm Black)", "muzzle_snds_93mmg", 125, "item"],
//	["Sound Suppressor (9.3 mm Tan)", "muzzle_snds_93mmg_tan", 125, "item"],
//	["Sound Suppressor (.338 Black)", " muzzle_snds_338_black", 125, "item"],
//	["Sound Suppressor (.338 Green)", " muzzle_snds_338_green", 125, "item"],
//	["Sound Suppressor (.338 Sand)", " muzzle_snds_338_sand", 125, "item"],

//	["AMS (Black)", "optic_AMS", 200, "item"],
//	["AMS (Khaki)", "optic_AMS_khk", 200, "item"],
//	["AMS (Sand)", "optic_AMS_snd", 200, "item"],

//	["Kahlia (Black)", "optic_KHS_blk", 200, "item"],
//	["Kahlia (Hex)", "optic_KHS_hex", 200, "item"],
//	["Kahlia (Old)", "optic_KHS_old", 200, "item"],
//	["Kahlia (Tan)", "optic_KHS_tan", 200, "item"],

//	["Bipod (Black) (NATO)", "bipod_01_F_blk", 500, "item"],
//	["Bipod (Black) (CSAT)", "bipod_02_F_blk", 500, "item"],
//	["Bipod (Black) (AAF)", "bipod_03_F_blk", 500, "item"],
//	["Bipod (MTP) (NATO)", "bipod_01_F_mtp", 500, "item"],
//	["Bipod (Hex) (CSAT)", "bipod_02_F_hex", 500, "item"],
//	["Bipod (Olive) (AAF)", "bipod_03_F_oli", 500, "item"],
//	["Bipod (Sand) (NATO)", "bipod_01_F_snd", 500, "item"],
//	["Bipod (Tan) (CSAT)", "bipod_02_F_tan", 500, "item"],

	["TGPA (Suppressor)", "rhs_acc_tgpa", 150, "item"],
	["Suppressor M2010S", "rhsusf_acc_M2010S", 150, "item"],
	["PBS4 Suppressor(5.45x39)", "hlc_muzzle_545SUP_AK", 150, "item"],
	["PBS1 Suppressor(7.62x39)", "hlc_muzzle_762SUP_AK", 150, "item"],
	["FAL Suppressor", "hlc_muzzle_snds_fal", 150, "item"],
	["HK53/33 Suppressor)", "hlc_muzzle_snds_HK33", 150, "item"],
	["G3 Suppressor(PSG excluded)", "hlc_muzzle_snds_G3", 150, "item"],
	["M14 Suppressor", "hlc_muzzle_snds_M14", 150, "item"],
	["HLC 556 Suppressor", "hlc_muzzle_556NATO_KAC", 150, "item"],
	[".300 Blackout AR15 Suppressor", "hlc_muzzle_300blk_KAC", 150, "item"],
	["9x19mm Mp5s EXCEPT MP5k/MP5k-pdw", "hlc_muzzle_Agendasix", 150, "item"],
	["all 9x19mm Mp5s", "hlc_muzzle_Tundra", 150, "item"],
	["MP5/10", "hlc_muzzle_Agendasix10mm", 150, "item"],
	["AAC M4-2000 Steyr", "hlc_muzzle_snds_AUG", 150, "item"],
	["AWC Agenda Six Steyr 9mm", "hlc_muzzle_snds_a6AUG", 150, "item"],
	["Honey Badger suppressor", "muzzle_HBADGER", 150, "item"],
	["1P29", "rhs_acc_1p29", 150, "item"],
	["1P63", "rhs_acc_1p63", 150, "item"],
	["1PN93-1 (Night vision)", "rhs_acc_1pn93_1", 200, "item"],
	["1PN93-2 (Night vision - RPG)", "rhs_acc_1pn93_2", 200, "item"],
	["EKP-1 Kobra", "rhs_acc_ekp1", 75, "item"],
	["PGO-7V (RPG optic)", "rhs_acc_pgo7v", 150, "item"],
	["PK-AS (Reflex)", "rhs_acc_pkas", 75, "item"],
	["PSO-1M2 (4x24 tele)", "rhs_acc_pso1m2", 250, "item"],
	["AN PEQ-15", "rhsusf_acc_anpeq15", 25, "item"],
	["AN PEQ-15A", "rhsusf_acc_anpeq15A", 25, "item"],
	["AN PEQ-15 M952V(Light)", "rhsusf_acc_anpeq15_light", 25, "item"],
	["EOtech XPS3", "rhsusf_acc_EOTECH", 75, "item"],
	["Leupold Mk4 (3.5-10x40mm)", "rhsusf_acc_LEUPOLDMK4", 250, "item"],
	["Leupold Mk4 (6.5-20x50mm)", "rhsusf_acc_LEUPOLDMK4_2", 250, "item"],
	["M145 MGO Elcan", "rhsusf_acc_ELCAN", 150, "item"],
	["M150 RCO ACOG", "rhsusf_acc_ACOG", 150, "item"],
	["M150 RCO ACOG (ARD)	", "rhsusf_acc_ACOG2", 150, "item"],
	["M150 RCO ACOG (ARD/Lens Cover)", "rhsusf_acc_ACOG3", 150, "item"],
	["M68 CCO Aimpoint M4", "rhsusf_acc_compm4", 75, "item"],
	["PSO1 Sniper Optic", "HLC_Optic_PSO1", 200, "item"],
	["1P29 Rifle Combat Optic", "HLC_Optic_1p29", 150, "item"],
	["Kobra Collimator Sight", "hlc_optic_kobra", 75, "item"],
	["AN/PVS4 Night Optic(FALs)", "hlc_optic_PVS4FAL", 200, "item"],
	["SUIT Optic (Trilux FALs)", "hlc_optic_suit", 150, "item"],
	["Zeiss Diavari 6x Optic", "HLC_Optic_ZFSG1", 175, "item"],
	["Accupoint TR20(G3)optic", "hlc_optic_accupoint_g3", 150, "item"],
	["Redfield AR-TEL Optic(3-9x)", "hlc_optic_artel_m14", 200, "item"],
	["Leupold LR/T (LRPS)", "hlc_optic_LRT_m14", 200, "item"],
	["Suppressor 9mm", "muzzle_snds_L", 150, "item"],
	["Suppressor .45 ACP", "muzzle_snds_acp", 150, "item"],
	["Suppressor 5.56mm", "muzzle_snds_M", 150, "item"],
	["Suppressor 6.5mm", "muzzle_snds_H", 150, "item"],
	["Suppressor 6.5mm LMG", "muzzle_snds_H_MG", 150, "item"],
	["Suppressor 7.62mm", "muzzle_snds_B", 150, "item"],
	["Flashlight", "acc_flashlight", 25, "item"],
	["IR Laser Pointer", "acc_pointer_IR", 25, "item"],
	["Yorris Sight (Zubr Revolver)", "optic_Yorris", 50, "item"],
	["MRD Sight (4-Five Pistol)", "optic_MRD", 50, "item"],
	["ACO (CQB)", "optic_aco_smg", 50, "item"],
	["Holosight (CQB)", "optic_Holosight_smg", 50, "item"],
	["ACO (Red)", "optic_Aco", 50, "item"],
	["ACO (Green)", "optic_Aco_grn", 50, "item"],
	["Holosight", "optic_Holosight", 50, "item"],
	["MRCO", "optic_MRCO", 50, "item"],
	["ARCO", "optic_Arco", 50, "item"],
	["RCO", "optic_Hamr", 500, "item"],
	["DMS", "optic_DMS", 500, "item"],
	["LRPS", "optic_LRPS", 500, "item"],
	["SOS", "optic_SOS", 500, "item"],
	["NVS", "optic_NVS", 1000, "item"]
	//["TWS", "optic_tws", 50, "item"],
	//["TWS MG", "optic_tws_mg", 50, "item"],
	//["Nightstalker", "optic_Nightstalker", 50, "item"]
];

// If commented, means the color/camo isn't implemented or is a duplicate of another hat
headArray = compileFinal str
[
	["6B27M Plain", "rhs_6b27m_green", 50, "hat"],
	["6B27M", "rhs_6b27m_green_ess", 50, "hat"],
	["6B27M", "rhs_6b27m_green_bala", 50, "hat"],
	["6B27M", "rhs_6b27m_green_ess_bala", 50, "hat"],
	["6B27M Flora", "rhs_6b27m", 50, "hat"],
	["6B27M", "rhs_6b27m_ess", 50, "hat"],
	["6B27M", "rhs_6b27m_bala", 50, "hat"],
	["6B27M", "rhs_6b27m_ess_bala", 50, "hat"],
	["6B27M EMR-Summer", "rhs_6b27m_digi", 50, "hat"],
	["6B27M", "rhs_6b27m_digi_bala", 50, "hat"],
	["6B27M Mountain", "rhs_6b27m_ml", 50, "hat"],
	["6B28", "rhs_6b28_green", 50, "hat"],
	["6B28", "rhs_6b28_green_ess", 50, "hat"],
	["6B28", "rhs_6b28_green_bala", 50, "hat"],
	["6B28", "rhs_6b28_green_ess_bala", 50, "hat"],
	["6B28 EMR-Summer", "rhs_6b28", 50, "hat"],
	["6B28", "rhs_6b28_ess", 50, "hat"],
	["6B28", "rhs_6b28_bala", 50, "hat"],
	["6B28", "rhs_6b28_ess_bala", 50, "hat"],
	["6B28 Flora", "rhs_6b28_flora", 50, "hat"],
	["6B28", "rhs_6b28_flora_ess", 50, "hat"],
	["6B28", "rhs_6b28_flora_bala", 50, "hat"],
	["6B28", "rhs_6b28_ess_bala", 50, "hat"],
	["Boonie Flora", "rhs_Booniehat_flora", 50, "hat"],
	["Boonie EMR-Summer", "rhs_Booniehat_digi", 50, "hat"],
	["Field Cap", "rhs_fieldcap", 50, "hat"],
	["Field Cap Helmet", "rhs_fieldcap_helm", 50, "hat"],
	["Field Cap Helmet", "rhs_fieldcap_helm_digi", 50, "hat"],
	["Tank Helmet TSh-4", "rhs_tsh4", 50, "hat"],
	["Tank Helmet TSh-4", "rhs_tsh4_ess", 50, "hat"],
	["Tank Helmet TSh-4", "rhs_tsh4_bala", 50, "hat"],
	["Tank Helmet TSh-4", "rhs_tsh4_ess_bala", 50, "hat"],
	["Pilot Helmet ZSh-7A", "rhs_zsh7a_mike", 50, "hat"],
	["Pilot Helmet ZSh-7A", "rhs_zsh7a", 50, "hat"],
	["AFRF Balaclava", "rhs_balaclava", 50, "hat"],
	["AFRF Scarf", "rhs_scarf", 50, "hat"],
	["ACH", "rhsusf_ach_bare", 50, "hat"],
	["ACH ESS", "rhsusf_ach_bare_ess", 50, "hat"],
	["ACH Headset", "rhsusf_ach_bare_headset", 50, "hat"],
	["ACH Headset ESS", "rhsusf_ach_bare_headset_ess", 50, "hat"],
	["M81", "rhsusf_ach_helmet_m81", 50, "hat"],
	["Ops-Core 1", "rhsusf_opscore_01", 50, "hat"],
	["Ops-Core 2", "rhsusf_opscore_02", 50, "hat"],
	["Booniehat UCP", "rhs_Booniehat_ucp", 50, "hat"],
	["Booniehat OCP", "rhs_Booniehat_ocp", 50, "hat"],
	["Patrol Cap UCP", "rhsusf_patrolcap_ucp", 50, "hat"],
	["Patrol Cap OCP", "rhsusf_patrolcap_ocp", 50, "hat"],
	["Tank Helmet CVC", "rhsusf_cvc_green_helmet", 50, "hat"],
	["Tank Helmet CVC ESS", "rhsusf_cvc_green_ess", 50, "hat"],
	["Pilot HGU-56P", "H_PilotHelmetHeli_B", 50, "hat"],
	["Crew HGU-56P", "H_CrewHelmetHeli_B", 50, "hat"]
];

uniformArray = compileFinal str
[

//DLC Uniforms
	["Full Ghillie (Arid) (NATO)", "U_B_FullGhillie_ard", 500, "uni"],
	["Full Ghillie (Arid) (CSAT)", "U_O_FullGhillie_ard", 500, "uni"],
	["Full Ghillie (Arid) (AAF)", "U_I_FullGhillie_ard", 500, "uni"],
	["Full Ghillie (Lush) (NATO)", "U_B_FullGhillie_lsh", 500, "uni"],
	["Full Ghillie (Lush) (CSAT)", "U_O_FullGhillie_lsh", 500, "uni"],
	["Full Ghillie (Lush) (AAF)", "U_I_FullGhillie_lsh", 500, "uni"],
	["Full Ghillie (Semi-Arid) (NATO)", "U_B_FullGhillie_sard", 500, "uni"],
	["Full Ghillie (Semi-Arid) (CSAT)", "U_O_FullGhillie_sard", 500, "uni"],
	["Full Ghillie (Semi-Arid) (AAF)", "U_I_FullGhillie_sard", 500, "uni"],
	
	["Guerilla Smocks 1", "U_OG_Guerilla1_1", 25, "uni"], // OPFOR
	["Guerilla Smocks 2", "U_OG_Guerilla2_1", 25, "uni"],
	["Guerilla Smocks 3", "U_OG_Guerilla2_2", 25, "uni"],
	["Guerilla Smocks 4", "U_OG_Guerilla2_3", 25, "uni"],
	["Guerilla Smocks 5", "U_OG_Guerilla3_1", 25, "uni"],
	["Guerilla Smocks 6", "U_OG_Guerilla3_2", 25, "uni"],
	["Guerilla Smocks 7", "U_OG_leader", 25, "uni"],
	["Guerilla Smocks 1", "U_BG_Guerilla1_1", 25, "uni"], // BLUFOR
	["Guerilla Smocks 2", "U_BG_Guerilla2_1", 25, "uni"],
	["Guerilla Smocks 3", "U_BG_Guerilla2_2", 25, "uni"],
	["Guerilla Smocks 4", "U_BG_Guerilla2_3", 25, "uni"],
	["Guerilla Smocks 5", "U_BG_Guerilla3_1", 25, "uni"],
	["Guerilla Smocks 6", "U_BG_Guerilla3_2", 25, "uni"],
	["Guerilla Smocks 7", "U_BG_leader", 25, "uni"],
	["Guerilla Smocks 1", "U_IG_Guerilla1_1", 25, "uni"], // Independent
	["Guerilla Smocks 2", "U_IG_Guerilla2_1", 25, "uni"],
	["Guerilla Smocks 3", "U_IG_Guerilla2_2", 25, "uni"],
	["Guerilla Smocks 4", "U_IG_Guerilla2_3", 25, "uni"],
	["Guerilla Smocks 5", "U_IG_Guerilla3_1", 25, "uni"],
	["Guerilla Smocks 6", "U_IG_Guerilla3_2", 25, "uni"],
	["Guerilla Smocks 7", "U_IG_leader", 25, "uni"],
	["Default Uniform (AAF)", "U_I_CombatUniform", 50, "uni"],
	["Combat Fatigues Short (Digi)", "U_I_CombatUniform_shortsleeve", 50, "uni"],
	["Combat Fatigues Shirt (Digi)", "U_I_CombatUniform_tshirt", 50, "uni"],
	["Officer Fatigues (Digi)", "U_I_OfficerUniform", 50, "uni"],
	["Pilot Coveralls (AAF)", "U_I_pilotCoveralls", 50, "uni"],
	["Heli Pilot Coveralls (AAF)", "U_I_HeliPilotCoveralls", 50, "uni"],
	["Wetsuit (AAF)", "U_I_Wetsuit", 200, "uni"],
	["AFRF Flora", "rhs_uniform_flora", 300, "uni"],
	["AFRF Flora", "rhs_uniform_vdv_flora", 300, "uni"],
	["AFRF Flora", "rhs_uniform_flora_patchless", 300, "uni"],
	["AFRF Mountain", "rhs_uniform_vdv_mflora", 300, "uni"],
	["AFRF Mountain", "rhs_uniform_mflora_patchless", 300, "uni"],
	["AFRF EMR-Summer", "rhs_uniform_msv_emr", 300, "uni"],
	["AFRF EMR-Summer", "rhs_uniform_vdv_emr", 300, "uni"],
	["AFRF EMR-Summer", "rhs_uniform_emr_patchless", 300, "uni"],
	["AFRF Pilot", "rhs_uniform_df15", 300, "uni"],
	["USAF UCP", "rhs_uniform_cu_ucp", 300, "uni"],
	["USAF UCP patchless", "rhs_uniform_cu_ocp_patchless", 300, "uni"],
	["USAF OCP", "rhs_uniform_cu_ucp", 300, "uni"],
	["USAF OCP patchless", "rhs_uniform_cu_ucp_patchless", 300, "uni"],
	["Ghillie Suit (AAF)", "U_I_GhillieSuit", 300, "uni"]
];

vestArray = compileFinal str
[

//DLC
//["Carrier GL Rig (Black)", "V_PlateCarrierGL_blk", -1, "vest"], // DLC Vest
//["Carrier GL Rig (MTP)", "V_PlateCarrierGL_mtp", -1, "vest"], // DLC Vest
//["GA Carrier GL Rig (Olive)", "V_PlateCarrierIAGL_oli", -1, "vest"], // DLC Vest
//["Carrier Special Rig (Black)", "V_PlateCarrierSpec_blk", -1, "vest"], // DLC Vest
//["Carrier Special Rig (MTP)", "V_PlateCarrierSpec_mtp", -1, "vest"], // DLC Vest

	["EMR 6B23", "rhs_6b23_digi", 200, "vest"],
	["EMR Crew", "rhs_6b23_digi_crew", 200, "vest"],
	["EMR Crew officer", "rhs_6b23_digi_crewofficer", 200, "vest"],
	["EMR Engineer", "rhs_6b23_digi_engineer", 200, "vest"],
	["EMR Medic", "rhs_6b23_digi_medic", 200, "vest"],
	["EMR Rifleman", "rhs_6b23_digi_rifleman", 200, "vest"],
	["EMR Sniper", "rhs_6b23_digi_sniper", 200, "vest"],
	["EMR 6Sh-92", "rhs_6b23_digi_6sh92", 200, "vest"],
	["EMR 6Sh-92 Radio", "rhs_6b23_digi_6sh92_radio", 200, "vest"],
	["EMR 6Sh-92 Vog", "rhs_6b23_digi_6sh92_vog", 200, "vest"],
	["EMR 6Sh-92 Vog headset", "rhs_6b23_digi_6sh92_vog_headset", 200, "vest"],
	["EMR 6Sh-92 headset", "rhs_6b23_digi_6sh92_headset", 200, "vest"],
	["EMR 6Sh-92 headset map", "rhs_6b23_digi_6sh92_headset_mapcase", 200, "vest"],
	["Flora 6B23", "rhs_6b23", 200, "vest"],
	["Flora Crew", "rhs_6b23_crew", 200, "vest"],
	["Flora Crew officer", "rhs_6b23_crewofficer", 200, "vest"],
	["Flora Engineer", "rhs_6b23_engineer", 200, "vest"],
	["Flora Medic", "rhs_6b23_medic", 200, "vest"],
	["Flora Rifleman", "rhs_6b23_rifleman", 200, "vest"],
	["Flora Sniper", "rhs_6b23_sniper", 200, "vest"],
	["Flora 6Sh-92", "rhs_6b23_6sh92", 200, "vest"],
	["Flora 6Sh-92 Radio", "rhs_6b23_6sh92_radio", 200, "vest"],
	["Flora 6Sh-92 Vog", "rhs_6b23_6sh92_vog", 200, "vest"],
	["Flora 6Sh-92 Vog headset", "rhs_6b23_6sh92_vog_headset", 200, "vest"],
	["Flora 6Sh-92 headset", "rhs_6b23_6sh92_headset", 200, "vest"],
	["Flora 6Sh-92 headset map", "rhs_6b23_6sh92_headset_mapcase", 200, "vest"],
	["Mountain 6B23", "rhs_6b23_ML", 200, "vest"],
	["Mountain Crew", "rhs_6b23_ML_crew", 200, "vest"],
	["Mountain Crew officer", "rhs_6b23_ML_crewofficer", 200, "vest"],
	["Mountain Engineer", "rhs_6b23_ML_engineer", 200, "vest"],
	["Mountain Medic", "rhs_6b23_ML_medic", 200, "vest"],
	["Mountain Rifleman", "rhs_6b23_ML_rifleman", 200, "vest"],
	["Mountain Sniper", "rhs_6b23_ML_sniper", 200, "vest"],
	["Mountain 6Sh-92", "rhs_6b23_ML_6sh92", 200, "vest"],
	["Mountain 6Sh-92 Radio", "rhs_6b23_ML_6sh92_radio", 200, "vest"],
	["Mountain 6Sh-92 Vog", "rhs_6b23_ML_6sh92_vog", 200, "vest"],
	["Mountain 6Sh-92 Vog headset", "rhs_6b23_ML_6sh92_vog_headset", 200, "vest"],
	["Mountain 6Sh-92 headset", "rhs_6b23_ML_6sh92_headset", 200, "vest"],
	["Mountain 6Sh-92 headset map", "rhs_6b23_ML_6sh92_headset_mapcase", 200, "vest"],
	["6Sh46", "rhs_6sh46", 200, "vest"],
	["Holster and map", "rhs_vest_commander", 200, "vest"],
	["Vydra 3M", "rhs_vydra_3m", 200, "vest"],
	["Rebreather (CSAT)", "V_RebreatherIR", 200, "vest"],
	["IOTV UCP", "rhsusf_iotv_ucp", 200, "vest"],
	["IOTV UCP Grenadier", "rhsusf_iotv_ucp_grenadier", 200, "vest"],
	["IOTV UCP Medic", "rhsusf_iotv_ucp_medic", 200, "vest"],
	["IOTV UCP Repair", "rhsusf_iotv_ucp_repair", 200, "vest"],
	["IOTV UCP Rifleman", "rhsusf_iotv_ucp_rifleman", 200, "vest"],
	["IOTV UCP SAW", "rhsusf_iotv_ucp_SAW", 200, "vest"],
	["IOTV UCP Squad Leader", "rhsusf_iotv_ucp_squadleader", 200, "vest"],
	["IOTV UCP Team Leader", "rhsusf_iotv_ucp_teamleader", 200, "vest"],
	["IOTV OCP", "rhsusf_iotv_ocp", 200, "vest"],
	["IOTV OCP Grenadier", "rhsusf_iotv_ocp_grenadier", 200, "vest"],
	["IOTV OCP Medic", "rhsusf_iotv_ocp_medic", 200, "vest"],
	["IOTV OCP Repair", "rhsusf_iotv_ocp_repair", 200, "vest"],
	["IOTV OCP Rifleman", "rhsusf_iotv_ocp_rifleman", 200, "vest"],
	["IOTV OCP SAW", "rhsusf_iotv_ocp_SAW", 200, "vest"],
	["IOTV OCP Squad Leader", "rhsusf_iotv_ocp_squadleader", 200, "vest"],
	["IOTV OCP Team Leader", "rhsusf_iotv_ocp_teamleader", 200, "vest"],
	["Rebreather (NATO)", "V_RebreatherB", 200, "vest"],
	["Rebreather (AAF)", "V_RebreatherIA", 200, "vest"]
];

backpackArray = compileFinal str
[
	["Sidor", "rhs_sidor", 250, "backpack"],
	["Falcon-II", "rhsusf_falconii", 250, "backpack"],
	["Assault UMBTS", "rhs_assault_umbts", 350, "backpack"],
	//["Assault UMBTS Engineer", "rhs_assault_umbts_engineer", 150, "backpack"],
	//["Assault UMBTS Medic", "rhs_assault_umbts_medic", 150, "backpack"],
	//["Assault UMBTS Demo", "rhs_assault_umbts_demo", 150, "backpack"],
	//["Sidor MG", "rhs_sidorMG", 150, "backpack"],
	//["RPG Carrier", "rhs_rpg", 150, "backpack"],
	["Eagle A-III UCP", "rhsusf_assault_eagleaiii_ucp", 350, "backpack"],
	["Eagle A-III OCP", "rhsusf_assault_eagleaiii_ocp", 350, "backpack"],
	//["Eagle A-III Engineer", "rhsusf_assault_eagleaiii_ocp_engineer", 150, "backpack"],
	//["Eagle A-III Medic", "rhsusf_assault_eagleaiii_ocp_medic", 150, "backpack"],
	//["Eagle A-III Demo", "rhsusf_assault_eagleaiii_ocp_demo", 150, "backpack"],
	["Kitbag (Coyote)", "B_Kitbag_cbr", 350, "backpack"],
	["Kitbag (Green)", "B_Kitbag_rgr", 350, "backpack"],
	["Kitbag (MTP)", "B_Kitbag_mcamo", 350, "backpack"],
	["Kitbag (Sage)", "B_Kitbag_sgg", 350, "backpack"],
	["Bergen (Black)", "B_Bergen_blk", 350, "backpack"],
	["Bergen (Green)", "B_Bergen_rgr", 350, "backpack"],
	["Bergen (MTP)", "B_Bergen_mcamo", 350, "backpack"],
	["Bergen (Sage)", "B_Bergen_sgg", 350, "backpack"],
	["Carryall (Urban)", "B_Carryall_oucamo", 500, "backpack"],
	["Carryall (Khaki)", "B_Carryall_khk", 500, "backpack"],
	["Carryall (MTP)", "B_Carryall_mcamo", 500, "backpack"],
	["Carryall (Olive)", "B_Carryall_oli", 500, "backpack"]
];

genItemArray = compileFinal str
[
	["GPS", "ItemGPS", 100, "gps"],
	["First Aid Kit", "FirstAidKit", 25, "item"],
	["Medikit", "Medikit", 150, "item"],
	["Toolkit", "ToolKit", 150, "item"],
	["Mine Detector", "MineDetector", 100, "item"],
	//["NV Goggles", "NVGoggles", 100, "nvg"],
	["NV AN PVS-14", "rhsusf_ANPVS_14", 100, "nvg"],
	["NV AN PVS-15", "rhsusf_ANPVS_15", 100, "nvg"],
	["Diving Goggles", "G_Diving", 100, "gogg"],
	["Binoculars", "Binocular", 50, "binoc"],
	["Rangefinder", "Rangefinder", 150, "binoc"],
	["Laser Designator", "Laserdesignator", 1000, "binoc"],
	["Chemlight (Blue)", "Chemlight_blue", 25, "mag"],
	["Chemlight (Green)", "Chemlight_green", 25, "mag"],
	["Chemlight (Yellow)", "Chemlight_yellow", 25, "mag"],
	["Chemlight (Red)", "Chemlight_red", 25, "mag"]
];

allStoreMagazines = compileFinal str (call ammoArray + call throwputArray + call genItemArray);
allRegularStoreItems = compileFinal str (call allGunStoreFirearms + call allStoreMagazines + call accessoriesArray);
allStoreGear = compileFinal str (call headArray + call uniformArray + call vestArray + call backpackArray);

genObjectsArray = compileFinal str
[
	["Empty Ammo Crate", "Box_NATO_Ammo_F", 200, "ammocrate"],
	//["Metal Barrel", "Land_MetalBarrel_F", 25, "object"],
	//["Toilet Box", "Land_ToiletBox_F", 25, "object"],
	["Lamp Post (Harbour)", "Land_LampHarbour_F", 100, "object"],
	["Lamp Post (Shabby)", "Land_LampShabby_F", 100, "object"],
	["Boom Gate", "Land_BarGate_F", 150, "object"],
	["Pipes", "Land_Pipes_Large_F", 200, "object"],
	["Concrete Frame", "Land_CncShelter_F", 200, "object"],
	["Highway Guardrail", "Land_Crash_barrier_F", 200, "object"],
	["Concrete Barrier", "Land_CncBarrier_F", 200, "object"],
	["Concrete Barrier (Medium)", "Land_CncBarrierMedium_F", 350, "object"],
	["Concrete Barrier (Long)", "Land_CncBarrierMedium4_F", 500, "object"],
	["HBarrier (1 block)", "Land_HBarrier_1_F", 150, "object"],
	["HBarrier (3 blocks)", "Land_HBarrier_3_F", 200, "object"],
	["HBarrier (5 blocks)", "Land_HBarrier_5_F", 250, "object"],
	["HBarrier Big", "Land_HBarrierBig_F", 500, "object"],
	["HBarrier Wall (4 blocks)", "Land_HBarrierWall4_F", 400, "object"],
	["HBarrier Wall (6 blocks)", "Land_HBarrierWall6_F", 500, "object"],
	["HBarrier Watchtower", "Land_HBarrierTower_F", 600, "object"],
	["Concrete Wall", "Land_CncWall1_F", 400, "object"],
	["Concrete Military Wall", "Land_Mil_ConcreteWall_F", 400, "object"],
	["Concrete Wall (Long)", "Land_CncWall4_F", 600, "object"],
	["Military Wall (Big)", "Land_Mil_WallBig_4m_F", 600, "object"],
	//["Shoot House Wall", "Land_Shoot_House_Wall_F", 180, "object"],
	["Canal Wall (Small)", "Land_Canal_WallSmall_10m_F", 400, "object"],
	["Canal Stairs", "Land_Canal_Wall_Stairs_F", 500, "object"],
	["Bag Fence (Corner)", "Land_BagFence_Corner_F", 150, "object"],
	["Bag Fence (End)", "Land_BagFence_End_F", 150, "object"],
	["Bag Fence (Long)", "Land_BagFence_Long_F", 200, "object"],
	["Bag Fence (Round)", "Land_BagFence_Round_F", 150, "object"],
	["Bag Fence (Short)", "Land_BagFence_Short_F", 150, "object"],
	["Bag Bunker (Small)", "Land_BagBunker_Small_F", 250, "object"],
	["Bag Bunker (Large)", "Land_BagBunker_Large_F", 500, "object"],
	["Bag Bunker Tower", "Land_BagBunker_Tower_F", 800, "object"],
	["Military Cargo Post", "Land_Cargo_Patrol_V1_F", 800, "object"],
	["Military Cargo Tower", "Land_Cargo_Tower_V1_F", 800, "object"],
	["Concrete Ramp", "Land_RampConcrete_F", 350, "object"],
	["Concrete Ramp (High)", "Land_RampConcreteHigh_F", 500, "object"]
	//["Scaffolding", "Land_Scaffolding_F", 250, "object"]
	//["Land Pier (TOParma.com)", "Land_Pier_F", 250000, "object"],
	//["Fuel Station (TOParma.com)", "Land_FuelStation_Feed_F", 10000, "object"]
];

allGenStoreVanillaItems = compileFinal str (call genItemArray + call genObjectsArray + call allStoreGear);

//Text name, classname, buy cost, spawn type, sell price (selling not implemented) or spawning color
landArray = compileFinal str
[
	["Kamaz-63968 VDV", "rhs_typhoon_vdv", 1500, "vehicle"],

	//======== in for testing (maybe radar placement)=========
	//["Kung Truck Shelter", "rhs_typhoon_vdv", 600, "vehicle"],
	//["P-37 Radar", "rhs_p37", 600, "vehicle"],
	//["PRV-13 Radar", "rhs_prv13", 600, "vehicle"],
	//=============================================================

	// Bugged - research required
	//["UAZ-469", "rhs_uaz_XX", 600, "vehicle"],
	//["URAL-4320", "rhs_ural_XX", 600, "vehicle"],
	//["URAL-4320 (Open)", "rhs_ural_open_XX", 600, "vehicle"],
	//["URAL-4320 (Fuel)", "RHS_Ural_Fuel_XX_01", 600, "vehicle"],
	// Bugged - research required
	// Bugged - research required
	//["M1083A1P2 Wood", "rhsusf_M1083A1P2_wd_fmtv_usarmy", 600, "vehicle"],
	//["M1083A1P2 Desert", "rhsusf_M1083A1P2_d_fmtv_usarmy", 600, "vehicle"],
	//["M1083A1P2-B Wood", "rhsusf_M1083A1P2_B_wd_fmtv_usarmy", 600, "vehicle"],
	//["M1083A1P2-B Desert", "rhsusf_M1083A1P2_B_d_fmtv_usarmy", 600, "vehicle"],
	//["M109A6 Paladin Wood", "rhsusf_m109_usarmy", 600, "vehicle"],
	//["M109A6 Paladin Desert", "rhsusf_m109d_usarmy", 600, "vehicle"],
	// Bugged - research required

	//W.I.P
	//["M997A2", "rhsusf_M977A2_usarmy_wd", 600, "vehicle"],
	//["M997A2 (CPK)", "rhsusf_M977A2_CPK_usarmy_wd", 600, "vehicle"],
	//W.I.P
	["M998A2", "rhsusf_M977A2_usarmy_wd", 800, "vehicle"],
	["M998A2 (CPK)", "rhsusf_M977A2_CPK_usarmy_wd", 800, "vehicle"],

	["M998, 2dr cgo/trp carr, open", "rhsusf_m998_w_2dr", 800, "vehicle"],
	["M998, 2dr cgo/trp carr, open", "rhsusf_m998_d_2dr", 800, "vehicle"],
	["M998, 2dr cgo/trp carr, open w/ snorkel", "rhsusf_m998_w_s_2dr", 800, "vehicle"],
	["M998, 2dr cgo/trp carr, open w/ snorkel", "rhsusf_m998_d_s_2dr", 800, "vehicle"],
	["M998, 2dr cgo/trp carr, halfsoftop", "rhsusf_m998_w_2dr_halftop", 800, "vehicle"],
	["M998, 2dr cgo/trp carr, halfsoftop", "rhsusf_m998_d_2dr_halftop", 800, "vehicle"],
	["M998, 2dr cgo/trp carr, halfsoftop w/ snorkel	", "rhsusf_m998_w_s_2dr_halftop", 800, "vehicle"],
	["M998, 2dr cgo/trp carr, halfsoftop w/ snorkel	", "rhsusf_m998_d_s_2dr_halftop", 800, "vehicle"],
	["M998, 2dr cgo/trp carr, softop", "rhsusf_m998_w_2dr_fulltop", 800, "vehicle"],
	["M998, 2dr cgo/trp carr, softop", "rhsusf_m998_d_2dr_fulltop", 800, "vehicle"],
	["M998, 2dr cgo/trp carr, softop w/ snorkel", "rhsusf_m998_w_s_2dr_fulltop", 800, "vehicle"],
	["M998, 2dr cgo/trp carr, softop w/ snorkel", "rhsusf_m998_d_s_2dr_fulltop", 800, "vehicle"],

	["M998, 4dr cgo/trp carr, open", "rhsusf_m998_w_4dr", 800, "vehicle"],
	["M998, 4dr cgo/trp carr, open", "rhsusf_m998_d_4dr", 800, "vehicle"],
	["M998, 4dr cgo/trp carr, open w/ snorkel", "rhsusf_m998_w_s_4dr", 800, "vehicle"],
	["M998, 4dr cgo/trp carr, open w/ snorkel", "rhsusf_m998_d_s_4dr", 800, "vehicle"],
	["M998, 4dr cgo/trp carr, halfsoftop", "rhsusf_m998_w_4dr_halftop", 800, "vehicle"],
	["M998, 4dr cgo/trp carr, halfsoftop", "rhsusf_m998_d_4dr_halftop", 800, "vehicle"],
	["M998, 4dr cgo/trp carr, halfsoftop w/ snorkel", "rhsusf_m998_w_s_4dr_halftop", 800, "vehicle"],
	["M998, 4dr cgo/trp carr, halfsoftop w/ snorkel", "rhsusf_m998_d_s_4dr_halftop", 800, "vehicle"],
	["M998, 4dr cgo/trp carr, softop", "rhsusf_m998_w_4dr_fulltop", 800, "vehicle"],
	["M998, 4dr cgo/trp carr, softop", "rhsusf_m998_d_4dr_fulltop", 800, "vehicle"],
	["M998, 4dr cgo/trp carr, softop w/ snorkel", "rhsusf_m998_w_s_4dr_fulltop", 800, "vehicle"],
	["M998, 4dr cgo/trp carr, softop w/ snorkel", "rhsusf_m998_d_s_4dr_fulltop", 800, "vehicle"]
];

armoredArray = compileFinal str
[
	//Marked as W.I.P -uncomment to test
	//["BMP-3", "rhs_bmp3_msv", 400, "vehicle"],
	//["BMP-3M", "rhs_bmp3m_msv", 400, "vehicle"],
	//["BMP-3M (A)", "rhs_bmp3mera_msv", 400, "vehicle"],
	["GAZ-233011 Tigr MSV", "rhs_tigr_msv", 4000, "vehicle"],
	["GAZ-233011 Tigr VDV", "rhs_tigr_vdv", 4000, "vehicle"],
	["GAZ-233011 Tigr VMF", "rhs_tigr_vmf", 4000, "vehicle"],
	["GAZ-233011 Tigr VV", "rhs_tigr_vv", 4000, "vehicle"],
	["GAZ-66 MSV", "rhs_gaz66_msv", 4000, "vehicle"],
	["GAZ-66 VDV", "rhs_gaz66_vdv", 4000, "vehicle"],
	["GAZ-66 VMF", "rhs_gaz66_vmf", 4000, "vehicle"],
	["GAZ-66 VV", "rhs_gaz66_vv", 4000, "vehicle"],
	["GAZ-66 (Open) MSV", "rhs_gaz66o_msv", 4000, "vehicle"],
	["GAZ-66 (Open) VDV", "rhs_gaz66o_vdv", 4000, "vehicle"],
	["GAZ-66 (Open) VMF", "rhs_gaz66o_vmf", 4000, "vehicle"],
	["GAZ-66 (Open) VV", "rhs_gaz66o_vv", 4000, "vehicle"],
	["GAZ-66 (R-142N) MSV", "rhs_gaz66_r142_msv", 4000, "vehicle"],
	["GAZ-66 (R-142N) VDV", "rhs_gaz66_r142_vdv", 4000, "vehicle"],
	["GAZ-66 (R-142N) VMF", "rhs_gaz66_r142_vmf", 4000, "vehicle"],
	["GAZ-66 (R-142N) VV", "rhs_gaz66_r142_vv", 4000, "vehicle"],
	["GAZ-66 (AP-2) MSV", "rhs_gaz66_ap2_msv", 4000, "vehicle"],
	["GAZ-66 (AP-2) VDV", "rhs_gaz66_ap2_vdv", 4000, "vehicle"],
	["GAZ-66 (AP-2) VMF", "rhs_gaz66_ap2_vmf", 4000, "vehicle"],
	["GAZ-66 (AP-2) VV", "rhs_gaz66_ap2_vv", 4000, "vehicle"],
	["M1025 (Unarmed) Wood", "rhsusf_m1025_w", 4000, "vehicle"],
	["M1025 (Unarmed) Desert", "rhsusf_m1025_d", 4000, "vehicle"],
	["M1025 (Unarmed/Snorkel)W", "rhsusf_m1025_w_s", 4000, "vehicle"],
	["M1025 (Unarmed/Snorkel)D", "rhsusf_m1025_d_s", 4000, "vehicle"], //class name wrong online. uncomment to test
	["M1025 (M2)W", "rhsusf_m1025_w_m2", 8000, "vehicle"],
	["M1025 (M2)D", "rhsusf_m1025_d_m2", 8000, "vehicle"],
	["M1025 (M2/Snorkel)W", "rhsusf_m1025_w_s_m2", 8000, "vehicle"],
	["M1025 (M2/Snorkel)D", "rhsusf_m1025_d_s_m2", 8000, "vehicle"],
	["M1025 (Mk19)W", "rhsusf_m1025_w_mk19", 10000, "vehicle"],
	["M1025 (Mk19)D", "rhsusf_m1025_d_mk19", 10000, "vehicle"],
	["M1025 (Mk19/Snorkel)W", "rhsusf_m1025_w_s_mk19", 10000, "vehicle"],
	["M1025 (Mk19/Snorkel)D", "rhsusf_m1025_d_s_mk19", 10000, "vehicle"],
	["GAZ-66 (ESB-8IM) MSV", "rhs_gaz66_repair_msv", 12500, "vehicle"],
	["GAZ-66 (ESB-8IM) VDV", "rhs_gaz66_repair_vdv", 12500, "vehicle"],
	["GAZ-66 (ESB-8IM) VMF", "rhs_gaz66_repair_vmf", 12500, "vehicle"],
	["GAZ-66 (ESB-8IM) VV", "rhs_gaz66_repair_vv", 12500, "vehicle"],
	["M113A3 Wood", "rhsusf_m113_usarmy", 14000, "vehicle"],
	["M113A3 Desert", "rhsusf_m113d_usarmy", 14000, "vehicle"],
	["PRP-3 MSV", "rhs_prp3_msv", 15000, "vehicle"],
	["PRP-3 TV", "rhs_prp3_tv", 15000, "vehicle"],
	["PRP-3 VDV", "rhs_prp3_vdv", 155000, "vehicle"],
	["PRP-3 VV", "rhs_prp3_vv", 15000, "vehicle"],
	["BRM-1K MSV", "rhs_brm1k_msv", 22500, "vehicle"],
	["BRM-1K TV", "rhs_brm1k_tv", 22500, "vehicle"],
	["BRM-1K VDV", "rhs_brm1k_vdv", 22500, "vehicle"],
	["BRM-1K VV", "rhs_brm1k_vv", 22500, "vehicle"],
	["BTR-60 APC MSV", "rhs_btr60_msv", 22500, "vehicle"],
	["BTR-60 APC VDV", "rhs_btr60_vdv", 22500, "vehicle"],
	["BTR-60 APC VMF", "rhs_btr60_vmf", 22500, "vehicle"],
	["BTR-60 APC VV", "rhs_btr60_vv", 22500, "vehicle"],
	["BTR-70 APC MSV", "rhs_btr70_msv", 22500, "vehicle"],
	["BTR-70 APC VDV", "rhs_btr70_vdv", 22500, "vehicle"],
	["BTR-70 APC VMF", "rhs_btr70_vmf", 22500, "vehicle"],
	["BTR-70 APC VV", "rhs_btr70_vv", 22500, "vehicle"],
	["BTR-80 APC MSV", "rhs_btr80_msv", 24000, "vehicle"],
	["BTR-80 APC VDV", "rhs_btr80_vdv", 24000, "vehicle"],
	["BTR-80 APC VMF", "rhs_btr80_vmf", 24000, "vehicle"],
	["BTR-80 APC VV", "rhs_btr80_vv", 24000, "vehicle"],
	["BTR-80A APC MSV", "rhs_btr80a_msv", 24000, "vehicle"],
	["BTR-80A APC VDV", "rhs_btr80a_vdv", 24000, "vehicle"],
	["BTR-80A APC VMF", "rhs_btr80a_vmf", 24000, "vehicle"],
	["BTR-80A APC VV", "rhs_btr80a_vv", 24000, "vehicle"],
	//["M2A2ODS", "RHS_M2A2_wd", 36000, "vehicle"],
	//["M2A2ODS", "RHS_M2A2", 36000, "vehicle"],
	//["M2A2ODS (BUSK I) Wood", "RHS_M2A2_BUSKI_wd", 36000, "vehicle"],
	//["M2A2ODS (BUSK I) Desert", "RHS_M2A2_BUSKI", 36000, "vehicle"],
	["ZSU-23-4 (TV)", "rhs_zsu234_aa", 32000, "vehicle"],
	["BMD-1k Command", "rhs_bmd1k", 32500, "vehicle"],
	["BMD-1R Rocket", "rhs_bmd1r", 32500, "vehicle"],
	["BMD-1 Combat", "rhs_bmd1", 35000, "vehicle"],
	["BMD-1p Combat", "rhs_bmd1p", 35000, "vehicle"],
	["BMD-1pk Command", "rhs_bmd1pk", 35000, "vehicle"],
	//["M2A3 Wood", "RHS_M2A3", 36000, "vehicle"],
	//["M2A3 Desert", "RHS_M2A3", 36000, "vehicle"],
	//["M2A3 (BUSK I) Wood", "RHS_M2A3_BUSKI_wd", 36000, "vehicle"],
	//["M2A3 (BUSK I) Desert", "RHS_M2A3_BUSKI", 36000, "vehicle"],
	//["M2A3 (BUSK III) Wood", "RHS_M2A3_BUSKIII_wd", 36000, "vehicle"],
	//["M2A3 (BUSK III) Desert", "RHS_M2A3_BUSKIII", 36000, "vehicle"],
	["M6 Wood", "RHS_M6_wd", 36000, "vehicle"],
	["M6 Desert", "RHS_M6", 36000, "vehicle"],
	["BMD-2", "rhs_bmd2", 37500, "vehicle"],
	["BMD-2K Command", "rhs_bmd2k", 37500, "vehicle"],
	["BMD-2M Modern", "rhs_bmd2m", 37500, "vehicle"],
	["BDM-4", "rhs_bmd4_vdv", 40000, "vehicle"],
	["BDM-4M", "rhs_bmd4m_vdv", 40000, "vehicle"],
	["BDM-4M(A)", "rhs_bmd4ma_vdv", 40000, "vehicle"],
	//["BMP-1", "rhs_bmp1_XX", 10000, "vehicle"],
	//["BMP-1P Improved", "rhs_bmp1p_XX", 10000, "vehicle"],
	//["BMP-1K Command", "rhs_bmp1k_XX", 10000, "vehicle"],
	// MISSING["BMP-1D UpArmoured", "", 10000, "vehicle"],
	["BMP-2 (E)	 Export", "rhs_bmp2e_XX", 40000, "vehicle"],
	["BMP-2", "rhs_bmp2_XX", 40000, "vehicle"],
	["BMP-2K Command", "rhs_bmp2k_XX", 40000, "vehicle"],
	["BMP-2D UpArmoured", "rhs_bmp2d_XX", 40000, "vehicle"]
];

tanksArray = compileFinal str
[
	//Rocket launcher bullshit 
	//["BM-21 122mm RL MSV", "RHS_BM21_MSV_01", 10000, "vehicle"],
	//["BM-21 122mm RL VDV", "RHS_BM21_VDV_01", 10000, "vehicle"],
	//["BM-21 122mm RL VMF", "RHS_BM21_VMF_01", 10000, "vehicle"],
	//["BM-21 122mm RL VV", "RHS_BM21_VV_01", 10000, "vehicle"],
	["2S25(VDV)", "rhs_sprut_vdv", 45000, "vehicle"],
	//["2S3M", "rhs_2s3_tv", 400, "vehicle"],
	//["PRP-3", "rhs_prp3_msv", 400, "vehicle"],
	["T-72Ba", "rhs_t72ba_tv", 60000, "vehicle"],
	["T-72Bb", "rhs_t72bb_tv", 60000, "vehicle"],
	["T-72Bc", "rhs_t72bc_tv", 60000, "vehicle"],
	["T-72B3", "rhs_t72bd_tv", 60000, "vehicle"],
	//["T-80", "rhs_t80", 70000, "vehicle"],
	//["T-80A", "rhs_t80a", 70000, "vehicle"],
	//["T-80B", "rhs_t80b", 70000, "vehicle"],
	//["T-80BK", "rhs_t80bk", 70000, "vehicle"],
	//["T-80BV", "rhs_t80bv", 70000, "vehicle"],
	//["T-80BVK", "rhs_t80bvk", 70000, "vehicle"],
	//["T-80U", "rhs_t80u", 90000, "vehicle"],
	["M1A1FEP Wood", "rhsusf_m1a1fep_wd", 70000, "vehicle"],
	["M1A1FEP Desert", "rhsusf_m1a1fep_d", 70000, "vehicle"],
	["M1A1AIM Wood", "rhsusf_m1a1aimwd_usarmy", 70000, "vehicle"],
	["M1A1AIM Desert", "rhsusf_m1a1aimd_usarmy", 70000, "vehicle"],
	["M1A1AIM TUSK I Wood", "rhsusf_m1a1aim_tuski_wd", 75000, "vehicle"],
	["M1A1AIM TUSK I Desert", "rhsusf_m1a1aim_tuski_d", 75000, "vehicle"],
	["M1A2SEPv1 Wood", "rhsusf_m1a2sep1wd_usarmy", 75000, "vehicle"],
	["M1A2SEPv1 Desert", "rhsusf_m1a2sep1d_usarmy", 75000, "vehicle"],
	["M1A2SEPv1 (Tusk I) Wood", "rhsusf_m1a2sep1tuskiwd_usarmy", 80000, "vehicle"],
	["M1A2SEPv1 (Tusk I) Desert", "rhsusf_m1a2sep1tuskid_usarmy", 80000, "vehicle"]
];


helicoptersArray = compileFinal str
[
	["Ka-60 Grey", "rhs_ka60_grey", 7000, "vehicle"],
	["Ka-60 Camo", "rhs_ka60_c", 7000, "vehicle"],
	["UH-60M Woodland", "rhs_uh60m", 8000, "vehicle"],
	["UH-60M Desert", "rhs_uh60m_d", 8000, "vehicle"],
	["UH-60M MEV Woodland", "rhs_uh60m_mev", 8000, "vehicle"],
	["UH-60M MEV Desert", "rhs_uh60m_mev_d", 8000, "vehicle"],	
	["CH-47 Chinook Wood", "rhs_ch_47f", 9500, "vehicle"],
	["CH-47 Chinook Desert", "rhs_ch_47f_light", 9500, "vehicle"],
	["Mi-8MT VDV", "RHS_Mi8mt_vdv", 10000, "vehicle"],
	["Mi-8MT VV", "RHS_Mi8mt_vv", 10000, "vehicle"],
	["Mi-8MT Grey", "RHS_Mi8mt_vvs", 10000, "vehicle"],
	["Mi-8MT Camo", "RHS_Mi8mt_vvsc", 10000, "vehicle"],
	["Mi-8MTV-3 VDV", "RHS_Mi8MTV3_vdv", 55000, "vehicle"],
	["Mi-8MTV-3 Grey", "RHS_Mi8MTV3_vvs", 55000, "vehicle"],
	["Mi-8MTV-3 Camo", "RHS_Mi8MTV3_vvsc", 55000, "vehicle"],
	["Ka52 Grey", "RHS_Ka52_vvs", 65000, "vehicle"],
	["Ka52 Camo", "RHS_Ka52_vvsc", 65000, "vehicle"],
	["Mi-24P VDV", "RHS_Mi24P_vdv", 70000, "vehicle"],
	["Mi-24P Camo", "RHS_Mi24P_vvsc", 70000, "vehicle"],
	["Mi-24P Grey", "RHS_Mi24P_vvs", 70000, "vehicle"],
	["Mi-8AMTSh VDV", "RHS_Mi8AMTSh_vdv", 75000, "vehicle"],
	["Mi-8AMTSh Camo", "RHS_Mi8AMTSh_vvsc", 75000, "vehicle"],
	["Mi-8AMTSh Grey", "RHS_Mi8AMTSh_vvs", 75000, "vehicle"],
	["Mi-24V VDV", "RHS_Mi24V_vdv", 80000, "vehicle"],
	["Mi-24V Grey", "RHS_Mi24V_vvs", 80000, "vehicle"],
	["Mi-24V Camo", "RHS_Mi24V_vvsc", 80000, "vehicle"],  
	["AH-64D Apache Wood", "rhs_ah64d_wd", 85000, "vehicle"],
	["AH-64D Apache Desert", "rhs_ah64d", 85000, "vehicle"],
	["AH-1Z Super Cobra 2010 Multi Role", "rhs_ah1z_wd_10", 85000, "vehicle"],
	["AH-1Z Super Cobra 2010 Ground Role", "rhs_ah1z_wd_gs_10", 85000, "vehicle"],
	["AH-1Z Super Cobra 2010 Close Support", "rhs_ah1z_wd_cs_10", 85000, "vehicle"],
	["AH-1Z Super Cobra 2014 Multi Role", "rhs_ah1z_wd", 85000, "vehicle"],
	["AH-1Z Super Cobra 2014 Ground Role", "rhs_ah1z_wd_gs", 85000, "vehicle"],
	["AH-1Z Super Cobra 2014 Close Support", "rhs_ah1z_wd_cs", 85000, "vehicle"]

];

planesArray = compileFinal str
[
	["C-130J Transport", "RHS_C130J", 5000, "vehicle"],
	["Su-25SM Grey (Guns Only)", "RHS_Su25SM_vvs", 15000, "vehicle"],
	["Su-25SM Camo (Guns Only)", "RHS_Su25SM_vvsc", 15000, "vehicle"],
	["A-10A Thunderbolt II (Guns Only)", "rhs_a10", 20000, "vehicle"]
	
];

boatsArray = compileFinal str
[

	["Rescue Boat", "C_Rubberboat", 500, "boat"],
	["Rescue Boat (NATO)", "B_Lifeboat", 500, "boat"],
	["Rescue Boat (CSAT)", "O_Lifeboat", 500, "boat"],
	["Assault Boat (NATO)", "B_Boat_Transport_01_F", 600, "boat"],
	["Assault Boat (CSAT)", "O_Boat_Transport_01_F", 600, "boat"],
	["Assault Boat (AAF)", "I_Boat_Transport_01_F", 600, "boat"],
	["Assault Boat (FIA)", "B_G_Boat_Transport_01_F", 600, "boat"],
	["Motorboat", "C_Boat_Civil_01_F", 1000, "boat"],
	["Motorboat Rescue", "C_Boat_Civil_rescue_01_F", 900, "boat"],
	["Motorboat Police", "C_Boat_Civil_police_01_F", 1250, "boat"],
	["Speedboat HMG (CSAT)", "O_Boat_Armed_01_hmg_F", 4000, "boat"],
	["Speedboat Minigun (NATO)", "B_Boat_Armed_01_minigun_F", 4000, "boat"],
	["Speedboat Minigun (AAF)", "I_Boat_Armed_01_minigun_F", 4000, "boat"],
	["SDV Submarine (NATO)", "B_SDV_01_F", 1000, "submarine"],
	["SDV Submarine (CSAT)", "O_SDV_01_F", 1000, "submarine"],
	["SDV Submarine (AAF)", "I_SDV_01_F", 1000, "submarine"]


];

allVehStoreVehicles = compileFinal str (call landArray + call armoredArray + call tanksArray + call helicoptersArray + call planesArray + call boatsArray);

uavArray = compileFinal str
[
	"UAV_02_base_F",
	"UGV_01_base_F"
];

noColorVehicles = compileFinal str
[
	// Deprecated
];

rgbOnlyVehicles = compileFinal str
[
	// Deprecated
];

_color = "#(rgb,1,1,1)color";
_texDir = "client\images\vehicleTextures\";
_kartDir = "\A3\soft_f_kart\Kart_01\Data\";
_mh9Dir = "\A3\air_f\Heli_Light_01\Data\";
_mohawkDir = "\A3\air_f_beta\Heli_Transport_02\Data\";
_taruDir = "\A3\air_f_heli\Heli_Transport_04\Data\";

colorsArray = compileFinal str
[
	[ // Main colors
		"All",
		[
			["Black", _color + "(0.01,0.01,0.01,1)"], // #(argb,8,8,3)color(0.1,0.1,0.1,0.1)
			["Grey", _color + "(0.15,0.151,0.152,1)"], // #(argb,8,8,3)color(0.5,0.51,0.512,0.3)
			["White", _color + "(0.75,0.75,0.75,1)"], // #(argb,8,8,3)color(1,1,1,0.5)
			["Dark Blue", _color + "(0,0.05,0.15,1)"], // #(argb,8,8,3)color(0,0.3,0.6,0.05)
			["Blue", _color + "(0,0.03,0.5,1)"], // #(argb,8,8,3)color(0,0.2,1,0.75)
			["Teal", _color + "(0,0.3,0.3,1)"], // #(argb,8,8,3)color(0,1,1,0.15)
			["Green", _color + "(0,0.5,0,1)"], // #(argb,8,8,3)color(0,1,0,0.15)
			["Yellow", _color + "(0.5,0.4,0,1)"], // #(argb,8,8,3)color(1,0.8,0,0.4)
			["Orange", _color + "(0.4,0.09,0,1)"], // #(argb,8,8,3)color(1,0.5,0,0.4)
			["Red", _color + "(0.45,0.005,0,1)"], // #(argb,8,8,3)color(1,0.1,0,0.3)
			["Pink", _color + "(0.5,0.03,0.3,1)"], // #(argb,8,8,3)color(1,0.06,0.6,0.5)
			["Purple", _color + "(0.1,0,0.3,1)"], // #(argb,8,8,3)color(0.8,0,1,0.1)
			["NATO Tan", _texDir + "nato.jpg"], // #(argb,8,8,3)color(0.584,0.565,0.515,0.3)
			["CSAT Brown", _texDir + "csat.jpg"], // #(argb,8,8,3)color(0.624,0.512,0.368,0.3)
			["AAF Green", _texDir + "aaf.jpg"], // #(argb,8,8,3)color(0.546,0.59,0.363,0.2)
			["TOP Pussy Patrol", _texDir + "top-pussy-1.jpg"],
			["TOP Pussy Pounders", _texDir + "top-pussy-2.jpg"],
			["TOP Titty Touchers", _texDir + "top-boobs-1.jpg"],
			["TOP Pirates & Weed", _texDir + "top-weed-1.jpg"],
			["TOP Death Dealer", _texDir + "top-skulls-1.jpg"],
			["TOP LGBT Parade", _texDir + "top-lgbt-1.jpg"],
			["TOP Dildo Brigade", _texDir + "top-dildo-1.jpg"],
			["Carbon", _texDir + "carbon.jpg"],
			["Rusty", _texDir + "rusty.jpg"],
			["'Murica", _texDir + "murica.jpg"],
			["Confederate", _texDir + "confederate.jpg"],
			["Union Jack", _texDir + "unionjack.jpg"],
			["Yellow Camo", _texDir + "camo_fuel.jpg"],
			["Orange Camo", _texDir + "camo_fack.jpg"],
			["Red Camo", _texDir + "camo_deser.jpg"],
			["Pink Camo", _texDir + "camo_pank.jpg"]
		]
	],
	[ // Kart colors
		"Kart_01_Base_F",
		[
			["Black (Kart)", [[0, _kartDir + "kart_01_base_black_co.paa"]]],
			["White (Kart)", [[0, _kartDir + "kart_01_base_white_co.paa"]]],
			["Blue (Kart)", [[0, _kartDir + "kart_01_base_blue_co.paa"]]],
			["Green (Kart)", [[0, _kartDir + "kart_01_base_green_co.paa"]]],
			["Yellow (Kart)", [[0, _kartDir + "kart_01_base_yellow_co.paa"]]],
			["Orange (Kart)", [[0, _kartDir + "kart_01_base_orange_co.paa"]]],
			["Red (Kart)", [[0, _kartDir + "kart_01_base_red_co.paa"]]]
		]
	],
	[ // MH-9 colors
		"Heli_Light_01_base_F",
		[
			["AAF Camo (MH-9)", [[0, _mh9Dir + "heli_light_01_ext_indp_co.paa"]]],
			["Blue 'n White (MH-9)", [[0, _mh9Dir + "heli_light_01_ext_blue_co.paa"]]],
			["Blueline (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_blueline_co.paa"]]],
			["Cream Gravy (MH-9)", [[0, _mh9Dir + "heli_light_01_ext_co.paa"]]],
			["Digital (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_digital_co.paa"]]],
			["Elliptical (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_elliptical_co.paa"]]],
			["Furious (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_furious_co.paa"]]],
			["Graywatcher (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_graywatcher_co.paa"]]],
			["ION (MH-9)", [[0, _mh9Dir + "heli_light_01_ext_ion_co.paa"]]],
			["Jeans (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_jeans_co.paa"]]],
			["Light (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_light_co.paa"]]],
			["Shadow (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_shadow_co.paa"]]],
			["Sheriff (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_sheriff_co.paa"]]],
			["Speedy (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_speedy_co.paa"]]],
			["Sunset (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_sunset_co.paa"]]],
			["Vrana (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_vrana_co.paa"]]],
			["Wasp (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_wasp_co.paa"]]],
			["Wave (MH-9)", [[0, _mh9Dir + "Skins\heli_light_01_ext_wave_co.paa"]]]
		]
	],
	[ // Mohawk colors
		"Heli_Transport_02_base_F",
		[
			["Dahoman (Mohawk)", [
				[0, _mohawkDir + "Skins\heli_transport_02_1_dahoman_co.paa"],
				[1, _mohawkDir + "Skins\heli_transport_02_2_dahoman_co.paa"],
				[2, _mohawkDir + "Skins\heli_transport_02_3_dahoman_co.paa"]
			]],
			["ION (Mohawk)", [
				[0, _mohawkDir + "Skins\heli_transport_02_1_ion_co.paa"],
				[1, _mohawkDir + "Skins\heli_transport_02_2_ion_co.paa"],
				[2, _mohawkDir + "Skins\heli_transport_02_3_ion_co.paa"]
			]]
		]
	],
	[ // Taru base colors
		"Heli_Transport_04_base_F",
		[
			["Black (Taru)", [
				[0, _taruDir + "heli_transport_04_base_01_black_co.paa"],
				[1, _taruDir + "heli_transport_04_base_02_black_co.paa"],
				[2, _taruDir + "heli_transport_04_pod_ext01_black_co.paa"],
				[3, _taruDir + "heli_transport_04_pod_ext02_black_co.paa"]
			]]
		]
	],
	[ // Taru bench colors
		"O_Heli_Transport_04_bench_F",
		[
			["Black (Taru)", [[2, _taruDir + "heli_transport_04_bench_black_co.paa"]]]
		]
	],
	[ // Taru fuel colors
		"O_Heli_Transport_04_fuel_F",
		[
			["Black (Taru)", [[2, _taruDir + "heli_transport_04_fuel_black_co.paa"]]]
		]
	]
];

//General Store Item List
//Display Name, Class Name, Description, Picture, Buy Price, Sell Price.
// ["Medical Kit", "medkits", localize "STR_WL_ShopDescriptions_MedKit", "client\icons\medkit.paa", 400, 200],  // not needed since there are First Ait Kits
customPlayerItems = compileFinal str
[
	["Water Bottle", "water", localize "STR_WL_ShopDescriptions_Water", "client\icons\waterbottle.paa", 30, 15],
	["Canned Food", "cannedfood", localize "STR_WL_ShopDescriptions_CanFood", "client\icons\cannedfood.paa", 30, 15],
	["Repair Kit", "repairkit", localize "STR_WL_ShopDescriptions_RepairKit", "client\icons\briefcase.paa", 500, 250],
	["Jerry Can (Full)", "jerrycanfull", localize "STR_WL_ShopDescriptions_fuelFull", "client\icons\jerrycan.paa", 150, 75],
	["Jerry Can (Empty)", "jerrycanempty", localize "STR_WL_ShopDescriptions_fuelEmpty", "client\icons\jerrycan.paa", 50, 25],
	["Spawn Beacon", "spawnbeacon", localize "STR_WL_ShopDescriptions_spawnBeacon", "client\icons\spawnbeacon.paa", 3500, 750],
	["Camo Net", "camonet", localize "STR_WL_ShopDescriptions_Camo", "client\icons\camonet.paa", 200, 100],
	["Syphon Hose", "syphonhose", localize "STR_WL_ShopDescriptions_SyphonHose", "client\icons\syphonhose.paa", 200, 100]
	//["Energy Drink", "energydrink", localize "STR_WL_ShopDescriptions_Energy_Drink", "client\icons\energydrink.paa", 100, 50],
	//["Warchest", "warchest", localize "STR_WL_ShopDescriptions_Warchest", "client\icons\warchest.paa", 1000, 500]
];

call compile preprocessFileLineNumbers "mapConfig\storeOwners.sqf";

storeConfigDone = compileFinal "true";
