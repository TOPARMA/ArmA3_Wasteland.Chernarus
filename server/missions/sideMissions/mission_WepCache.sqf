// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: mission_WepCache.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, AgentRev
//	@file Created: 08/12/2012 15:19

if (!isServer) exitwith {};
#include "sideMissionDefines.sqf"

private ["_nbUnits", "_box1", "_box2", "_loadout"];

_setupVars =
{
	_missionType = "Aircraft Wreck";
	_locationsArray = MissionSpawnMarkers;
	_nbUnits = if (missionDifficultyHard) then { AI_GROUP_LARGE } else { AI_GROUP_MEDIUM };
};

_setupObjects =
{
	_missionPos = markerPos _missionLocation;

	_box1 = createVehicle ["rhs_weapons_crate_ak_standard", _missionPos, [], 5, "None"];
	_box1 setDir random 360;
	[_box1, randomMissionSpecialCargo, 1] call randomCargoFill;

	_box2 = createVehicle ["rhs_weapons_crate_ak_ammo_545x39_standard", _missionPos, [], 5, "None"];
	_box2 setDir random 360;
	[_box2, randomMissionExplosiveCargo, 1] call randomCargoFill;

	{ _x setVariable ["R3F_LOG_disabled", true, true] } forEach [_box1, _box2];

	_aiGroup = createGroup CIVILIAN;
	_loadout = aiLoadoutsBasic call BIS_fnc_selectRandom;
	[_aiGroup, _missionPos, _loadout, _nbUnits] call createRandomGroup;

	_missionHintText = "A weapon cache has been spotted near the marker.";
};

_waitUntilMarkerPos = nil;
_waitUntilExec = nil;
_waitUntilCondition = nil;

_failedExec =
{
	// Mission failed
	{ deleteVehicle _x } forEach [_box1, _box2];
};

_successExec =
{
	// Mission completed
	{ _x setVariable ["R3F_LOG_disabled", false, true] } forEach [_box1, _box2];

	_successHintMessage = "The airwreck supplies have been collected, well done.";
};

_this call sideMissionProcessor;
