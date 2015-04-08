// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//
// Update: Motavar@judgement.net
// Port: A3Wasteland 
// Updated For Vehicle Radar
// Date: 4/5/15
// 

if (!isServer) exitwith {};
#include "mainMissionDefines.sqf";

private ["_vehicleClass", "_nbUnits"];

_setupVars =
{
	_vehicleClass =
	[
	"rhs_typhoon_vdv"
	] call BIS_fnc_selectRandom;

	_missionType = "Mobile Radar Station";
	_locationsArray = MissionSpawnMarkers;

	_nbUnits = if (missionDifficultyHard) then { AI_GROUP_LARGE } else { AI_GROUP_MEDIUM };
};

_this call mission_VehicleCapture;
