// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//  @file Version: 1.0
//  @file Name: randomAltMuzzleMags.sqf
//  @file Author: shizweak
//  @file Created: 25/02/2015 20:00
//  @file Args: Weapon, Amount

private [
  "_weapon",
  "_amount",
  "_mags",
  "_result",
  "_allowed"
];

_weapon = _this select 0;
_amount = _this select 1;

_mags = [];
_result = [];
_allowed = [];

if(_amount > 0) then {

  // find all possible alternate muzzle magazines
  // for the passed weapon
  {
    if (_x != "this") then {
      _mags = _mags + getArray (configFile >> "CfgWeapons" >> _weapon >> _x >> "magazines");
    };
  } forEach getArray (configFile >> "CfgWeapons" >> _weapon >> "muzzles");

  // if magazines are found, loop over ammoArray
  // and add them to allowed array if allowed
  if(count _mags > 0) then {
    {
      private ["_class"];
      _class = _x select 1;
      if ({_x == _class} count _mags > 0) then
      {
        _allowed set [count _allowed, _class];
      };
    } forEach (call ammoArray);
  };

  // randomly select allowed magazines into the result
  // array until exhausted or maximum is reached
  while {count _allowed > 0 && count _result < _amount} do {
    private ["_mag"];
    _mag = _allowed call BIS_fnc_selectRandom;
    _allowed = _allowed - [_mag];
    _result set [count _result, _mag];
  };
};

_result