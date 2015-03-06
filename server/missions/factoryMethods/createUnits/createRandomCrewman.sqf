// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Name: createRandomCrewman.sqf
/*
 * Creates a random civilian crewman.
 *
 */

if (!isServer) exitWith {};

private [
	"_uniformTypes",
	"_weaponTypes",
	"_group",
	"_position",
	"_soldier",
	"_loadout"
];

_group = _this select 0;
_position = _this select 1;
_loadout = _this select 2;

_uniformTypes = _loadout select 0;
_weaponTypes = _loadout select 1;

_soldier = _group createUnit [aiRandomClasses call BIS_fnc_selectRandom, _position, [], 0, "NONE"];
_soldier addUniform (_uniformTypes call BIS_fnc_selectRandom);
[_soldier, _weaponTypes call BIS_fnc_selectRandom, 3] call BIS_fnc_addWeapon;

_soldier addPrimaryWeaponItem "acc_flashlight";
_soldier enablegunlights "forceOn";					//set to "forceOn" to force use of lights (during day too default = AUTO)

_soldier spawn refillPrimaryAmmo;
_soldier call setMissionSkill;

_soldier addEventHandler ["Killed", server_playerDied];

_soldier
