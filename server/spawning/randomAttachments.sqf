// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: randomAttachments.sqf
//	@file Author: shizweak
//	@file Created: 24/02/2015 13:55
//	@file Args: Weapon, Amount

private [
	"_weapon",
	"_amount",
	"_attachments",
	"_allowed",
	"_result"
];

_weapon = _this select 0;
_amount = _this select 1;

_result = [];
_allowed = [];

// get compatible attachments using asdg getCompatibleAttachments
_attachments = [_weapon] call asdg_jointrails_fnc_getCompatibleAttachments;

// if amount parameter is greater than zero and
// compatible attachments have been found
if(_amount > 0 && count _attachments > 0) then {

	// loop over accessoriesArray and add allowed
	// attachments to allowed array
	{
		private ["_class"];
		_class = _x select 1;
		if ({_x == _class} count _attachments > 0) then {
			_allowed set [count _allowed, _class];
		};
	} forEach (call accessoriesArray);

	// randomly select allowed accessories into the result
	// array until exhausted or maximum is reached
	while {count _allowed > 0 && count _result < _amount} do {
		private ["_attachment"];
		_attachment = _allowed call BIS_fnc_selectRandom;
		_allowed = _allowed - [_attachment];
		_result set [count _result, _attachment];
	};
};

_result