private [
  "_box",
  "_options",
  "_iterations",
  "_iterated"
];

_box = [_this, 0, objNull] call BIS_fnc_param;
_options = [_this, 1, []] call BIS_fnc_param;
_iterations = [_this, 2, 1] call BIS_fnc_param;
_iterated = 0;

while { !isNull(_box) && count _options > 0 && _iterated < _iterations } do {
	private [
		"_randomBox",
		"_cargoType",
		"_boxMaximumWeapons",
		"_boxMaximumItems",
		"_boxWeaponDuplicates",
		"_boxItemDuplicates"
	];

	// clear any existing contents from the box on first iteration
	if (_iterated == 0) then {
		clearMagazineCargoGlobal _box;
		clearWeaponCargoGlobal _box;
		clearItemCargoGlobal _box;
	};

	// select a random box from the options
	_randomBox = _options call BIS_fnc_selectRandom;

	_cargoType = _randomBox select 0;
	_boxMaximumWeapons = _randomBox select 1;
	_boxMaximumItems = _randomBox select 2;
	_boxWeaponDuplicates = _randomBox select 3;
	_boxItemDuplicates = _randomBox select 4;

	// add random cargo items, allow duplicates
	[_box, _cargoType, _boxMaximumItems, _boxItemDuplicates] call addRandomCargoItems;

	// add random cargo weapons, disallow duplicates
	[_box, _cargoType, _boxMaximumWeapons, _boxWeaponDuplicates] call addRandomCargoWeapons;

	_iterated = _iterated + 1;
};