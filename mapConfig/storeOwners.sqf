// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: storeOwners.sqf
//	@file Author: AgentRev, JoSchaap, His_Shadow

// Notes: Gun and general stores have position of spawned crate, vehicle stores have an extra air spawn direction
//
// Array contents are as follows:
// Name, Building Position, Desk Direction (or [Desk Direction, Front Offset]), Excluded Buttons
//
// Motavar@judgement.net:  Set Position to 99 to skip auto buildingPos detect. This sets location to current on map

storeOwnerConfig = compileFinal str
[
	["GenStore1", 2, 180, []],
	["GenStore2", 0, 175, []],
	["GenStore3", 0, 295, []],
	["GenStore4", 2, 90, []],
	["GenStore5", 0, 350, []],

	["GunStore1", 3, 130, []],
	["GunStore2", 0, 236, []],
	["GunStore3", 2, 130, []],
	["GunStore4", 99, 350, []],
	["GunStore5", 99, 140, []],

	// Buttons you can disable: "Land", "Armored", "Tanks", "Helicopters", "Boats", "Planes"
	["VehStore1", 0, 75, ["Planes"]],
	["VehStore2", 6, 300, ["Planes", "Boats"]],
	["VehStore3", 0, 20, ["Boats", "Armored", "Tanks"]],
	["VehStore4", 0, 240, ["Boats"]],
	["VehStore5", 6, 340, ["Planes","Boats"]]
];

// Outfits for store owners
storeOwnerConfigAppearance = compileFinal str
[
	["GenStore1", [["weapon", ""], ["uniform", "U_IG_Guerilla2_2"]]],
	["GenStore2", [["weapon", ""], ["uniform", "U_IG_Guerilla2_3"]]],
	["GenStore3", [["weapon", ""], ["uniform", "U_IG_Guerilla3_1"]]],
	["GenStore4", [["weapon", ""], ["uniform", "U_IG_Guerilla2_1"]]],
	["GenStore5", [["weapon", ""], ["uniform", "U_IG_Guerilla3_2"]]],

	["GunStore1", [["weapon", ""], ["uniform", "U_B_SpecopsUniform_sgg"]]],
	["GunStore2", [["weapon", ""], ["uniform", "U_O_SpecopsUniform_blk"]]],
	["GunStore3", [["weapon", ""], ["uniform", "U_I_CombatUniform_tshirt"]]],
	["GunStore4", [["weapon", ""], ["uniform", "U_I_CombatUniform_tshirt"]]],
	["GunStore5", [["weapon", "MMG_01_hex_F"], ["uniform", "U_B_FullGhillie_lsh"]]],

	["VehStore1", [["weapon", ""], ["uniform", "U_B_SpecopsUniform_sgg"]]],
	["VehStore2", [["weapon", ""], ["uniform", "U_B_SpecopsUniform_sgg"]]],
	["VehStore3", [["weapon", ""], ["uniform", "U_B_SpecopsUniform_sgg"]]],
	["VehStore4", [["weapon", ""], ["uniform", "U_B_SpecopsUniform_sgg"]]],
	["VehStore5", [["weapon", ""], ["uniform", "U_B_SpecopsUniform_sgg"]]]
];
