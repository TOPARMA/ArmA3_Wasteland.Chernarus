// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//  @file Version: 1.0
//  @file Name: addRandomCargoItems.sqf
//  @file Author: shizweak
//  @file Created: 25/02/2015 23:30
//  @file Args: Vehicle, Cargo Type (defined in serverVars), Maximum, Allow Duplicates

private [
  "_obj",
  "_cargoType",
  "_maximum",
  "_duplicates",
  "_cargo",  
  "_items",
  "_added"
];

_obj = _this select 0;
_cargoType = _this select 1;
_maximum = _this select 2;
_duplicates = _this select 3;

_cargo = [];
_items = [];
_added = 0;

// populate _items array with items for this cargo type
// defined in serverVars, randomSpawningItems
{
  private ["_item", "_cargoTypes"];
  _item = _x select 0;
  _cargoTypes = _x select 1;
  if ({_x == _cargoType} count _cargoTypes > 0) then {
    _items set [count _items, _item];
  };
} forEach randomCargoItems;

while {count _items > 0 && _added < _maximum} do {
  private ["_item"];

  // select a random item and add it to the cargo, remove from
  // items array if item duplicates parameter is disabled
  _item = _items call BIS_fnc_selectRandom;
  if(!_duplicates) then { _items = _items - [_item] };

  // add to cargo array to be added by processItems
  _cargo set [
    count _cargo,
    ["item", _item, 1]
  ];

  _added = _added + 1;
};

// if random cargo was generated, add it to cargo using processItems
if(_added > 0) then {
  [_obj, _cargo] call processItems;
};