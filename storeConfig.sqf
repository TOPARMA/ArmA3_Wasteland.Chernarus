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
	// Handguns

	["MP-443", "rhs_weap_pya", 50]

	//["P07 Pistol", "hgun_P07_F", 50],
	//["Rook-40 Pistol", "hgun_Rook40_F", 50],
	//["ACP-C2 Pistol", "hgun_ACPC2_F", 75],
	//["Zubr Revolver", "hgun_Pistol_heavy_02_F", 75],
	//["4-Five Pistol", "hgun_Pistol_heavy_01_F", 100]
];



smgArray = compileFinal str
[

	["MP5A2 no rail", "hlc_smg_mp5a2", 400],
	["MP5A3 no rail", "hlc_smg_mp5a3", 400],
	["MP5A4 Navy", "hlc_smg_mp5a4", 400],
	["MP5N Navy", "hlc_smg_mp5n", 400],
	["MP5/10 Navy", "hlc_smg_mp510", 400],
	["MP5SD5 Navy", "hlc_smg_mp5sd5", 400],
	["MP5SD6 Navy", "hlc_smg_mp5sd6", 400],
	["Navy SMG (Half-Life)", "hlc_smg_9mmar", 400]

//LEGACY
	//["PDW2000 SMG", "hgun_PDW2000_F", 100],
	//["Sting SMG", "SMG_02_F", 125],
	//["Vermin SMG", "SMG_01_F", 125]

];



rifleArray = compileFinal str
[


//SHOTGUN
	["Izhmash Saiga12K", "hlc_rifle_saiga12k", 400],


//Mx
	["M14", "hlc_rifle_M14", 400],
	["M21", "hlc_rifle_M21", 400],
	["M14 DMR(ArmA2 DMR)", "hlc_rifle_M14DMR", 400],
	["Troy M14 SOPMOD", "hlc_rifle_m14sopmod", 400],
	["Mk14 EBR-RI", "rhs_weap_m14ebrri", 400],

	["M16A4 RIS", "rhs_weap_m16a4", 400],
	["M16A4 (Bipod)", "rhs_weap_m16a4_bipod", 400],
	["M16A4 (Grippod)", "rhs_weap_m16a4_grip", 400],
	["M16A4 (Carryhandle)", "rhs_weap_m16a4_carryhandle", 400],
	["M16A4 (Carryhandle/Pmag)", "rhs_weap_m16a4_carryhandle_pmag", 400],

	["M320 GLM", "rhs_weap_M320", 400],

	["M4 RIS", "rhs_weap_m4", 400],
	["M4 (AFG)", "rhs_weap_m4_grip2", 400],
	["M4 (Bipod)", "rhs_weap_m4_bipod", 400],
	["M4 (Grippod)", "rhs_weap_m4_grip", 400],
	["M4 (Carryhandle)", "rhs_weap_m4_carryhandle", 400],
	["M4 (Carryhandle/PMAG)", "rhs_weap_m4_carryhandle_pmag", 400],
	["M4 (M320)", "rhs_m4_m320", 400],
	["M4A1 RIS", "rhs_weap_m4a1", 400],
	["M4A1 (AFG)", "rhs_weap_m4a1_grip2", 400],
	["M4A1 (Bipod)", "rhs_weap_m4a1_bipod", 400],
	["M4A1 (Grippod)", "rhs_weap_m4a1_grip", 400],
	["M4A1 (M320)", "rhs_m4a1_m320", 400],

//AKs
	["AK-74M", "rhs_weap_ak74m", 400],
	["AK-74M (folded)", "rhs_weap_ak74m_folded", 400],
	["AK-74M (camo)", "rhs_weap_ak74m_camo", 400],
	["AK-74M (desert)", "rhs_weap_ak74m_desert", 400],
	["AK-74M (2 mag)", "rhs_weap_ak74m_2mag", 400],
	["AK-74M (2 mag and camo)", "rhs_weap_ak74m_2mag_camo", 400],
	["AK-74M (GP-25 Kostyor)", "rhs_weap_ak74m_gp25", 400],

	["AK74", "hlc_rifle_ak74", 400],
	["AKS74", "hlc_rifle_aks74", 400],
	["AKS74U", "hlc_rifle_aks74u", 400],
	["AKM", "hlc_rifle_akm", 400],
	["RPK", "hlc_rifle_rpk", 400],
	["AK12", "hlc_rifle_ak12", 400],
	["AKM GP25", "hlc_rifle_akmgl", 400],
	["AKS74 GP30", "hlc_rifle_aks74_GL", 400],

//FALs
	["Enfield L1A1 SLR", "hlc_rifle_l1a1slr", 400],
	["Lithgow SLR (Aussy L1A1)", "hlc_rifle_SLR", 400],
	["Steyr STG.58", "hlc_rifle_STG58F", 400],
	["FN FAL (Para)", "hlc_rifle_FAL5061", 400],
	["FN C1A1 (CAN SLR)", "hlc_rifle_c1A1", 400],
	["FN LAR (Israel)", "hlc_rifle_LAR", 400],
	["Lithgow SLR Chopmod", "hlc_rifle_SLRchopmod", 400],
	["DSA FAL OSW", "hlc_rifle_falosw", 400],
	["DSA FAL OSW M203GL", "hlc_rifle_osw_GL", 400],

//G3
	["H&K G3SG1", "hlc_rifle_g3sg1", 400],
	["H&K G3A3", "hlc_rifle_g3a3", 400],
	["H&K G3KA4", "hlc_rifle_g3ka4", 400],
	["H&K G3KA4 M203", "HLC_Rifle_g3ka4_GL", 400],
	["FR Ordnance MC51 (G3)", "hlc_rifle_hk51", 400],
	
	// bugged
	["H&K HK53", "hlc_rifle_hk53", 400],
	// bugged


//AR
	["AR15 Sanitied Carbine", "hlc_rifle_RU556", 400],
	["AR15 Magpul Carbine", "hlc_rifle_RU5562", 400],
	["Colt Carbine(727 Commando)", "hlc_rifle_Colt727", 400],
	["Colt Carbine M203(727 Commando)", "hlc_rifle_Colt727_GL", 400],
	["Bravo Company MFG/Haley", "hlc_rifle_bcmjack", 400],
	["Bushmaster .300 Carbine", "hlc_rifle_Bushmaster300", 400],
	["AR15 .300 Dissipator", "hlc_rifle_vendimus", 400],
	["Rock River Arms LAR-15 AMR", "hlc_rifle_SAMR", 400],
	//["AAC Honey-Badger", "hlc_rifle_honeybase", 400],
	["AAC Honey-Badger Carbine", "hlc_rifle_honeybadger", 400],

//STEYR AUGs
	["Steyr AUGA1 Rifle", "hlc_rifle_aug", 400],
	["Steyr AUGA1 Rifle (Tan)", "hlc_rifle_auga1_t", 400],
	["Steyr AUGA1 Rifle (Black)", "hlc_rifle_auga1_B", 400],
	["Steyr AUGA1 Carbine", "hlc_rifle_auga1carb", 400],
	["Steyr AUGA1 Carbine (Tan)", "hlc_rifle_auga1carb_t", 400],
	["Steyr AUGA1 Carbine (Black)", "hlc_rifle_auga1carb_b", 400],
	["Steyr AUGA1 Heavy", "hlc_rifle_aughbar", 400],
	["Steyr AUGA1 Heavy (Tan)", "hlc_rifle_aughbar_t", 400],
	["Steyr AUGA1 Heavy (Black)", "hlc_rifle_aughbar_b", 400],
	["Steyr AUGA1 9mm Para", "hlc_rifle_augpara", 400],
	["Steyr AUGA1 9mm Para(Tan)", "hlc_rifle_augpara_t", 400],
	["Steyr AUGA1 9mm Para(Black)", "hlc_rifle_augpara_b", 400],
	["Steyr AUGA2 Rifle", "hlc_rifle_auga2", 400],
	["Steyr AUGA2 Rifle (Tan)", "hlc_rifle_auga2_t", 400],
	["Steyr AUGA2 Rifle (Black)", "hlc_rifle_auga2_b", 400],
	["Steyr AUGA2 Carbine", "hlc_rifle_auga2carb", 400],
	["Steyr AUGA2 Carbine (Tan)", "hlc_rifle_auga2carb_t", 400],
	["Steyr AUGA2 Carbine (Black)", "hlc_rifle_auga2carb_b", 400],
	["Steyr AUGA2 Heavy", "hlc_rifle_auga2lsw", 400],
	["Steyr AUGA2 Heavy (Tan)", "hlc_rifle_auga2lsw_t", 400],
	["Steyr AUGA2 Heavy (Black)", "hlc_rifle_auga2lsw_b", 400],
	["Steyr AUGA2 9mm Para", "hlc_rifle_auga2para", 400],
	["Steyr AUGA2 9mm Para", "hlc_rifle_auga2para_t", 400],
	["Steyr AUGA2 9mm Para", "hlc_rifle_auga2para_b", 400],
	["Steyr AUGSR Rifle", "hlc_rifle_augsr", 400],
	["Steyr AUGSR Rifle(Tan)", "hlc_rifle_augsr_t", 400],
	["Steyr AUGSR Rifle(Black)", "hlc_rifle_augsr_b", 400],
	["Steyr AUGSR Carbine", "hlc_rifle_augsrcarb", 400],
	["Steyr AUGSR Carbine (Tan)", "hlc_rifle_augsrcarb_t", 400],
	["Steyr AUGSR Carbine (Black)", "hlc_rifle_augsrcarb_b", 400],
	["Steyr AUGSR Heavy", "hlc_rifle_augsrhbar", 400],
	["Steyr AUGSR Heavy (Tan)", "hlc_rifle_augsrhbar_t", 400],
	["Steyr AUGSR Heavy (Black)", "hlc_rifle_augsrhbar_b", 400],
	["Steyr AUGA3 Rifle (Green)", "hlc_rifle_auga3", 400],
	["Steyr AUGA3 Rifle (Blue)", "hlc_rifle_auga3_bl", 400],
	["Steyr AUGA3 Rifle (Black)", "hlc_rifle_auga3_b", 400],
	["Steyr AUGA3 with M203A1 (Green)", "hlc_rifle_auga3_GL", 400],
	["Steyr AUGA3 with M203A1 (Blue)", "hlc_rifle_auga3_GL_BL", 400],
	["Steyr AUGA3 with M203A1 (Black)", "hlc_rifle_auga3_GL_B", 400],

// Sniper Rifles
	["SVD-M Dragunov", "rhs_weap_svdp", 1000],
	["SVD-M Dragunov (camo)", "rhs_weap_svdp_wd", 1000],
	["SVD-S Dragunov", "rhs_weap_svds", 1000],
	["M2010 ESR", "rhs_weap_XM2010", 1000],
	["M2010 ESR (camo)", "rhs_weap_XM2010_wd", 1000],
	["M2010 ESR (desert)", "rhs_weap_XM2010_d", 1000],
	["M2010 ESR (semi-arid)", "rhs_weap_XM2010_sa", 1000],
	["H&K PSG1", "hlc_rifle_psg1", 1000]


//LEGACY GUNS
	//==================================================================
	// Underwater Gun
	//["SDAR Underwater Rifle", "arifle_SDAR_F", 100],

	// Assault Rifles
	//["Mk20 Carbine", "arifle_Mk20C_plain_F", 150],
	//["Mk20 Carbine (Camo)", "arifle_Mk20C_F", 150],
	//["Mk20 Rifle", "arifle_Mk20_plain_F", 200],
	//["Mk20 Rifle (Camo)", "arifle_Mk20_F", 200],
	//["Mk20 EGLM Rifle", "arifle_Mk20_GL_plain_F", 250],
	//["Mk20 EGLM Rifle (Camo)", "arifle_Mk20_GL_F", 250],

	//["TRG-20 Carbine", "arifle_TRG20_F", 150],
	//["TRG-21 Rifle ", "arifle_TRG21_F", 200],
	//["TRG-21 EGLM Rifle", "arifle_TRG21_GL_F", 250],

	//["Katiba Carbine", "arifle_Katiba_C_F", 150],
	//["Katiba Rifle", "arifle_Katiba_F", 200],
	//["Katiba GL Rifle", "arifle_Katiba_GL_F", 250],

	//["MX Carbine", "arifle_MXC_F", 150],
	//["MX Carbine (Black)", "arifle_MXC_Black_F", 175],
	//["MX Rifle", "arifle_MX_F", 200],
	//["MX Rifle (Black)", "arifle_MX_Black_F", 225],
	//["MX 3GL Rifle", "arifle_MX_GL_F", 250],
	//["MX 3GL Rifle (Black)", "arifle_MX_GL_Black_F", 275],

	// Markman Rifles
	//["MXM Rifle", "arifle_MXM_F", 300],
	//["MXM Rifle (Black)", "arifle_MXM_Black_F", 325],
	//["DMR Rifle", "srifle_DMR_01_F", 375],
	//["Mk18 ABR Rifle", "srifle_EBR_F", 450],

	// Sniper Rifles
	//["M320 LRR Sniper", "srifle_LRR_SOS_F", 1000],
	//["M320 LRR Sniper (Camo)", "srifle_LRR_camo_SOS_F", 1150],
	//["GM6 Lynx Sniper", "srifle_GM6_SOS_F", 1100],
	//["GM6 Lynx Sniper (Camo)", "srifle_GM6_camo_SOS_F", 1250]
	//==================================================================
];



lmgArray = compileFinal str
[
	["PKP (Pecheneg)", "rhs_weap_pkp", 400],
	["M249 PIP(SAW)", "rhs_weap_m249_pip", 400],
	["M240B", "rhs_weap_m240B", 400],
	["M60 (no optic)", "hlc_lmg_m60", 400],
	["M60E4", "hlc_lmg_M60E4", 400]

	//LEGACY
	//["MX SW LMG", "arifle_MX_SW_F", 300],
	//["MX SW LMG (Black)", "arifle_MX_SW_Black_F", 325],
	//["Mk200 LMG", "LMG_Mk200_F", 375],
	//["Zafir LMG", "LMG_Zafir_F", 450]
];

launcherArray = compileFinal str
[

	["9K38 Igla AA", "rhs_weap_igla", 1500],
	["RPG-26", "rhs_weap_rpg26", 1500],
	["RPG-7", "rhs_weap_rpg7", 1500],
	["RShG-2", "rhs_weap_rshg2", 1500],
	["FGM-148 Javelin", "rhs_weap_fgm148", 1500],
	["FIM-92F", "rhs_weap_fim92", 1500],
	["M136 (HEAT)", "rhs_weap_M136", 1500],
	["M136 (HEDP)", "rhs_weap_M136_hedp", 1500],
	["M136 (HP)", "rhs_weap_M136_hp", 1500]

	//LEGACY 
	//=======================================================================
	//["RPG-42 Alamut", "launch_RPG32_F", 400],
	//["PCML", "launch_NLAW_F", 1500],
	//["Titan MPRL Compact (Tan)", "launch_Titan_short_F", 3000],
	//["Titan MPRL Compact (Brown)", "launch_O_Titan_short_F", 3000],
	//["Titan MPRL Compact (Olive)", "launch_I_Titan_short_F", 3000],
	//["Titan MPRL AA (Desert)", "launch_Titan_F", 3000],
	//["Titan MPRL AA (Hex)", "launch_O_Titan_F", 3000],
	//["Titan MPRL AA (Digi)", "launch_I_Titan_F", 3000]
	//=======================================================================
];



allGunStoreFirearms = compileFinal str (call pistolArray + call smgArray + call rifleArray + call lmgArray + call launcherArray);


staticGunsArray = compileFinal str
[
	// ["Vehicle Ammo Crate", "Box_NATO_AmmoVeh_F", 2500],
	["Static Titan AT 4Rnd (NATO)", "B_static_AT_F", 2500], // Static launchers only have 4 ammo, hence the low price
	["Static Titan AT 4Rnd (CSAT)", "O_static_AT_F", 2500],
	["Static Titan AT 4Rnd (AAF)", "I_static_AT_F", 2500],
	["Static Titan AA 4Rnd (NATO)", "B_static_AA_F", 3000],
	["Static Titan AA 4Rnd (CSAT)", "O_static_AA_F", 3000],
	["Static Titan AA 4Rnd (AAF)", "I_static_AA_F", 3000],
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

	["RGD-5", "rhs_mag_rgd5", 50],
	["RGD-2 (white smoke)", "rhs_mag_rdg2_white", 50],
	["RGD-2 (black smoke)", "rhs_mag_rdg2_black", 50],
	["NSP-N (yellow flare)", "rhs_mag_nspn_yellow", 50],
	["NSP-N (red flare)", "rhs_mag_nspn_red", 50],
	["NSP-N (green flare)", "rhs_mag_nspn_green", 50],
	["NSP-D (red flare)", "rhs_mag_nspd", 50],
	["Fakel", "rhs_mag_fakel", 50],
	["Fakel-S", "rhs_mag_fakels", 50],
	["Zarya-2", "rhs_mag_zarya2", 50],
	["Plamya-M", "rhs_mag_plamyam", 50],
	["PMN-2 AP", "rhs_mine_pmn2", 50],
	["TM-62M AT", "rhs_mine_tm62m", 50],
	["M67 Frag Grenade", "rhs_mag_m67", 50],
	["M84 Stun Grenade", "rhs_ammo_m84", 50],
	["M19 AT", "rhs_mine_M19_ammo", 50]

	//["Mini Grenade", "MiniGrenade", 50],
	//["Frag Grenade", "HandGrenade", 100],
	//["APERS Tripwire Mine", "APERSTripMine_Wire_Mag", 200],
	//["APERS Bounding Mine", "APERSBoundingMine_Range_Mag", 250],
	//["APERS Mine", "APERSMine_Range_Mag", 300],
	//["Claymore Charge", "ClaymoreDirectionalMine_Remote_Mag", 350],
	//["M6 SLAM Mine", "SLAMDirectionalMine_Wire_Mag", 350],
	//["AT Mine", "ATMine_Range_Mag", 400],
	//["Explosive Charge", "DemoCharge_Remote_Mag", 450],
	//["Explosive Satchel", "SatchelCharge_Remote_Mag", 500],
	//["Smoke Grenade (White)", "SmokeShell", 50],
	//["Smoke Grenade (Purple)", "SmokeShellPurple", 50],
	//["Smoke Grenade (Blue)", "SmokeShellBlue", 50],
	//["Smoke Grenade (Green)", "SmokeShellGreen", 50],
	//["Smoke Grenade (Yellow)", "SmokeShellYellow", 50],
	//["Smoke Grenade (Orange)", "SmokeShellOrange", 50],
	//["Smoke Grenade (Red)", "SmokeShellRed", 50]
];

//Gun Store Ammo List
//Text name, classname, buy cost
ammoArray = compileFinal str
[

	["9x19mm Parabellum", "rhs_mag_9x19_17", 10],
	["5N7 AK-74 30Rnd", "rhs_30Rnd_545x39_AK", 10],
	["7T3M AK-74 30Rnd", "rhs_30Rnd_545x39_AK_green", 10],
	["7N10 AK-74 30Rnd", "rhs_30Rnd_545x39_7n10_AK", 10],
	["7N22 AK-74 30Rnd", "rhs_30Rnd_545x39_7n22_AK", 10],
	["5N7 RPK-74 45Rnd", "rhs_45Rnd_545X39_AK", 10],
	["7T3M RPK-74 45Rnd", "rhs_45Rnd_545X39_AK_Green", 10],
	["7N10 RPK-74 45Rnd", "rhs_45Rnd_545X39_7N10_AK", 10],
	["7N22 RPK-74 45Rnd", "rhs_45Rnd_545X39_7N22_AK", 10],
	["762x54mmR 100Rnd", "rhs_100Rnd_762x54mmR", 10],
	["7N1 10Rnd", "rhs_10Rnd_762x54mmR_7N1", 10],
	["M14 20Rnd", "20Rnd_762x51_Mag", 10],
	["Mk262 30Rnd", "rhs_mag_30Rnd_556x45_Mk262_Stanag", 10],
	["Mk318 30Rnd", "rhs_mag_30Rnd_556x45_Mk318_Stanag", 10],
	["M885A1 30Rnd", "rhs_mag_30Rnd_556x45_M855A1_Stanag", 10],
	["M885A1 (red) 30Rnd", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red", 10],
	["M885A1 (green) 30Rnd", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Green", 10],
	["M885A1 (yellow) 30Rnd", "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Yellow", 10],
	[".300 Win Mag 5Rnd", "rhsusf_5Rnd_300winmag_xm2010", 10],
	["M240 100Rnd", "rhsusf_100Rnd_762x51", 10],
	["M249 100Rnd", "rhsusf_100Rnd_556x45_soft_pouch", 10],
	["7.62x51mm Ball 100Rnd", "hlc_100Rnd_762x51_B_M60E4", 10],
	["7.62x51mm Tracer 100Rnd", "hlc_100Rnd_762x51_T_M60E4", 10],
	["7.62x51mm Mixed 100Rnd", "hlc_100Rnd_762x51_M_M60E4	", 10],
	["5.45x39mm Ball 30Rnd", "hlc_30Rnd_545x39_B_AK", 10],
	["5.45x39mm Tracer 30Rnd", "hlc_30Rnd_545x39_T_AK", 10],
	["5.45x39mm EPR 30Rnd", "hlc_30Rnd_545x39_EP_AK", 10],
	["5.45x39mm Mixed 45Rnd", "hlc_45Rnd_545x39_t_rpk", 10],
	["7.62x39mm Ball 30Rnd", "hlc_30Rnd_762x39_b_ak", 10],
	["7.62x39mm Tracer 30Rnd", "hlc_30Rnd_762x39_t_ak", 10],
	["7.62x39mm Tracer 45Rnd", "hlc_45Rnd_762x39_t_rpk", 10],
	["7.62x39mm Mixed 45Rnd", "hlc_45Rnd_762x39_m_rpk", 10],
	["7.62x51mm Ball 20Rnd", "hlc_20Rnd_762x51_B_fal", 10],
	["7.62x51mm Tracer 20Rnd", "hlc_20Rnd_762x51_t_fal", 10],
	["7.62x51mm Subsonic 20Rnd", "hlc_20Rnd_762x51_S_fal", 10],
	["7.62x51mm Mixed 50Rnd", "hlc_50rnd_762x51_M_FAL", 10],
	["7.62x51mm Ball 20Rnd", "hlc_20Rnd_762x51_B_G3", 10],
	["7.62x51mm Tracer 20Rnd", "hlc_20rnd_762x51_T_G3", 10],
	["7.62x51mm Mixed 50Rnd", "hlc_50rnd_762x51_M_G3", 10],

// bugged
//	["5.56x45mm Ball", "hlc_30rnd_556x45_b_HK33?, 10],
//	["5.56x45mm Tracer", "hlc_30rnd_556x45_t_HK33?, 10],
//	["5.565mm EPR", "hlc_30rnd_556x45_epr_HK33?, 10],
//	["5.56x45mm SOST", "hlc_30rnd_556x45_sost_HK33?, 10],
// bugged


	["7.62x51mm Ball", "hlc_20Rnd_762x51_B_M14", 10],
	["7.62x51mm Tracer", "hlc_20rnd_762x51_T_M14", 10],
	["7.62x51mm Mixed", "hlc_50rnd_762x51_M_M14", 10],
	[".300 Blackout 29rnd", "29rnd_300BLK_STANAG", 10],
	[".300 Blackout Tracer 29rnd", "29rnd_300BLK_STANAG_T", 10],
	[".300 Blackout FMJ 29rnd", "29rnd_300BLK_STANAG_S", 10],
	["5.56x45mm NATO EPR 30rnd", "hlc_30rnd_556x45_EPR", 10],
	["5.56x45mm NATO Mk318(SOST)30rnd", "hlc_30rnd_556x45_SOST", 10],
	["5.56x45mm NATO Mk262 30rnd", "hlc_30rnd_556x45_SPR", 10],
	["9x19mm M882 NATO Ball 30rnd", "hlc_30Rnd_9x19_B_MP5", 10],
	["9x19mm LE Hollowpoints 30rnd", "hlc_30Rnd_9x19_GD_MP5", 10],
	["9x19mm M882 subsonic 30rnd", "hlc_30Rnd_9x19_SD_MP5", 10],
	["10mm Auto FMJ 30rnd", "hlc_30Rnd_10mm_B_MP5", 10],
	["10mm Auto LE HP 30rnd", "hlc_30Rnd_10mm_JHP_MP5", 10],
	["5.56x45mm EPR 30rnd", "hlc_30Rnd_556x45_B_AUG", 10],
	["5.56x45mm Mk318 SOST 30rnd", "hlc_30Rnd_556x45_SOST_AUG", 10],
	["5.56x45mm Mk262 SPR 30rnd", "hlc_30Rnd_556x45_SPR_AUG", 10],
	["5.56x45mm Tracer 30rnd", "hlc_30Rnd_556x45_T_AUG", 10],
	["5.56x45mm EPR 40Rnd", "hlc_40Rnd_556x45_B_AUG", 10],
	["5.56x45mm Mk318 SOST 40Rnd", "hlc_40Rnd_556x45_SOST_AUG", 10],
	["5.56x45mm Mk262 SPR 40Rnd", "hlc_40Rnd_556x45_SPR_AUG", 10],
	["9x19mm M882 Ball 25Rnd", "hlc_25Rnd_9x19mm_M882_AUG", 10],
	["9x19mm LE HP 25Rnd", "hlc_25Rnd_9x19mm_JHP_AUG", 10],
	["9x19mm Subsonic 25Rnd", "hlc_25Rnd_9x19mm_subsonic_AUG", 10],
	["12g Buckshot 10rnd", "hlc_10rnd_12g_buck_S12", 10],
	["12g Slug 10rnd", "hlc_10rnd_12g_slug_S12", 10],

	["HE GP25 GP30", "hlc_VOG25_AK", 10],
	["Smoke GP25 GP30", "hlc_GRD_White", 10],

	["9M39 lgla", "rhs_mag_9k38_rocket", 500],
	["RPG-26 rocket", "rhs_rpg26_mag", 500],
	["PG-7VL RPG-7V2", "rhs_rpg7_PG7VL_mag", 500],
	["PG-7VR RPG-7V2", "rhs_rpg7_PG7VR_mag", 500],
	["OG-7V RPG-7V2", "rhs_rpg7_OG7V_mag", 500],
	["TBG-7V RPG-7V2", "rhs_rpg7_TBG7V_mag", 500],
	["RShG-2", "rhs_rshg2_mag", 500],
	["HEAT missile", "rhs_fgm148_magazine_AT", 500],
	["Stinger missile", "rhs_fim92_mag", 500],
	["84mm HEAT", "rhs_m136_mag", 500],
	["84mm HEDP", "rhs_m136_hedp_mag", 500],
	["84mm HP", "rhs_m136_hp_mag", 500],
	["VOG-25", "rhs_VOG25", 50],
	["VOG-25P (Bouncing)", "rhs_VOG25p", 50],
	["VOG-25TB (Thermobaric)", "rhs_vg40tb", 50],
	["VOG-40SZ (Flashbang)", "rhs_g_vg40sz", 50],
	["VOG-40 (White Flare)", "rhs_vg40op_white", 50],
	["VOG-40 (Green Flare)", "rhs_vg40op_green", 50],
	["VOG-40 (Red Flare)", "rhs_vg40op_red", 50],
	["GRD-40 (White Smoke)", "rhs_GRD40_white", 50],
	["GRD-40 (Green Smoke)", "rhs_GRD40_green", 50],
	["GRD-40 (Red Smoke)", "rhs_GRD40_red", 50],
	["M433", "rhs_mag_M433_HEDP", 50],
	["Stun grenade", "rhs_mag_M4009", 50],
	["M576 Buckshot", "rhs_mag_m576", 50],
	["M585 (White flare)", "rhs_mag_M585_white", 50],
	["M661 (Green flare)", "rhs_mag_M661_green", 50],
	["M662 (Red flare)", "rhs_mag_M662_red", 50],
	["M713 (Red Smoke)", "rhs_mag_M713_red", 50],
	["M714 (White Smoke)", "rhs_mag_M714_white", 50],
	["M715 (Green Smoke)", "rhs_mag_M715_green", 50],
	["M716 (Yellow Smoke)", "rhs_mag_M716_yellow", 50],

//LEGACY
	//["9mm 16Rnd Mag", "16Rnd_9x21_Mag", 10],
	//["9mm 30Rnd Mag", "30Rnd_9x21_Mag", 15],
	//[".45 ACP 6Rnd Cylinder", "6Rnd_45ACP_Cylinder", 5],
	//[".45 ACP 9Rnd Mag", "9Rnd_45ACP_Mag", 10],
	//[".45 ACP 11Rnd Mag", "11Rnd_45ACP_Mag", 15],
	//[".45 ACP 30Rnd Vermin Mag", "30Rnd_45ACP_MAG_SMG_01", 20],
	//[".45 ACP 30Rnd Tracer (Green) Mag", "30Rnd_45ACP_Mag_SMG_01_tracer_green", 15],
	//["5.56mm 20Rnd Underwater Mag", "20Rnd_556x45_UW_mag", 10],
	//["5.56mm 30Rnd STANAG Mag", "30Rnd_556x45_Stanag", 20],
	//["5.56mm 30Rnd Tracer (Green) Mag", "30Rnd_556x45_Stanag_Tracer_Green", 15],
	//["5.56mm 30Rnd Tracer (Yellow) Mag", "30Rnd_556x45_Stanag_Tracer_Yellow", 15],
	//["5.56mm 30Rnd Tracer (Red) Mag", "30Rnd_556x45_Stanag_Tracer_Red", 15],
	//["6.5mm 30Rnd STANAG Mag", "30Rnd_65x39_caseless_mag", 20],
	//["6.5mm 30Rnd Tracer (Red) Mag", "30Rnd_65x39_caseless_mag_Tracer", 15],
	//["6.5mm 30Rnd Caseless Mag", "30Rnd_65x39_caseless_green", 20],
	//["6.5mm 30Rnd Tracer (Green) Mag", "30Rnd_65x39_caseless_green_mag_Tracer", 15],
	//["6.5mm 100Rnd Belt Case", "100Rnd_65x39_caseless_mag", 75],
	//["6.5mm 100Rnd Tracer (Red) Belt Case", "100Rnd_65x39_caseless_mag_Tracer", 50],
	//["6.5mm 200Rnd Belt Case", "200Rnd_65x39_cased_Box", 150],
	//["6.5mm 200Rnd Tracer (Yellow) Belt Case", "200Rnd_65x39_cased_Box_Tracer", 125],
	//["7.62mm 10Rnd Mag", "10Rnd_762x51_Mag", 15],
	//["7.62mm 20Rnd Mag", "20Rnd_762x51_Mag", 25],
	//["7.62mm 150Rnd Box", "150Rnd_762x51_Box", 150],
	//["7.62mm 150Rnd Tracer (Green) Box", "150Rnd_762x51_Box_Tracer", 125],
	//[".408 7Rnd Cheetah Mag", "7Rnd_408_Mag", 50],
	//["12.7mm 5Rnd Mag", "5Rnd_127x108_Mag", 50],
	//["12.7mm 5Rnd Armor-Piercing Mag", "5Rnd_127x108_APDS_Mag", 60],
	//	["RPG-42 Anti-Tank Rocket", "RPG32_F", 250],              // Direct damage: high      | Splash damage: low    | Guidance: none
	//	["RPG-42 High-Explosive Rocket", "RPG32_HE_F", 250],      // Direct damage: medium    | Splash damage: medium | Guidance: none
	//	["PCML Anti-Tank Missile", "NLAW_F", 500],                // Direct damage: very high | Splash damage: low    | Guidance: laser, ground vehicles
	//	["Titan Anti-Tank Missile", "Titan_AT", 1000],             // Direct damage: high      | Splash damage: low    | Guidance: mouse, laser, ground vehicles
	//	["Titan Anti-Personnel Missile", "Titan_AP", 1000],        // Direct damage: low       | Splash damage: high   | Guidance: mouse, laser
	//	["Titan Anti-Air Missile", "Titan_AA", 1000],              // Direct damage: low       | Splash damage: medium | Guidance: aircraft
	["40mm HE Grenade Round", "1Rnd_HE_Grenade_shell", 125],
	["40mm 3Rnd HE Grenades", "3Rnd_HE_Grenade_shell", 250],
	["40mm Smoke Round (White)", "1Rnd_Smoke_Grenade_shell", 50],
	//["40mm Smoke Round (Purple)", "1Rnd_SmokePurple_Grenade_shell", 50],
	//["40mm Smoke Round (Blue)", "1Rnd_SmokeBlue_Grenade_shell", 50],
	//["40mm Smoke Round (Green)", "1Rnd_SmokeGreen_Grenade_shell", 50],
	//["40mm Smoke Round (Yellow)", "1Rnd_SmokeYellow_Grenade_shell", 50],
	//["40mm Smoke Round (Orange)", "1Rnd_SmokeOrange_Grenade_shell", 50],
	//["40mm Smoke Round (Red)", "1Rnd_SmokeRed_Grenade_shell", 50],
	["40mm 3Rnd Smokes (White)", "3Rnd_Smoke_Grenade_shell", 100],
	//["40mm 3Rnd Smokes (Purple)", "3Rnd_SmokePurple_Grenade_shell", 100],
	//["40mm 3Rnd Smokes (Blue)", "3Rnd_SmokeBlue_Grenade_shell", 100],
	//["40mm 3Rnd Smokes (Green)", "3Rnd_SmokeGreen_Grenade_shell", 100],
	//["40mm 3Rnd Smokes (Yellow)", "3Rnd_SmokeYellow_Grenade_shell", 100],
	//["40mm 3Rnd Smokes (Orange)", "3Rnd_SmokeOrange_Grenade_shell", 100],
	//["40mm 3Rnd Smokes (Red)", "3Rnd_SmokeRed_Grenade_shell", 100],
	["40mm Flare Round (White)", "UGL_FlareWhite_F", 25],
	//["40mm Flare Round (Green)", "UGL_FlareGreen_F", 25],
	//["40mm Flare Round (Yellow)", "UGL_FlareYellow_F", 25],
	["40mm Flare Round (Red)", "UGL_FlareRed_F", 25],
	["40mm Flare Round (IR)", "UGL_FlareCIR_F", 25],
	//["40mm 3Rnd Flares (White)", "3Rnd_UGL_FlareWhite_F", 50],
	//["40mm 3Rnd Flares (Green)", "3Rnd_UGL_FlareGreen_F", 50],
	//["40mm 3Rnd Flares (Yellow)", "3Rnd_UGL_FlareYellow_F", 50],
	["40mm 3Rnd Flares (Red)", "3Rnd_UGL_FlareRed_F", 50],
	["40mm 3Rnd Flares (IR)", "3Rnd_UGL_FlareCIR_F", 50]
];

//Gun Store item List
//Text name, classname, buy cost, item class
accessoriesArray = compileFinal str
[
	
	["TGPA (Suppressor)", "rhs_acc_tgpa", 50, "item"],
	["Suppressor M2010S", "rhsusf_acc_M2010S", 50, "item"],
//	["PBS4 Suppressor(5.45x39)", "hlc_muzzle_545SUP_AK", 50, "item"],
//	["PBS1 Suppressor(7.62x39)", "hlc_muzzle_762SUP_AK", 50, "item"],
	["FAL Suppressor", "hlc_muzzle_snds_fal", 50, "item"],
	["HK53/33 Suppressor)", "hlc_muzzle_snds_HK33", 50, "item"],
	["G3 Suppressor(PSG excluded)", "hlc_muzzle_snds_G3", 50, "item"],
	["M14 Suppressor", "hlc_muzzle_snds_M14", 50, "item"],
	["5.56MM NATO AR15 Suppressor", "hlc_muzzle_556NATO_KAC", 50, "item"],
	[".300 Blackout AR15 Suppressor", "hlc_muzzle_300blk_KAC", 50, "item"],
	["9x19mm Mp5s EXCEPT MP5k/MP5k-pdw", "hlc_muzzle_Agendasix", 50, "item"],
	["all 9x19mm Mp5s", "hlc_muzzle_Tundra", 50, "item"],
	["MP5/10", "hlc_muzzle_Agendasix10mm", 50, "item"],
	["AAC M4-2000 Steyr", "hlc_muzzle_snds_AUG", 50, "item"],
	["AWC Agenda Six Steyr 9mm", "hlc_muzzle_snds_a6AUG", 50, "item"],
	["1P29", "rhs_acc_1p29", 50, "item"],
	["1P63", "rhs_acc_1p63", 50, "item"],
	["1PN93-1 (Night vision)", "rhs_acc_1pn93_1", 50, "item"],
	["1PN93-2 (Night vision - RPG)", "rhs_acc_1pn93_2", 50, "item"],
	["EKP-1 Kobra", "rhs_acc_ekp1", 50, "item"],
	["PGO-7V (RPG optic)", "rhs_acc_pgo7v", 50, "item"],
	["PK-AS (Reflex)", "rhs_acc_pkas", 50, "item"],
	["PSO-1M2 (4x24 tele)", "rhs_acc_pso1m2", 50, "item"],
	["AN PEQ-15", "rhsusf_acc_anpeq15", 50, "item"],
	["AN PEQ-15A", "rhsusf_acc_anpeq15A", 50, "item"],
	["AN PEQ-15 M952V(Light)", "rhsusf_acc_anpeq15_light", 50, "item"],
	["EOtech XPS3", "rhsusf_acc_EOTECH", 50, "item"],
	["Leupold Mk4 (3.5-10x40mm)", "rhsusf_acc_LEUPOLDMK4", 50, "item"],
	["Leupold Mk4 (6.5-20x50mm)", "rhsusf_acc_LEUPOLDMK4_2", 50, "item"],
	["M145 MGO Elcan", "rhsusf_acc_ELCAN", 50, "item"],
	["M150 RCO ACOG", "rhsusf_acc_ACOG", 50, "item"],
	["M150 RCO ACOG (ARD)	", "rhsusf_acc_ACOG2", 50, "item"],
	["M150 RCO ACOG (ARD/Lens Cover)", "rhsusf_acc_ACOG3", 50, "item"],
	["M68 CCO Aimpoint M4", "rhsusf_acc_compm4", 50, "item"],

	["PSO1 Sniper Optic", "HLC_Optic_PSO1", 50, "item"],
	//?? ["1P29 Rifle Combat Optic", "HLC_Optic_1p29", 50, "item"],
	["Kobra Collimator Sight", "hlc_optic_kobra", 50, "item"],
	//?? ["Goshawk Thermal Sight", "hlc_optic_goshawk", 50, "item"],

	["AN/PVS4 Night Optic(FALs)", "hlc_optic_PVS4FAL", 50, "item"],
	["SUIT Optic (Trilux FALs)", "hlc_optic_suit", 50, "item"],
	["Zeiss Diavari 6x Optic", "HLC_Optic_ZFSG1", 50, "item"],
	["Accupoint TR20(G3)optic", "hlc_optic_accupoint_g3", 50, "item"],
	["Redfield AR-TEL Optic(3-9x)", "hlc_optic_artel_m14", 50, "item"],
	["Leupold LR/T (LRPS)", "hlc_optic_LRT_m14", 50, "item"],
	//["Suppressor 9mm", "muzzle_snds_L", 50, "item"],
	//["Suppressor .45 ACP", "muzzle_snds_acp", 75, "item"],
	//["Suppressor 5.56mm", "muzzle_snds_M", 100, "item"],
	//["Suppressor 6.5mm", "muzzle_snds_H", 100, "item"],
	//["Suppressor 6.5mm LMG", "muzzle_snds_H_MG", 125, "item"],
	//["Suppressor 7.62mm", "muzzle_snds_B", 125, "item"],
	["Flashlight", "acc_flashlight", 25, "item"],
	["IR Laser Pointer", "acc_pointer_IR", 25, "item"],
	//["Yorris Sight (Zubr Revolver)", "optic_Yorris", 50, "item"],
	//["MRD Sight (4-Five Pistol)", "optic_MRD", 50, "item"],
	//["ACO (CQB)", "optic_aco_smg", 50, "item"],
	//["Holosight (CQB)", "optic_Holosight_smg", 50, "item"],
	["ACO (Red)", "optic_Aco", 50, "item"],
	["ACO (Green)", "optic_Aco_grn", 50, "item"],
	["Holosight", "optic_Holosight", 50, "item"],
	["MRCO", "optic_MRCO", 50, "item"],
	["ARCO", "optic_Arco", 50, "item"],
	["RCO", "optic_Hamr", 50, "item"],
	["DMS", "optic_DMS", 50, "item"],
	["LRPS", "optic_LRPS", 50, "item"],
	["SOS", "optic_SOS", 50, "item"],
	["NVS", "optic_NVS", 50, "item"],
	["TWS", "optic_tws", 50, "item"],
	["TWS MG", "optic_tws_mg", 50, "item"],
	["Nightstalker", "optic_Nightstalker", 50, "item"]
];

// If commented, means the color/camo isn't implemented or is a duplicate of another hat
headArray = compileFinal str
[


//AFRF
//"6B27M Plain", "rhs_6b27m_green", 50, "hat"],
//"6B27M", "rhs_6b27m_green_ess", 50, "hat"],
//"6B27M", "rhs_6b27m_green_bala", 50, "hat"],
//"6B27M", "rhs_6b27m_green_ess_bala", 50, "hat"],
//"6B27M Flora", "rhs_6b27m", 50, "hat"],
//"6B27M", "rhs_6b27m_ess", 50, "hat"],
//"6B27M", "rhs_6b27m_bala", 50, "hat"],
//"6B27M", "rhs_6b27m_ess_bala", 50, "hat"],
//"6B27M EMR-Summer", "rhs_6b27m_digi", 50, "hat"],
//"6B27M", "rhs_6b27m_digi_bala", 50, "hat"],
//"6B27M Mountain", "rhs_6b27m_ml", 50, "hat"],
//"6B28, "rhs_6b28_green", 50, "hat"],
//"6B28", "rhs_6b28_green_ess", 50, "hat"],
//"6B28", "rhs_6b28_green_bala", 50, "hat"],
//"6B28", "rhs_6b28_green_ess_bala", 50, "hat"],
//"6B28 EMR-Summer", "rhs_6b28", 50, "hat"],
//"6B28", "rhs_6b28_ess", 50, "hat"],
//"6B28", "rhs_6b28_bala", 50, "hat"],
//"6B28", "rhs_6b28_ess_bala", 50, "hat"],
//"6B28 Flora", "rhs_6b28_flora", 50, "hat"],
//"6B28", "rhs_6b28_flora_ess", 50, "hat"],
//"6B28", "rhs_6b28_flora_bala", 50, "hat"],
//"6B28", "rhs_6b28_ess_bala", 50, "hat"],
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


//USAF
	["ACH", "rhsusf_ach_bare", 50, "hat"],
	["ACH", "rhsusf_ach_bare_ess", 50, "hat"],
	["ACH", "rhsusf_ach_bare_headset", 50, "hat"],
	["ACH", "rhsusf_ach_bare_headset_ess", 50, "hat"],
	["M81", "rhsusf_ach_helmet_m81", 50, "hat"],
	["Ops-Core", "rhsusf_opscore_02", 50, "hat"],
	["Ops-Core", "rhsusf_opscore_01", 50, "hat"],
	["Booniehat UCP", "rhs_Booniehat_ucp", 50, "hat"],
	["Booniehat OCP", "rhs_Booniehat_ocp", 50, "hat"],
	["Patrol Cap UCP", "rhsusf_patrolcap_ucp", 50, "hat"],
	["Patrol Cap OCP", "rhsusf_patrolcap_ocp", 50, "hat"],
	["Tank Helmet CVC", "rhsusf_cvc_green_helmet", 50, "hat"],
	["Tank Helmet CVC ESS", "rhsusf_cvc_green_ess", 50, "hat"],
	["Pilot HGU-56P", "H_PilotHelmetHeli_B", 50, "hat"],
	["Crew HGU-56P", "H_CrewHelmetHeli_B", 50, "hat"]


	//["ECH", "H_HelmetB", 50, "hat"],
	//["ECH (Ghillie)", "H_HelmetB_camo", 50, "hat"],
	//["ECH (Light)", "H_HelmetB_light", 50, "hat"],
	//["ECH (Spraypaint)", "H_HelmetB_paint", 50, "hat"],
	//["SF Helmet", "H_HelmetSpecB", 50, "hat"],
	//["SF Helmet (Black)", "H_HelmetSpecB_blk", 50, "hat"],
	//["SF Helmet (Light Paint)", "H_HelmetSpecB_paint1", 50, "hat"],
	//["SF Helmet (Dark Paint)", "H_HelmetSpecB_paint2", 50, "hat"],
	//["Combat Helmet (Black)", "H_HelmetB_plain_blk", 50, "hat"],
	//["Protector Helmet (Hex)", "H_HelmetO_ocamo", 50, "hat"],
	//["Protector Helmet (Urban)", "H_HelmetO_oucamo", 50, "hat"],
	//["Defender Helmet (Hex)", "H_HelmetLeaderO_ocamo", 50, "hat"],
	//["Defender Helmet (Urban)", "H_HelmetLeaderO_oucamo", 50, "hat"],
	// REMOVED ["Assassin Helmet (Hex)", "H_HelmetSpecO_ocamo", 50, "hat"],
	// REMOVED ["Assassin Helmet (Black)", "H_HelmetSpecO_blk", 50, "hat"],
	//["MICH", "H_HelmetIA", 50, "hat"],
	// REMOVED  ["MICH (Camo)", "H_HelmetIA_net", 50, "hat"],
	//  REMOVED ["MICH 2 (Camo)", "H_HelmetIA_camo", 50, "hat"],
	//["Heli Crew Helmet (NATO)", "H_CrewHelmetHeli_B", 50, "hat"],
	//["Heli Crew Helmet (CSAT)", "H_CrewHelmetHeli_O", 50, "hat"],
	//["Heli Crew Helmet (AAF)", "H_CrewHelmetHeli_I", 50, "hat"],
	//["Heli Pilot Helmet (NATO)", "H_PilotHelmetHeli_B", 50, "hat"],
	//["Heli Pilot Helmet (CSAT)", "H_PilotHelmetHeli_O", 50, "hat"],
	//["Heli Pilot Helmet (AAF)", "H_PilotHelmetHeli_I", 50, "hat"],
	//["Crew Helmet (NATO)", "H_HelmetCrew_B", 50, "hat"],
	//["Crew Helmet (CSAT)", "H_HelmetCrew_O", 50, "hat"],
	//["Crew Helmet (AAF)", "H_HelmetCrew_I", 50, "hat"],
	//["Pilot Helmet (NATO)", "H_PilotHelmetFighter_B", 50, "hat"],
	//["Pilot Helmet (CSAT)", "H_PilotHelmetFighter_O", 50, "hat"],
	//["Pilot Helmet (AAF)", "H_PilotHelmetFighter_I", 50, "hat"],
	//["Military Cap (Blue)", "H_MilCap_blue", 25, "hat"],
	//["Military Cap (Gray)", "H_MilCap_gry", 25, "hat"],
	//["Military Cap (Urban)", "H_MilCap_oucamo", 25, "hat"],
	//["Military Cap (Russia)", "H_MilCap_rucamo", 25, "hat"],
	//["Military Cap (MTP)", "H_MilCap_mcamo", 25, "hat"],
	//["Military Cap (Hex)", "H_MilCap_ocamo", 25, "hat"],
	//["Military Cap (AAF)", "H_MilCap_dgtl", 25, "hat"],
	//["Rangemaster Cap", "H_Cap_headphones", 25, "hat"],
	//["Bandanna (Coyote)", "H_Bandanna_cbr", 10, "hat"],
	//["Bandanna (Camo)", "H_Bandanna_camo", 10, "hat"],
	//["Bandanna (Gray)", "H_Bandanna_gry", 10, "hat"],
	//["Bandanna (Khaki)", "H_Bandanna_khk", 10, "hat"],
	//["Bandanna (MTP)", "H_Bandanna_mcamo", 10, "hat"],
	//["Bandanna (Sage)", "H_Bandanna_sgg", 10, "hat"],
	//["Bandanna (Surfer)", "H_Bandanna_surfer", 10, "hat"],
	// REMOVED  ["Bandanna Mask (Black)", "H_BandMask_blk", 10, "hat"],
	// REMOVED  ["Bandanna Mask (Demon)", "H_BandMask_demon", 10, "hat"],
	// REMOVED  ["Bandanna Mask (Khaki)", "H_BandMask_khk", 10, "hat"],
	// REMOVED  ["Bandanna Mask (Reaper)", "H_BandMask_reaper", 10, "hat"],
	//["Beanie (Black)", "H_Watchcap_blk", 10, "hat"],
	//["Beanie (Dark blue)", "H_Watchcap_sgg", 10, "hat"],
	//["Beanie (Dark brown)", "H_Watchcap_cbr", 10, "hat"],
	//["Beanie (Dark khaki)", "H_Watchcap_khk", 10, "hat"],
	//["Beanie (Dark green)", "H_Watchcap_camo", 10, "hat"],
	//["Beret (Black)", "H_Beret_blk", 10, "hat"],
	//["Beret (Colonel)", "H_Beret_Colonel", 10, "hat"],
	//["Beret (NATO)", "H_Beret_02", 10, "hat"],
	//R ["Beret (Green)", "H_Beret_grn", 10, "hat"],
	//R ["Beret (Police)", "H_Beret_blk_POLICE", 10, "hat"],
	//R ["Beret (Red)", "H_Beret_red", 10, "hat"],
	//R ["Beret (SAS)", "H_Beret_brn_SF", 10, "hat"],
	//R ["Beret (SF)", "H_Beret_grn_SF", 10, "hat"],
	//R ["Beret (RED)", "H_Beret_ocamo", 10, "hat"],
	//R ["Black Turban", "H_TurbanO_blk", 50, "hat"],
	//R ["Booniehat (Dirty)", "H_Booniehat_dirty", 10, "hat"],
	//R ["Booniehat (Green)", "H_Booniehat_grn", 10, "hat"],
	//R ["Booniehat (Khaki)", "H_Booniehat_indp", 10, "hat"],
	//["Booniehat (Khaki)", "H_Booniehat_khk", 10, "hat"],
	//["Booniehat (Tan)", "H_Booniehat_tan", 10, "hat"],
	//["Booniehat (MTP)", "H_Booniehat_mcamo", 10, "hat"],
	//["Booniehat (Digi)", "H_Booniehat_dgtl", 10, "hat"],
	//R["Fedora (Blue)", "H_Hat_blue", 10, "hat"],
	//R["Fedora (Brown)", "H_Hat_brown", 10, "hat"],
	//R["Fedora (Camo)", "H_Hat_camo", 10, "hat"],
	//R["Fedora (Checker)", "H_Hat_checker", 10, "hat"],
	//R["Fedora (Gray)", "H_Hat_grey", 10, "hat"],
	//R["Fedora (Tan)", "H_Hat_tan", 10, "hat"],
	//R["Cap (Black)", "H_Cap_blk", 10, "hat"],
	//R["Cap (Blue)", "H_Cap_blu", 10, "hat"],
	//R["Cap (Green)", "H_Cap_grn", 10, "hat"],
	//R["Cap (Olive)", "H_Cap_oli", 10, "hat"],
	//R["Cap (Red)", "H_Cap_red", 10, "hat"],
	//R["Cap (Tan)", "H_Cap_tan", 10, "hat"],
	//R["Cap (BI)", "H_Cap_grn_BI", 10, "hat"],
	//R["Cap (CMMG)", "H_Cap_blk_CMMG", 10, "hat"],
	//R["Cap (ION)", "H_Cap_blk_ION", 10, "hat"],
	//R["Cap (Raven Security)", "H_Cap_blk_Raven", 10, "hat"],
	//R["Cap (SAS)", "H_Cap_khaki_specops_UK", 10, "hat"],
	//R["Cap (SF)", "H_Cap_tan_specops_US", 10, "hat"],
	//R["Cap (SPECOPS)", "H_Cap_brn_SPECOPS", 10, "hat"],
	//["Shemag (White)", "H_ShemagOpen_khk", 25, "hat"],
	//["Shemag (Brown)", "H_ShemagOpen_tan", 25, "hat"],
	//["Shemag mask (Khaki)", "H_Shemag_khk", 25, "hat"],
	//["Shemag mask (Olive)", "H_Shemag_olive", 25, "hat"]
	//R["Shemag mask (Tan)", "H_Shemag_tan", 25, "hat"],
	//R["Racing Helmet (Black)", "H_RacingHelmet_1_black_F", 25, "hat"],
	//R["Racing Helmet (Blue)", "H_RacingHelmet_1_blue_F", 25, "hat"],
	//R["Racing Helmet (Green)", "H_RacingHelmet_1_green_F", 25, "hat"],
	//R["Racing Helmet (Yellow)", "H_RacingHelmet_1_yellow_F", 25, "hat"],
	//R["Racing Helmet (Orange)", "H_RacingHelmet_1_orange_F", 25, "hat"],
	//R["Racing Helmet (Red)", "H_RacingHelmet_1_red_F", 25, "hat"],
	//R["Racing Helmet (White)", "H_RacingHelmet_1_white_F", 25, "hat"],
	//R["Racing Helmet (Fuel)", "H_RacingHelmet_1_F", 25, "hat"],
	//R["Racing Helmet (Bluking)", "H_RacingHelmet_2_F", 25, "hat"],
	//R["Racing Helmet (Redstone)", "H_RacingHelmet_3_F", 25, "hat"],
	//R["Racing Helmet (Vrana)", "H_RacingHelmet_4_F", 25, "hat"]
];

uniformArray = compileFinal str
[


//AFRF
//	["AFRF Flora", "rhs_uniform_flora", 300, "uni"],
//	["AFRF Flora", "rhs_uniform_vdv_flora", 300, "uni"],
//	["AFRF Flora", "rhs_uniform_flora_patchless", 300, "uni"],
	["AFRF Mountain", "rhs_uniform_vdv_mflora", 300, "uni"],
//	["AFRF Mountain", "rhs_uniform_mflora_patchless", 300, "uni"],
//	["AFRF EMR-Summer", "rhs_uniform_msv_emr", 300, "uni"],
	["AFRF EMR-Summer", "rhs_uniform_vdv_emr", 300, "uni"],
//	["AFRF EMR-Summer", "rhs_uniform_emr_patchless", 300, "uni"],
	["AFRF Pilot", "rhs_uniform_df15", 300, "uni"],

//USAF
	["USAF UCP", "rhs_uniform_cu_ucp", 300, "uni"],
	["USAF UCP patchless", "rhs_uniform_cu_ocp_patchless", 300, "uni"],
	["USAF OCP", "rhs_uniform_cu_ucp", 300, "uni"],
	["USAF OCP patchless", "rhs_uniform_cu_ucp_patchless", 300, "uni"]



/*
	["Ghillie Suit (NATO)", "U_B_GhillieSuit", 300, "uni"],
	["Ghillie Suit (CSAT)", "U_O_GhillieSuit", 300, "uni"],
	["Ghillie Suit (AAF)", "U_I_GhillieSuit", 300, "uni"],
	["Wetsuit (NATO)", "U_B_Wetsuit", 200, "uni"],
	["Wetsuit (CSAT)", "U_O_Wetsuit", 200, "uni"],
	["Wetsuit (AAF)", "U_I_Wetsuit", 200, "uni"],
	["Default Uniform (NATO)", "U_B_CombatUniform_mcam", 50, "uni"],
	["Default Uniform (CSAT)", "U_O_CombatUniform_ocamo", 50, "uni"],
	["Default Uniform (AAF)", "U_I_CombatUniform", 50, "uni"],
	["Combat Fatigues (MTP) (Tee)", "U_B_CombatUniform_mcam_tshirt", 50, "uni"],
	["Recon Fatigues (MTP)", "U_B_CombatUniform_mcam_vest", 50, "uni"],
	["Recon Fatigues (Sage)", "U_B_SpecopsUniform_sgg", 50, "uni"],
	["CTRG Combat Uniform (UBACS)", "U_B_CTRG_1", 50, "uni"],
	["CTRG Combat Uniform (UBACS2)", "U_B_CTRG_2", 50, "uni"],
	["CTRG Combat Uniform (Tee)", "U_B_CTRG_3", 50, "uni"],
	["Recon Fatigues (Hex)", "U_O_SpecopsUniform_ocamo", 50, "uni"],
	["Fatigues (Urban)", "U_O_CombatUniform_oucamo", 50, "uni"],
	["Combat Fatigues Short (Digi)", "U_I_CombatUniform_shortsleeve", 50, "uni"],
	["Combat Fatigues Shirt (Digi)", "U_I_CombatUniform_tshirt", 50, "uni"],
	["Officer Fatigues (Hex)", "U_O_OfficerUniform_ocamo", 50, "uni"],
	["Officer Fatigues (Digi)", "U_I_OfficerUniform", 50, "uni"],
	["Pilot Coveralls (NATO)", "U_B_PilotCoveralls", 50, "uni"],
	["Pilot Coveralls (CSAT)", "U_O_PilotCoveralls", 50, "uni"],
	["Pilot Coveralls (AAF)", "U_I_pilotCoveralls", 50, "uni"],
	["Heli Pilot Coveralls (NATO)", "U_B_HeliPilotCoveralls", 50, "uni"],
	["Heli Pilot Coveralls (AAF)", "U_I_HeliPilotCoveralls", 50, "uni"],
	["Guerilla Smocks 1", "U_BG_Guerilla1_1", 25, "uni"], // BLUFOR
	["Guerilla Smocks 2", "U_BG_Guerilla2_1", 25, "uni"],
	["Guerilla Smocks 3", "U_BG_Guerilla2_2", 25, "uni"],
	["Guerilla Smocks 4", "U_BG_Guerilla2_3", 25, "uni"],
	["Guerilla Smocks 5", "U_BG_Guerilla3_1", 25, "uni"],
	["Guerilla Smocks 6", "U_BG_Guerilla3_2", 25, "uni"],
	["Guerilla Smocks 7", "U_BG_leader", 25, "uni"],
	["Guerilla Smocks 1", "U_OG_Guerilla1_1", 25, "uni"], // OPFOR
	["Guerilla Smocks 2", "U_OG_Guerilla2_1", 25, "uni"],
	["Guerilla Smocks 3", "U_OG_Guerilla2_2", 25, "uni"],
	["Guerilla Smocks 4", "U_OG_Guerilla2_3", 25, "uni"],
	["Guerilla Smocks 5", "U_OG_Guerilla3_1", 25, "uni"],
	["Guerilla Smocks 6", "U_OG_Guerilla3_2", 25, "uni"],
	["Guerilla Smocks 7", "U_OG_leader", 25, "uni"],
	["Guerilla Smocks 1", "U_IG_Guerilla1_1", 25, "uni"], // Independent
	["Guerilla Smocks 2", "U_IG_Guerilla2_1", 25, "uni"],
	["Guerilla Smocks 3", "U_IG_Guerilla2_2", 25, "uni"],
	["Guerilla Smocks 4", "U_IG_Guerilla2_3", 25, "uni"],
	["Guerilla Smocks 5", "U_IG_Guerilla3_1", 25, "uni"],
	["Guerilla Smocks 6", "U_IG_Guerilla3_2", 25, "uni"],
	["Guerilla Smocks 7", "U_IG_leader", 25, "uni"]
*/
	//["Worker Coveralls", "U_C_WorkerCoveralls", 25, "uni"], // can only be worn by civilian units
	//["T-Shirt (Blue)", "U_C_Poor_1", 25, "uni"],
	//["Polo (Red/white)", "U_C_Poloshirt_redwhite", 25, "uni"],
	//["Polo (Salmon)", "U_C_Poloshirt_salmon", 25, "uni"],
	//["Polo (Tri-color)", "U_C_Poloshirt_tricolour", 25, "uni"],
	//["Polo (Navy)", "U_C_Poloshirt_blue", 25, "uni"],
	//["Polo (Burgundy)", "U_C_Poloshirt_burgundy", 25, "uni"],
	//["Polo (Blue/green)", "U_C_Poloshirt_stripped", 25, "uni"],
	//["Polo (Competitor)", "U_Competitor", 25, "uni"],
	//["Polo (Rangemaster)", "U_Rangemaster", 25, "uni"],
	//["Racing Suit (Black)", "U_C_Driver_1_black", 25, "uni"], // can only be worn by civilian units
	//["Racing Suit (Blue)", "U_C_Driver_1_blue", 25, "uni"],
	//["Racing Suit (Green)", "U_C_Driver_1_green", 25, "uni"],
	//["Racing Suit (Yellow)", "U_C_Driver_1_yellow", 25, "uni"],
	//["Racing Suit (Orange)", "U_C_Driver_1_orange", 25, "uni"],
	//["Racing Suit (Red)", "U_C_Driver_1_red", 25, "uni"],
	//["Racing Suit (White)", "U_C_Driver_1_white", 25, "uni"],
	//["Racing Suit (Fuel)", "U_C_Driver_1", 25, "uni"],
	//["Racing Suit (Bluking)", "U_C_Driver_2", 25, "uni"],
	//["Racing Suit (Redstone)", "U_C_Driver_3", 25, "uni"],
	//["Racing Suit (Vrana)", "U_C_Driver_4", 25, "uni"],*/
	//["Tron Light Suit (Blue)", "U_B_Protagonist_VR", 5000, "uni"],
	//["Tron Light Suit (Red)", "U_O_Protagonist_VR", 5000, "uni"],
	//["Tron Light Suit (Green)", "U_I_Protagonist_VR", 5000, "uni"]
];

vestArray = compileFinal str
[


//AFRF
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
	["Mountain Sniper", "	rhs_6b23_ML_sniper", 200, "vest"],
	["Mountain 6Sh-92", "	rhs_6b23_ML_6sh92", 200, "vest"],
	["Mountain 6Sh-92 Radio", "rhs_6b23_ML_6sh92_radio", 200, "vest"],
	["Mountain 6Sh-92 Vog", "rhs_6b23_ML_6sh92_vog", 200, "vest"],
	["Mountain 6Sh-92 Vog headset", "rhs_6b23_ML_6sh92_vog_headset", 200, "vest"],
	["Mountain 6Sh-92 headset", "rhs_6b23_ML_6sh92_headset", 200, "vest"],
	["Mountain 6Sh-92 headset map", "rhs_6b23_ML_6sh92_headset_mapcase", 200, "vest"],
	["6Sh46", "rhs_6sh46", 200, "vest"],
	["Holster and map", "rhs_vest_commander", 200, "vest"],
	["Vydra 3M", "rhs_vydra_3m", 200, "vest"],

//USAF
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
	["IOTV OCP Team Leader", "rhsusf_iotv_ocp_teamleader", 200, "vest"]




/*
	["Rebreather (NATO)", "V_RebreatherB", 200, "vest"],
	["Rebreather (CSAT)", "V_RebreatherIR", 200, "vest"],
	["Rebreather (AAF)", "V_RebreatherIA", 200, "vest"],
	["Carrier Lite (Green)", "V_PlateCarrier1_rgr", -1, "vest"],
	["Carrier Lite (Black)", "V_PlateCarrier1_blk", -1, "vest"],
	["Carrier Rig (Green)", "V_PlateCarrier3_rgr", -1, "vest"],
	["Carrier GL Rig (Green)", "V_PlateCarrierGL_rgr", -1, "vest"],
	["CTRG Plate Carrier Rig Mk.1 (Light)", "V_PlateCarrierL_CTRG", -1, "vest"],
	["CTRG Plate Carrier Rig Mk.2 (Heavy)", "V_PlateCarrierH_CTRG", -1, "vest"],
	["GA Carrier Lite (Digi)", "V_PlateCarrierIA1_dgtl", -1, "vest"],
	["GA Carrier Rig (Digi)", "V_PlateCarrierIA2_dgtl", -1, "vest"],
	["GA Carrier GL Rig (Digi)", "V_PlateCarrierIAGL_dgtl", -1, "vest"],
	["LBV Harness", "V_HarnessO_brn", -1, "vest"],
	["LBV Harness (Gray)", "V_HarnessO_gry", -1, "vest"],
	["LBV Grenadier Harness", "V_HarnessOGL_brn", -1, "vest"],
	["LBV Grenadier Harness (Gray)", "V_HarnessOGL_gry", -1, "vest"],
	["ELBV Harness", "V_HarnessOSpec_brn", -1, "vest"],
	["ELBV Harness (Gray)", "V_HarnessOSpec_gry", -1, "vest"],
	["Slash Bandolier (Black)", "V_BandollierB_blk", -1, "vest"],
	["Slash Bandolier (Coyote)", "V_BandollierB_cbr", -1, "vest"],
	["Slash Bandolier (Green)", "V_BandollierB_rgr", -1, "vest"],
	["Slash Bandolier (Khaki)", "V_BandollierB_khk", -1, "vest"],
	["Slash Bandolier (Olive)", "V_BandollierB_oli", -1, "vest"],
	["Chest Rig (Khaki)", "V_Chestrig_khk", -1, "vest"],
	["Chest Rig (Green)", "V_Chestrig_rgr", -1, "vest"],
	["Fighter Chestrig (Black)", "V_Chestrig_blk", -1, "vest"],
	["Fighter Chestrig (Olive)", "V_Chestrig_oli", -1, "vest"],
	["Tactical Vest (Black)", "V_TacVest_blk", -1, "vest"],
	["Tactical Vest (Brown)", "V_TacVest_brn", -1, "vest"],
	["Tactical Vest (Camo)", "V_TacVest_camo", -1, "vest"],
	["Tactical Vest (Khaki)", "V_TacVest_khk", -1, "vest"],
	["Tactical Vest (Olive)", "V_TacVest_oli", -1, "vest"],
	["Raven Night Vest", "V_TacVestIR_blk", -1, "vest"]
*/
];

backpackArray = compileFinal str
[

//AFRF
	["Assault UMBTS", "rhs_assault_umbts", 150, "backpack"],
	["Assault UMBTS Engineer", "rhs_assault_umbts_engineer", 150, "backpack"],
	["Assault UMBTS Medic", "rhs_assault_umbts_medic", 150, "backpack"],
	["Assault UMBTS Demo", "rhs_assault_umbts_demo", 150, "backpack"],
	["Sidor", "rhs_sidor", 150, "backpack"],
	["Sidor MG", "rhs_sidorMG", 150, "backpack"],
	["RPG Carrier", "rhs_rpg", 150, "backpack"],

//USAF
	["Falcon-II", "rhsusf_falconii", 150, "backpack"],
	["Eagle A-III UCP", "rhsusf_assault_eagleaiii_ucp", 150, "backpack"],
	["Eagle A-III OCP", "rhsusf_assault_eagleaiii_ocp", 150, "backpack"],
	["Eagle A-III Engineer", "rhsusf_assault_eagleaiii_ocp_engineer", 150, "backpack"],
	["Eagle A-III Medic", "rhsusf_assault_eagleaiii_ocp_medic", 150, "backpack"],
	["Eagle A-III Demo", "rhsusf_assault_eagleaiii_ocp_demo", 150, "backpack"]


	//r["Parachute", "B_Parachute", 200, "backpack"],
/*
	["Assault Pack (Black)", "B_AssaultPack_blk", 150, "backpack"],
	["Assault Pack (Green)", "B_AssaultPack_rgr", 150, "backpack"],
	["Assault Pack (MTP)", "B_AssaultPack_mcamo", 150, "backpack"],
	["Assault Pack (Hex)", "B_AssaultPack_ocamo", 150, "backpack"],
	["Field Pack (Black)", "B_FieldPack_blk", 200, "backpack"],
	["Field Pack (Coyote)", "B_FieldPack_cbr", 200, "backpack"],
	["Field Pack (Khaki)", "B_FieldPack_khk", 200, "backpack"],
	["Field Pack (Urban)", "B_FieldPack_oucamo", 200, "backpack"],
	["Kitbag (Coyote)", "B_Kitbag_cbr", 350, "backpack"],
	["Kitbag (Green)", "B_Kitbag_rgr", 350, "backpack"],
	["Kitbag (MTP)", "B_Kitbag_mcamo", 350, "backpack"],
	["Kitbag (Sage)", "B_Kitbag_sgg", 350, "backpack"],
	["Bergen (Black)", "B_Bergen_blk", 350, "backpack"],
	["Bergen (Green)", "B_Bergen_rgr", 350, "backpack"],
	["Bergen (MTP)", "B_Bergen_mcamo", 350, "backpack"],
	["Bergen (Sage)", "B_Bergen_sgg", 350, "backpack"],
	["Carryall (Khaki)", "B_Carryall_khk", 500, "backpack"],
	["Carryall (MTP)", "B_Carryall_mcamo", 500, "backpack"],
	["Carryall (Olive)", "B_Carryall_oli", 500, "backpack"],
	["Carryall (Urban)", "B_Carryall_oucamo", 500, "backpack"]
*/
];

genItemArray = compileFinal str
[
	//["Quadrotor UAV (NATO)", "B_UAV_01_backpack_F", 5000, "backpack"],
	//["Quadrotor UAV (CSAT)", "O_UAV_01_backpack_F", 5000, "backpack"],
	//["Quadrotor UAV (AAF)", "I_UAV_01_backpack_F", 5000, "backpack"],
	//["UAV Terminal (NATO)", "B_UavTerminal", 150, "gps"],
	//["UAV Terminal (CSAT)", "O_UavTerminal", 150, "gps"],
	//["UAV Terminal (AAF)", "I_UavTerminal", 150, "gps"],
	["GPS", "ItemGPS", 100, "gps"],
	["First Aid Kit", "FirstAidKit", 25, "item"],
	["Medikit", "Medikit", 150, "item"],
	["Toolkit", "ToolKit", 150, "item"],
	["Mine Detector", "MineDetector", 100, "item"],
	["NV Goggles", "NVGoggles", 100, "nvg"],
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
	["Bag Bunker Tower", "Land_BagBunker_Tower_F", 1000, "object"],
	["Military Cargo Post", "Land_Cargo_Patrol_V1_F", 800, "object"],
	["Military Cargo Tower", "Land_Cargo_Tower_V1_F", 10000, "object"],
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


//AFRF
	["Kamaz-63968 VDV", "rhs_typhoon_vdv", 600, "vehicle"],

	//======== in for testing (maybe radar placement)=========
	["Kung Truck Shelter", "rhs_typhoon_vdv", 600, "vehicle"],
	["P-37 Radar", "rhs_p37", 600, "vehicle"],
	["PRV-13 Radar", "rhs_prv13", 600, "vehicle"],
	//=============================================================

	["UAZ-469", "rhs_uaz_XX", 600, "vehicle"],
	["URAL-4320", "rhs_ural_XX", 600, "vehicle"],
	["URAL-4320 (Open)", "rhs_ural_open_XX", 600, "vehicle"],  
	["URAL-4320 (Fuel)", "RHS_Ural_Fuel_XX_01", 600, "vehicle"],


//USAF
	["M1083A1P2 Wood", "rhsusf_M1083A1P2_wd_fmtv_usarmy", 600, "vehicle"],
	["M1083A1P2 Desert", "rhsusf_M1083A1P2_d_fmtv_usarmy", 600, "vehicle"],
	["M1083A1P2-B Wood", "rhsusf_M1083A1P2_B_wd_fmtv_usarmy", 600, "vehicle"],
	["M1083A1P2-B Desert", "rhsusf_M1083A1P2_B_d_fmtv_usarmy", 600, "vehicle"],
	["M109A6 Paladin Wood", "rhsusf_m109_usarmy", 600, "vehicle"],
	["M109A6 Paladin Desert", "rhsusf_m109d_usarmy", 600, "vehicle"],

	["M113A3 Wood", "rhsusf_m113_usarmy", 600, "vehicle"],
	["M113A3 Desert", "rhsusf_m113d_usarmy", 600, "vehicle"],

	["M1A1AIM Wood", "rhsusf_m1a1aimwd_usarmy", 600, "vehicle"],
	["M1A1AIM Desert", "rhsusf_m1a1aimd_usarmy", 600, "vehicle"],
	["M1A1AIM TUSK I Wood", "rhsusf_m1a1aim_tuski_wd", 600, "vehicle"],
	["M1A1AIM TUSK I Desert", "rhsusf_m1a1aim_tuski_d", 600, "vehicle"],
	["M1A1FEP Wood", "rhsusf_m1a1fep_wd", 600, "vehicle"],
	["M1A1FEP Desert", "rhsusf_m1a1fep_d", 600, "vehicle"],

	["M1A2SEPv1 Wood", "rhsusf_m1a2sep1wd_usarmy", 600, "vehicle"],
	["M1A2SEPv1 Desert", "rhsusf_m1a2sep1d_usarmy", 600, "vehicle"],
	["M1A2SEPv1 (Tusk I) Wood", "rhsusf_m1a2sep1tuskiwd_usarmy", 600, "vehicle"],
	["M1A2SEPv1 (Tusk I) Desert", "rhsusf_m1a2sep1tuskid_usarmy", 600, "vehicle"],





/*
	["Kart", "C_Kart_01_F", 500, "vehicle"],
	["Quadbike (Civilian)", "C_Quadbike_01_F", 600, "vehicle"],
	["Quadbike (NATO)", "B_Quadbike_01_F", 650, "vehicle"],
	["Quadbike (CSAT)", "O_Quadbike_01_F", 650, "vehicle"],
	["Quadbike (AAF)", "I_Quadbike_01_F", 650, "vehicle"],
	["Quadbike (FIA)", "B_G_Quadbike_01_F", 650, "vehicle"],
	["Hatchback", "C_Hatchback_01_F", 800, "vehicle"],
	["Hatchback Sport", "C_Hatchback_01_sport_F", 1000, "vehicle"],
	["SUV", "C_SUV_01_F", 1100, "vehicle"],
	["Offroad", "C_Offroad_01_F", 1100, "vehicle"],
	["Offroad Camo", "B_G_Offroad_01_F", 1250, "vehicle"],
	["Offroad Repair", "C_Offroad_01_repair_F", 1500, "vehicle"],
	["Offroad HMG", "B_G_Offroad_01_armed_F", 2500, "vehicle"],
	["Truck", "C_Van_01_transport_F", 700, "vehicle"],
	["Truck (Camo)", "B_G_Van_01_transport_F", 800, "vehicle"],
	["Truck Box", "C_Van_01_box_F", 900, "vehicle"],
	["Fuel Truck", "C_Van_01_fuel_F", 2000, "vehicle"],
	["Fuel Truck (Camo)", "B_G_Van_01_fuel_F", 2100, "vehicle"],
	["HEMTT Tractor", "B_Truck_01_mover_F", 4000, "vehicle"],
	["HEMTT Box", "B_Truck_01_box_F", 5000, "vehicle"],
	["HEMTT Transport", "B_Truck_01_transport_F", 6000, "vehicle"],
	["HEMTT Covered", "B_Truck_01_covered_F", 7500, "vehicle"],
	["HEMTT Fuel", "B_Truck_01_fuel_F", 9000, "vehicle"],
	["HEMTT Medical", "B_Truck_01_medical_F", 10000, "vehicle"],
	["HEMTT Repair", "B_Truck_01_Repair_F", 12500, "vehicle"],
	//r ["HEMTT Ammo", "B_Truck_01_ammo_F", 27500, "vehicle"],
	//r ["Service Truck", "O_Truck_03_device_F", 5000, "vehicle"],
	["Tempest Transport", "O_Truck_03_transport_F", 6000, "vehicle"],
	["Tempest Covered", "O_Truck_03_covered_F", 7500, "vehicle"],
	["Tempest Fuel", "O_Truck_03_fuel_F", 9000, "vehicle"],
	["Tempest Medical", "O_Truck_03_medical_F", 10000, "vehicle"],
	["Tempest Repair", "O_Truck_03_repair_F", 12500, "vehicle"],
	//r ["Tempest Ammo", "O_Truck_03_ammo_F", 27500, "vehicle"],

	["Zamak Transport", "I_Truck_02_transport_F", 4000, "vehicle"],
	["Zamak Covered", "I_Truck_02_covered_F", 5000, "vehicle"],
	["Zamak Fuel", "I_Truck_02_fuel_F", 7500, "vehicle"],
	["Zamak Medical", "I_Truck_02_medical_F", 9000, "vehicle"],
	["Zamak Repair", "I_Truck_02_box_F", 10000, "vehicle"],
	//r ["Zamak Ammo", "I_Truck_02_ammo_F", 25000, "vehicle"],

	["UGV Stomper (NATO)", "B_UGV_01_F", 25000, "vehicle"],
	["UGV Stomper RCWS (NATO)", "B_UGV_01_rcws_F", 45000, "vehicle"],
	["UGV Stomper (AAF)", "I_UGV_01_F", 25000, "vehicle"],
	["UGV Stomper RCWS (AAF)", "I_UGV_01_rcws_F", 45000, "vehicle"],
	["UGV Saif (CSAT)", "O_UGV_01_F", 25000, "vehicle"],
	["UGV Saif RCWS (CSAT)", "O_UGV_01_rcws_F", 45000, "vehicle"]
*/

];

armoredArray = compileFinal str
[


//AFRF
	["BM-21 122mm RL MSV", "RHS_BM21_MSV_01", 400, "vehicle"],
	["BM-21 122mm RL VDV", "RHS_BM21_VDV_01", 400, "vehicle"],
	["BM-21 122mm RL VMF", "RHS_BM21_VMF_01", 400, "vehicle"],
	["BM-21 122mm RL VV", "RHS_BM21_VV_01", 400, "vehicle"],
	["BMD-1 Combat", "rhs_bmd1", 400, "vehicle"],
	["BMD-1k Command", "rhs_bmd1k", 400, "vehicle"],
	["BMD-1p Combat", "rhs_bmd1p", 400, "vehicle"],
	["BMD-1pk Command", "rhs_bmd1pk", 400, "vehicle"],
	["BMD-1R Rocket", "rhs_bmd1r", 400, "vehicle"],
	["BMD-2", "rhs_bmd2", 400, "vehicle"],
	["BMD-2K Command", "rhs_bmd2k", 400, "vehicle"],
	["BMD-2M Modern", "rhs_bmd2m", 400, "vehicle"],
	["BDM-4", "rhs_bmd4_vdv", 400, "vehicle"],
	["BDM-4M", "rhs_bmd4m_vdv", 400, "vehicle"],
	["BDM-4M(A)", "rhs_bmd4ma_vdv", 400, "vehicle"],
	["BMP-1", "rhs_bmp1_XX", 400, "vehicle"],
	["BMP-1P Improved", "rhs_bmp1p_XX", 400, "vehicle"],
	["BMP-1K Command", "rhs_bmp1k_XX", 400, "vehicle"],
	["BMP-1D UpArmoured", "", 400, "vehicle"],
	["BMP-2 (E)	 Export", "rhs_bmp2e_XX", 400, "vehicle"],
	["BMP-2", "rhs_bmp2_XX", 400, "vehicle"],
	["BMP-2K Command", "rhs_bmp2k_XX", 400, "vehicle"],
	["BMP-2D UpArmoured", "rhs_bmp2d_XX", 400, "vehicle"],
	
	//Marked as W.I.P -uncomment to test
	//["BMP-3", "rhs_bmp3_msv", 400, "vehicle"],
	//["BMP-3M", "rhs_bmp3m_msv", 400, "vehicle"],
	//["BMP-3M (A)", "rhs_bmp3mera_msv", 400, "vehicle"],

	["BRM-1K MSV", "rhs_brm1k_msv", 400, "vehicle"],
	["BRM-1K TV", "rhs_brm1k_tv", 400, "vehicle"],
	["BRM-1K VDV", "rhs_brm1k_vdv", 400, "vehicle"],
	["BRM-1K VV", "rhs_brm1k_vv", 400, "vehicle"],
	["BTR-60 APC MSV", "rhs_btr60_msv", 400, "vehicle"],
	["BTR-60 APC VDV", "rhs_btr60_vdv", 400, "vehicle"],
	["BTR-60 APC VMF", "rhs_btr60_vmf", 400, "vehicle"],
	["BTR-60 APC VV", "rhs_btr60_vv", 400, "vehicle"],
	["BTR-70 APC MSV", "rhs_btr70_msv", 400, "vehicle"],
	["BTR-70 APC VDV", "rhs_btr70_vdv", 400, "vehicle"],
	["BTR-70 APC VMF", "rhs_btr70_vmf", 400, "vehicle"],
	["BTR-70 APC VV", "rhs_btr70_vv", 400, "vehicle"],
	["BTR-80 APC MSV", "rhs_btr80_msv", 400, "vehicle"],
	["BTR-80 APC VDV", "rhs_btr80_vdv", 400, "vehicle"],
	["BTR-80 APC VMF", "rhs_btr80_vmf", 400, "vehicle"],
	["BTR-80 APC VV", "rhs_btr80_vv", 400, "vehicle"],
	["BTR-80A APC MSV", "rhs_btr80a_msv", 400, "vehicle"],
	["BTR-80A APC VDV", "rhs_btr80a_vdv", 400, "vehicle"],
	["BTR-80A APC VMF", "rhs_btr80a_vmf", 400, "vehicle"],
	["BTR-80A APC VV", "rhs_btr80a_vv", 400, "vehicle"],
	["GAZ-233011 Tigr MSV", "rhs_tigr_msv", 400, "vehicle"],
	["GAZ-233011 Tigr VDV", "rhs_tigr_vdv", 400, "vehicle"],
	["GAZ-233011 Tigr VMF", "rhs_tigr_vmf", 400, "vehicle"],
	["GAZ-233011 Tigr VV", "rhs_tigr_vv", 400, "vehicle"],
	["GAZ-66 MSV", "rhs_gaz66_msv", 400, "vehicle"],
	["GAZ-66 VDV", "rhs_gaz66_vdv", 400, "vehicle"],
	["GAZ-66 VMF", "rhs_gaz66_vmf", 400, "vehicle"],
	["GAZ-66 VV", "rhs_gaz66_vv", 400, "vehicle"],
	["GAZ-66 (Open) MSV", "rhs_gaz66o_msv", 400, "vehicle"],
	["GAZ-66 (Open) VDV", "rhs_gaz66o_vdv", 400, "vehicle"],
	["GAZ-66 (Open) VMF", "rhs_gaz66o_vmf", 400, "vehicle"],
	["GAZ-66 (Open) VV", "rhs_gaz66o_vv", 400, "vehicle"],
	["GAZ-66 (R-142N) MSV", "rhs_gaz66_r142_msv", 400, "vehicle"],
	["GAZ-66 (R-142N) VDV", "rhs_gaz66_r142_vdv", 400, "vehicle"],
	["GAZ-66 (R-142N) VMF", "rhs_gaz66_r142_vmf", 400, "vehicle"],
	["GAZ-66 (R-142N) VV", "rhs_gaz66_r142_vv", 400, "vehicle"],
	["GAZ-66 (AP-2) MSV", "rhs_gaz66_ap2_msv", 400, "vehicle"],
	["GAZ-66 (AP-2) VDV", "rhs_gaz66_ap2_vdv", 400, "vehicle"],
	["GAZ-66 (AP-2) VMF", "rhs_gaz66_ap2_vmf", 400, "vehicle"],
	["GAZ-66 (AP-2) VV", "rhs_gaz66_ap2_vv", 400, "vehicle"],
	["GAZ-66 (ESB-8IM) MSV", "rhs_gaz66_repair_msv", 400, "vehicle"],
	["GAZ-66 (ESB-8IM) VDV", "rhs_gaz66_repair_vdv", 400, "vehicle"],
	["GAZ-66 (ESB-8IM) VMF", "rhs_gaz66_repair_vmf", 400, "vehicle"],
	["GAZ-66 (ESB-8IM) VV", "rhs_gaz66_repair_vv", 400, "vehicle"],
	["PRP-3 MSV", "rhs_prp3_msv", 400, "vehicle"],
	["PRP-3 TV", "rhs_prp3_tv", 400, "vehicle"],
	["PRP-3 VDV", "rhs_prp3_vdv", 400, "vehicle"],
	["PRP-3 VV", "rhs_prp3_vv", 400, "vehicle"],
	["ZSU-23-4 (TV)", "rhs_zsu234_aa", 400, "vehicle"],


//USAF

	["M1025 (Unarmed) Wood", "rhsusf_m1025_w", 400, "vehicle"],
	["M1025 (Unarmed) Desert", "rhsusf_m1025_d", 400, "vehicle"],
	["M1025 (Unarmed/Snorkel)W", "rhsusf_m1025_w_s", 400, "vehicle"],
	//["M1025 (Unarmed/Snorkel)D", "rhsusf_m1025_d_s", 400, "vehicle"], //class name wrong online. uncomment to test
	["M1025 (M2)W", "rhsusf_m1025_w_m2", 400, "vehicle"],
	["M1025 (M2)D", "rhsusf_m1025_d_m2", 400, "vehicle"],
	["M1025 (M2/Snorkel)W", "rhsusf_m1025_w_s_m2", 400, "vehicle"],
	["M1025 (M2/Snorkel)D", "rhsusf_m1025_d_s_m2", 400, "vehicle"],
	["M1025 (Mk19)W", "rhsusf_m1025_w_mk19", 400, "vehicle"],
	["M1025 (Mk19)D", "rhsusf_m1025_d_mk19", 400, "vehicle"],
	["M1025 (Mk19/Snorkel)W", "rhsusf_m1025_w_s_mk19", 400, "vehicle"],
	["M1025 (Mk19/Snorkel)D", "rhsusf_m1025_d_s_mk19", 400, "vehicle"],

	["", "", 400, "vehicle"],
	["", "", 400, "vehicle"],
	["", "", 400, "vehicle"],
	["", "", 400, "vehicle"],
	["", "", 400, "vehicle"],
	["", "", 400, "vehicle"],
	["", "", 400, "vehicle"],
	["", "", 400, "vehicle"],
	["", "", 400, "vehicle"],
	["", "", 400, "vehicle"],
	["", "", 400, "vehicle"],
	["", "", 400, "vehicle"],
	["", "", 400, "vehicle"],
	["", "", 400, "vehicle"],

/*
	["Hunter", "B_MRAP_01_F", 4000, "vehicle"],
	["Hunter HMG", "B_MRAP_01_hmg_F", 15000, "vehicle"],
	["Hunter GMG", "B_MRAP_01_gmg_F", 17500, "vehicle"],
	["Ifrit", "O_MRAP_02_F", 4000, "vehicle"],
	["Ifrit HMG", "O_MRAP_02_hmg_F", 15000, "vehicle"],
	["Ifrit GMG", "O_MRAP_02_gmg_F", 17500, "vehicle"],
	["Strider", "I_MRAP_03_F", 4000, "vehicle"],
	["Strider HMG", "I_MRAP_03_hmg_F", 15000, "vehicle"],
	["Strider GMG", "I_MRAP_03_gmg_F", 17500, "vehicle"],
	["MSE-3 Marid", "O_APC_Wheeled_02_rcws_F", 22500, "vehicle"],
	["AMV-7 Marshall", "B_APC_Wheeled_01_cannon_F", 27500, "vehicle"],
	["AFV-4 Gorgon", "I_APC_Wheeled_03_cannon_F", 30000, "vehicle"]
*/

];

tanksArray = compileFinal str
[

//AFRF
	["2S25(VDV)", "rhs_sprut_vdv", 400, "vehicle"],
	["2S3M", "rhs_2s3_tv", 400, "vehicle"],
	["PRP-3", "rhs_prp3_msv", 400, "vehicle"],

	["T-72Ba", "rhs_t72ba_tv", 400, "vehicle"],
	["T-72Bb", "rhs_t72bb_tv", 400, "vehicle"],
	["T-72Bc", "rhs_t72bc_tv", 400, "vehicle"],
	["T-72B3", "rhs_t72bd_tv", 400, "vehicle"],
	["T-80", "rhs_t80", 400, "vehicle"],
	["T-80A", "rhs_t80a", 400, "vehicle"],
	["T-80B", "rhs_t80b", 400, "vehicle"],
	["T-80BK", "rhs_t80bk", 400, "vehicle"],
	["T-80BV", "rhs_t80bv", 400, "vehicle"],
	["T-80BVK", "rhs_t80bvk", 400, "vehicle"],
	["T-80U", "rhs_t80u", 400, "vehicle"]
	//["", "", 400, "vehicle"],
	



/*
	["CRV-6e Bobcat", "B_APC_Tracked_01_CRV_F", 32500, "vehicle"],
	["IFV-6c Panther", "B_APC_Tracked_01_rcws_F", 35000, "vehicle"],
	["FV-720 Mora", "I_APC_tracked_03_cannon_F", 37500, "vehicle"],
	["BTR-K Kamysh", "O_APC_Tracked_02_cannon_F", 40000, "vehicle"],
	["IFV-6a Cheetah AA", "B_APC_Tracked_01_AA_F", 40000, "vehicle"],
	["ZSU-39 Tigris AA", "O_APC_Tracked_02_AA_F", 40000, "vehicle"],
	["M2A1 Slammer", "B_MBT_01_cannon_F", 50000, "vehicle"],
	["M2A4 Slammer HMG", "B_MBT_01_TUSK_F", 50000, "vehicle"], // Commander gun variant
	["T-100 Varsuk", "O_MBT_02_cannon_F", 50000, "vehicle"],
	["MBT-52 Kuma", "I_MBT_03_cannon_F", 50000, "vehicle"]
*/

];


helicoptersArray = compileFinal str
[

//AFRF
	["Ka52 Grey", "RHS_Ka52_vvs", 400, "vehicle"],
	["Ka52 Camo", "RHS_Ka52_vvsc", 400, "vehicle"],
	["Ka-60 Grey", "rhs_ka60_grey", 400, "vehicle"],
	["Ka-60 Camo", "rhs_ka60_c", 400, "vehicle"],

	["Mi-24P VDV", "RHS_Mi24P_vdv", 400, "vehicle"],
	["Mi-24V VDV", "RHS_Mi24V_vdv", 400, "vehicle"],
	["Mi-24P Grey", "RHS_Mi24P_vvs", 400, "vehicle"],
	["Mi-24V Grey", "RHS_Mi24V_vvs", 400, "vehicle"],
	["Mi-24P Camo", "RHS_Mi24P_vvsc", 400, "vehicle"],
	["Mi-24V Camo", "RHS_Mi24V_vvsc", 400, "vehicle"],

	["Mi-8AMT VDV", "RHS_Mi8AMT_vdv", 400, "vehicle"],
	["Mi-8AMT Grey", "RHS_Mi8AMT_vvs", 400, "vehicle"],
	["Mi-8AMT Camo", "RHS_Mi8AMT_vvsc", 400, "vehicle"],
	["Mi-8AMTSh VDV", "RHS_Mi8AMTSh_vdv", 400, "vehicle"],
	["Mi-8AMTSh Grey", "RHS_Mi8AMTSh_vvs", 400, "vehicle"],
	["Mi-8AMTSh Camo", "RHS_Mi8AMTSh_vvsc", 400, "vehicle"],

	["Mi-8MT VDV", "RHS_Mi8mt_vdv", 400, "vehicle"],
	["Mi-8MT VV", "RHS_Mi8mt_vv", 400, "vehicle"],
	["Mi-8MT Grey", "RHS_Mi8mt_vvs", 400, "vehicle"],
	["Mi-8MT Camo", "RHS_Mi8mt_vvsc", 400, "vehicle"],
	["Mi-8MTV-3 VDV", "RHS_Mi8MTV3_vdv", 400, "vehicle"],
	["Mi-8MTV-3 Grey", "RHS_Mi8MTV3_vvs", 400, "vehicle"],
	["Mi-8MTV-3 Camo", "RHS_Mi8MTV3_vvsc", 400, "vehicle"],


//USAF
	["AH-64D Apache Wood", "rhs_ah64d_wd", 400, "vehicle"],
	["AH-64D Apache Desert", "rhs_ah64d", 400, "vehicle"],
	["CH-47 Chinook Wood", "rhs_ch_47f", 400, "vehicle"],
	["CH-47 Chinook Desert", "rhs_ch_47f_light", 400, "vehicle"],







/*
	["M-900 Civilian", "C_Heli_Light_01_civil_F", 4000, "vehicle"], // MH-6, no flares
	["MH-9 Hummingbird", "B_Heli_Light_01_F", 5000, "vehicle"], // MH-6
	["PO-30 Orca (Black)", "O_Heli_Light_02_unarmed_F", 7000, "vehicle"], // Ka-60
	["WY-55 Hellcat (Green)", "I_Heli_light_03_unarmed_F", 7000, "vehicle"], // AW159
	["Mi-290 Taru (Crane) [DLC]", "O_Heli_Transport_04_F", 7500, "vehicle"], // CH-54
	["Mi-290 Taru (Box) [DLC]", "O_Heli_Transport_04_box_F", 8000, "vehicle"],
	["Mi-290 Taru (Fuel) [DLC]", "O_Heli_Transport_04_fuel_F", 8500, "vehicle"],
	["Mi-290 Taru (Bench) [DLC]", "O_Heli_Transport_04_bench_F", 9000, "vehicle"],
	["Mi-290 Taru (Transport) [DLC]", "O_Heli_Transport_04_covered_F", 9500, "vehicle"],
	["CH-67 Huron (Black) [DLC]", "B_Heli_Transport_03_unarmed_F", 10000, "vehicle"], // CH-47
	["CH-49 Mohawk", "I_Heli_Transport_02_F", 10000, "vehicle"], // AW101
	["Mi-290 Taru (Medical) [DLC]", "O_Heli_Transport_04_medevac_F",12500, "vehicle"],
	["Mi-290 Taru (Repair) [DLC]", "O_Heli_Transport_04_repair_F", 15000, "vehicle"],
	["Mi-290 Taru (Ammo) [DLC]", "O_Heli_Transport_04_ammo_F", 25000, "vehicle"],
	["UH-80 Ghost Hawk (Black)", "B_Heli_Transport_01_F", 25000, "vehicle"], // UH-60 Stealth with 2 side miniguns
	["UH-80 Ghost Hawk (Green)", "B_Heli_Transport_01_camo_F", 25000, "vehicle"], // UH-60 Stealth with 2 side miniguns (green camo)
	["CH-67 Huron (Armed) [DLC]", "B_Heli_Transport_03_F", 30000, "vehicle"], // CH-47 with 2 side miniguns
	["AH-9 Pawnee", "B_Heli_Light_01_armed_F", 30000, "vehicle"], // Armed AH-6
	["PO-30 Orca (Armed, Black)", "O_Heli_Light_02_v2_F", 30000, "vehicle"], // Armed Ka-60 with orca paintjob
	["PO-30 Orca (Armed, Hex)", "O_Heli_Light_02_F", 35000, "vehicle"], // Armed Ka-60
	["WY-55 Hellcat (Armed)", "I_Heli_light_03_F", 40000, "vehicle"], // Armed AW159
	["AH-99 Blackfoot", "B_Heli_Attack_01_F", 75000, "vehicle"], // RAH-66 with gunner
	["Mi-48 Kajman (Hex)", "O_Heli_Attack_02_F", 85000, "vehicle"], // Mi-28 with gunner
	["Mi-48 Kajman (Black)", "O_Heli_Attack_02_black_F", 85000, "vehicle"] // Mi-28 with gunner (black camo)
*/
];

planesArray = compileFinal str
[


//AFRF
	["Su-25SM Grey", "RHS_Su25SM_vvs", 400, "vehicle"],
	["Su-25SM Camo", "RHS_Su25SM_vvsc", 400, "vehicle"],

//USAF
	["A-10A Thunderbolt II", "rhs_a10", 400, "vehicle"],

/*
	["A-143 Buzzard AA", "I_Plane_Fighter_03_AA_F", 120000, "vehicle"],
	["A-143 Buzzard CAS", "I_Plane_Fighter_03_CAS_F", 120000, "vehicle"],
	// ["A-164 Wipeout CAS", "B_Plane_CAS_01_F", 60000, "vehicle"],
	// ["To-199 Neophron CAS", "O_Plane_CAS_02_F", 60000, "vehicle"],
	["MQ4A Greyhawk ATGM UAV", "B_UAV_02_F", 65000, "vehicle"],
	["MQ4A Greyhawk Bomber UAV", "B_UAV_02_CAS_F", 40000, "vehicle"], // Bomber UAVs are a lot harder to use, hence why they are cheaper than ATGMs
	["K40 Ababil-3 ATGM UAV (CSAT)", "O_UAV_02_F", 65000, "vehicle"],
	["K40 Ababil-3 Bomber UAV (CSAT)", "O_UAV_02_CAS_F", 40000, "vehicle"],
	["K40 Ababil-3 ATGM UAV (AAF)", "I_UAV_02_F", 65000, "vehicle"],
	["K40 Ababil-3 Bomber UAV (AAF)", "I_UAV_02_CAS_F", 40000, "vehicle"]
*/

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
	["Spawn Beacon", "spawnbeacon", localize "STR_WL_ShopDescriptions_spawnBeacon", "client\icons\spawnbeacon.paa", 1500, 750],
	["Camo Net", "camonet", localize "STR_WL_ShopDescriptions_Camo", "client\icons\camonet.paa", 200, 100],
	["Syphon Hose", "syphonhose", localize "STR_WL_ShopDescriptions_SyphonHose", "client\icons\syphonhose.paa", 200, 100]
	//["Energy Drink", "energydrink", localize "STR_WL_ShopDescriptions_Energy_Drink", "client\icons\energydrink.paa", 100, 50],
	//["Warchest", "warchest", localize "STR_WL_ShopDescriptions_Warchest", "client\icons\warchest.paa", 1000, 500]
];

call compile preprocessFileLineNumbers "mapConfig\storeOwners.sqf";

storeConfigDone = compileFinal "true";
