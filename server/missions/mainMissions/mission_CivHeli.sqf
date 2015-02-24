// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: mission_CivHeli.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, AgentRev
//	@file Created: 08/12/2012 15:19

if (!isServer) exitwith {};
#include "mainMissionDefines.sqf";

private ["_vehicleClass", "_nbUnits"];

_setupVars =
{
	_vehicleClass = [
	"rhs_ka60_grey",
	"rhs_ka60_c",
	"RHS_Mi8mt_vdv",
	"RHS_Mi8mt_vv",
	"RHS_Mi8mt_vvs",
	"RHS_Mi8mt_vvsc",
	"rhs_uh60m_mev",
	"rhs_uh60m_mev_d"
	] call BIS_fnc_selectRandom;

	_missionType = "Transport Helicopter";
	_locationsArray = MissionSpawnMarkers;

	_nbUnits = if (missionDifficultyHard) then { AI_GROUP_LARGE } else { AI_GROUP_MEDIUM };
};

_this call mission_VehicleCapture;
