// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: mission_MBT.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, AgentRev
//	@file Created: 08/12/2012 15:19

if (!isServer) exitwith {};
#include "mainMissionDefines.sqf";

private ["_vehicleClass", "_nbUnits"];

_setupVars =
{
	_vehicleClass =
	[
	"rhs_t72ba_tv",
	"rhs_t72bb_tv",
	"rhs_t72bc_tv",
	"rhs_t72bd_tv",
	"rhsusf_m1a1aimwd_usarmy",
	"rhsusf_m1a1aimd_usarmy",
	"rhsusf_m1a1aim_tuski_wd",
	"rhsusf_m1a1aim_tuski_d",
	"rhsusf_m1a1fep_wd",
	"rhsusf_m1a1fep_d",
	"rhsusf_m1a2sep1wd_usarmy",
	"rhsusf_m1a2sep1d_usarmy",
	"rhsusf_m1a2sep1tuskiwd_usarmy",
	"rhsusf_m1a2sep1tuskid_usarmy"
	] call BIS_fnc_selectRandom;

	_missionType = "Main Battle Tank";
	_locationsArray = MissionSpawnMarkers;

	_nbUnits = if (missionDifficultyHard) then { AI_GROUP_LARGE } else { AI_GROUP_MEDIUM };
};

_this call mission_VehicleCapture;
