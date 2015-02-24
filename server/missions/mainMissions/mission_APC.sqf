// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: mission_APC.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, AgentRev
//	@file Created: 08/12/2012 15:19

if (!isServer) exitwith {};
#include "mainMissionDefines.sqf";

private ["_vehicleClass", "_nbUnits"];

_setupVars =
{
	_vehicleClass =
	[
	"RHS_BM21_MSV_01",
	"RHS_BM21_VDV_01",
	"RHS_BM21_VMF_01",
	"RHS_BM21_VV_01",
	"rhs_bmd1",
	"rhs_bmd1k",
	"rhs_bmd1p",
	"rhs_bmd1pk",
	"rhs_bmd1r",	
	"rhs_bmd2",
	"rhs_bmd2k",
	"rhs_bmd2m",
	"rhs_bmd4_vdv",
	"rhs_bmd4m_vdv",
	"rhs_bmd4ma_vdv",
	"rhs_brm1k_msv",
	"rhs_brm1k_tv",
	"rhs_brm1k_vdv",
	"rhs_brm1k_vv",
	"rhs_btr60_msv",
	"rhs_btr60_vdv",
	"rhs_btr60_vmf",
	"rhs_btr60_vv",
	"rhs_btr70_msv",
	"rhs_btr70_vdv",
	"rhs_btr70_vmf",
	"rhs_btr70_vv",
	"rhs_btr80_msv",
	"rhs_btr80_vdv",
	"rhs_btr80_vmf",
	"rhs_btr80_vv",
	"rhs_btr80a_msv",
	"rhs_btr80a_vdv",
	"rhs_btr80a_vmf",
	"rhs_btr80a_vv",
	"rhsusf_m113_usarmy",
	"rhsusf_m113d_usarmy",
	"RHS_M2A2_wd",
	"RHS_M2A2",
	"RHS_M2A2_BUSKI_wd",
	"RHS_M2A2_BUSKI",
	"RHS_M2A3",
	"RHS_M2A3",
	"RHS_M2A3_BUSKI_wd",
	"RHS_M2A3_BUSKI",
	"RHS_M2A3_BUSKIII_wd",
	"RHS_M2A3_BUSKIII"
	] call BIS_fnc_selectRandom;

	_missionType = switch (true) do
	{
		case ({_vehicleClass isKindOf _x} count ["B_APC_Tracked_01_AA_F", "O_APC_Tracked_02_AA_F"] > 0): { "Anti Aircraft Vehicle" };
		case (_vehicleClass isKindOf "Tank_F"):                                                          { "Infantry Fighting Vehicle" };
		default                                                                                          { "Armored Personnel Carrier" };
	};

	_locationsArray = MissionSpawnMarkers;

	_nbUnits = if (missionDifficultyHard) then { AI_GROUP_LARGE } else { AI_GROUP_MEDIUM };
};

_this call mission_VehicleCapture;
