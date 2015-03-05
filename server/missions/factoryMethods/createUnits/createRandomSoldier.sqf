// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//  @file Name: createRandomSoldier.sqf
/*
 * Creates a random civilian soldier.
 *
 */

if (!isServer) exitWith {};

private [
  "_uniformTypes",
  "_vestTypes",
  "_headTypes",
  "_weaponTypes",
  "_launcherSetup",
  "_group",
  "_position",
  "_loadout",
  "_launcher",
  "_mode",
  "_soldier"
];

_group = _this select 0;
_position = _this select 1;
_loadout = _this select 2;
_launcher = [_this, 3, false] call BIS_fnc_param;
_mode = [_this, 4, "NONE"] call BIS_fnc_param;

_uniformTypes = _loadout select 0;
_vestTypes = _loadout select 1;
_headTypes = _loadout select 2;
_weaponTypes = _loadout select 3;
_launcherSetup = [_loadout, 4, []] call BIS_fnc_param;

_soldier = _group createUnit [aiRandomClasses call BIS_fnc_selectRandom, _position, [], 0, _mode];

removeAllWeapons _soldier;
removeAllAssignedItems _soldier;
removeUniform _soldier;
removeVest _soldier;
removeBackpack _soldier;
removeHeadgear _soldier;
removeGoggles _soldier;

_soldier addUniform (_uniformTypes call BIS_fnc_selectRandom);
_soldier addVest (_vestTypes call BIS_fnc_selectRandom);
_soldier addHeadgear (_headTypes call BIS_fnc_selectRandom);
[_soldier, _weaponTypes call BIS_fnc_selectRandom, 3] call BIS_fnc_addWeapon;

if(_launcher && count _launcherSetup == 3) then {
  _soldier addBackpack (_launcherSetup select 0);
  _soldier addWeapon (_launcherSetup select 1);
  _soldier addMagazine (_launcherSetup select 2);
  _soldier addMagazine (_launcherSetup select 2);
};

_soldier addPrimaryWeaponItem "acc_flashlight";
_soldier enablegunlights "forceOn";

_soldier spawn refillPrimaryAmmo;
_soldier call setMissionSkill;

_soldier addEventHandler ["Killed", server_playerDied];

_soldier
