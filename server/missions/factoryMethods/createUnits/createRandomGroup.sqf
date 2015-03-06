// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: customGroup.sqf
//	@file Author: AgentRev

if (!isServer) exitWith {};

private ["_group", "_pos", "_nbUnits", "_uPos", "_unit", "_launcher", "_loadout", "_radius"];

_group = _this select 0;
_pos = _this select 1;
_loadout = _this select 2;
_nbUnits = [_this, 3, 7, [0]] call BIS_fnc_param;
_radius = [_this, 4, 10, [0]] call BIS_fnc_param;

for "_i" from 1 to _nbUnits do
{
	_launcher = ((_i + 5) % 7 == 0);
	_uPos = _pos vectorAdd ([[random _radius, 0, 0], random 360] call BIS_fnc_rotateVector2D);
	_unit = [_group, _uPos, _loadout, _launcher, "Form"] call createRandomSoldier;
	_unit setPosATL _uPos;
	_unit addRating 1e11;
	_unit addEventHandler ["Killed", server_playerDied];
};

[_group, _pos] call defendArea;
