// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//  @file Version: 1.0
//  @file Name: addRandomCargoWeapons.sqf
//  @file Author: shizweak
//  @file Created: 25/02/2015 23:30
//  @file Args: Vehicle, Cargo Type (defined in serverVars), Maximum, Allow Duplicates

private [
  "_obj",
  "_cargoType",
  "_maximum",
  "_duplicates",
  "_cargo",
  "_weapons",
  "_added"
];

_obj = _this select 0;
_cargoType = _this select 1;
_maximum = _this select 2;
_duplicates = _this select 3;

_cargo = [];
_weapons = [];
_added = 0;

// populate _weapons with an array of possible weapons for this
// cargo type defined in serverVars, randomCargoWeapons array
{
  private ["_weapon", "_cargoTypes"];
  _weapon = _x select 0;
  _cargoTypes = _x select 1;
  if ({_x == _cargoType} count _cargoTypes > 0) then {
    _weapons set [count _weapons, _weapon];
  };
} forEach randomCargoWeapons;

// add weapons to the cargo until we ran out of weapons (or unique 
// weapons if duplicates disabled), or until we hit the maximum
while {count _weapons > 0 && _added < _maximum} do {
  private ["_weapon", "_class", "_mags", "_attachments", "_altMags"];

  // select a random weapon and add it to the cargo, remove from
  // weapons array if weapon duplicates parameter is disabled
  _weapon = _weapons call BIS_fnc_selectRandom;
  if(!_duplicates) then { _weapons = _weapons - [_weapon] };

  _class = _weapon;
  _mags = 0;
  _attachments = 0;
  _altMags = 0;

  // if the passed weapon was an array, extract the class,
  // mags, attachments and alt magazines parameters
  if(typeName _weapon == "ARRAY") then {
    _class = _weapon select 0;
    _mags = [_weapon, 1, 0] call BIS_fnc_param;
    _attachments = [_weapon, 2, 0] call BIS_fnc_param;
    _altMags = [_weapon, 3, 0] call BIS_fnc_param;
  };

  // add to cargo array to be added by processItems
  _cargo set [
    count _cargo,
    ["wep", _class, 1, _mags, _attachments, _altMags]
  ];

  _added = _added + 1;
};

// if random cargo was generated, add it to cargo using processItems
if(_added > 0) then {
  [_obj, _cargo] call processItems;
};