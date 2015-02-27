private [
  "_position",
  "_randomBox",
  "_cargoType",
  "_boxClass",
  "_boxMaximumWeapons",
  "_boxMaximumItems",
  "_box"
];

_position = _this select 0;

// select a random box
_randomBox = randomWeaponBoxes call BIS_fnc_selectRandom;

_cargoType = _randomBox select 0;
_boxMaximumWeapons = _randomBox select 1;
_boxMaximumItems = _randomBox select 2;
_boxClass = _randomBox select 3;

// create the box
_box = createVehicle [_boxClass, _safePos, [], 0, "NONE"];
_box allowDamage false;

// clear any existing contents from the box
clearMagazineCargoGlobal _box;
clearWeaponCargoGlobal _box;
clearItemCargoGlobal _box;

// add random cargo items, allow duplicates
[_box, _cargoType, _boxMaximumItems, true] call addRandomCargoItems;

// add random cargo weapons, disallow duplicates
[_box, _cargoType, _boxMaximumWeapons, false] call addRandomCargoWeapons;