_position = _this select 0;
_weaponDuplicates = _this select 1;
_itemDuplicates = _this select 2;

// select a random box
_randomBox = boxSpawningTypes call BIS_fnc_selectRandom;
_boxType = _randomBox select 0;
_boxClass = _randomBox select 1;
_boxMaximumWeapons = _randomBox select 2;
_boxMaximumAttachments = _randomBox select 3;
_boxMaximumItems = _randomBox select 4;

// create the box
_box = createVehicle [_boxClass, _safePos, [], 0, "NONE"];
_box allowDamage false;


// clear any existing contents from the box
clearMagazineCargoGlobal _box;
clearWeaponCargoGlobal _box;
clearItemCargoGlobal _box;

// populate _weapons with an array of possible weapons for this
// box type defined in serverVars, boxSpawningWeapons
_weapons = [];

{
  _class = _x select 0;
  _types = _x select 1;
  if ({_x == _boxType} count _types > 0) then {
    _weapons set [count _weapons, _class];
  };
} forEach (call boxSpawningWeapons);

// add weapons to the box until we ran out of weapons (or unique 
// weapons if duplicates disabled), or until we hit the maximum
_weaponsAdded = 0;

if (count _weapons > 0) then {
  while {count _weapons > 0 && _weaponsAdded < _boxMaximumWeapons} do {
    _weapon = _weapons call BIS_fnc_selectRandom;
    if(!_weaponDuplicates) then { _weapons = _weapons - [_weapon] };
    _box addWeaponCargoGlobal [_weapon, 1];
    _weaponsAdded = _weaponsAdded + 1;

    // If attachments are configured, get random attachments and
    // add them to the box
    if(_boxMaximumAttachments > 0) then {
      {
        _box addItemCargoGlobal [_x, 1];
      } forEach ([_weapon, _boxMaximumAttachments] call randomAttachments);
    };
  };
};

/*
_items = [];
_itemsAdded = 0;

{
  _class = _x select 0;
  _types = _x select 1;
  if ({_x == _boxType} count _types > 0) then {
    _weapons set [count _weapons, _class];
  };
} forEach (call boxSpawningItems);
*/