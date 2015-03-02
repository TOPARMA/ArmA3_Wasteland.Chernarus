// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.1
//	@file Name: boxSpawning.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, AgentRev
//	@file Created: 20/11/2012 05:19
//	@file Args:

if (!isServer) exitWith {};

private [
  "_counter",
  "_pos",
  "_markerName",
  "_marker",
  "_hint",
  "_safePos",
  "_boxes",
  "_boxList",
  "_boxClass",
  "_box",
  "_boxItems",
  "_magName",
  "_boxType"
];

_counter = 0;
_percentage = ["A3W_boxSpawning", 0] call getPublicVar;

if(_percentage > 1) then {
  _percentage = 1;
};

{
	if (random 1 < _percentage) then // 50% chance of box spawning at each town
	{
    _pos = getMarkerPos (_x select 0);
		_safePos = [_pos, 10, (_x select 1) / 2, 1, 0, 60 * (pi / 180), 0] call findSafePos; // spawns somewhere within half the town radius
    _box = [_pos] call randomWeaponsBox;
		_counter = _counter + 1;
	};
} forEach (call cityList);

diag_log format ["WASTELAND SERVER - %1 Ammo Caches Spawned",_counter];
