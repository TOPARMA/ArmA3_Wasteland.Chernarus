// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: mission_ArmedHeli.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, AgentRev
//	@file Created: 08/12/2012 15:19

if (!isServer) exitwith {};
#include "mainMissionDefines.sqf";

private ["_vehicleClass", "_nbUnits"];

_setupVars =
{
	_vehicleClass =
	[
	"RHS_Ka52_vvs",
	"RHS_Ka52_vvsc",
	"RHS_Mi24P_vdv",
	"RHS_Mi24V_vdv",
	"RHS_Mi24P_vvs",
	"RHS_Mi24V_vvs",
	"RHS_Mi24P_vvsc",
	"RHS_Mi24V_vvsc",
	"RHS_Mi8AMT_vdv",
	"RHS_Mi8AMT_vvs",
	"RHS_Mi8AMT_vvsc",
	"RHS_Mi8AMTSh_vdv",
	"RHS_Mi8AMTSh_vvs",
	"RHS_Mi8AMTSh_vvsc",
	"RHS_Mi8MTV3_vdv",
	"RHS_Mi8MTV3_vvs",
	"RHS_Mi8MTV3_vvsc",
	"rhs_ah64d_wd",
	"rhs_ah64d",
	"rhs_ch_47f",
	"rhs_ch_47f_light",
	"rhs_uh60m",
	"rhs_uh60m_d"
	] call BIS_fnc_selectRandom;

	_missionType = "Armed Helicopter";
	_locationsArray = MissionSpawnMarkers;

	_nbUnits = if (missionDifficultyHard) then { AI_GROUP_LARGE } else { AI_GROUP_MEDIUM };
};

_this call mission_VehicleCapture;
