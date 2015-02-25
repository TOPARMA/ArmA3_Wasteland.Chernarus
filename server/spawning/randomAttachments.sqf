// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: randomAttachments.sqf
//	@file Author: shizweak
//	@file Created: 24/02/2015 13:55
//	@file Args: Weapon, Amount

private [
	'_weapon',
	'_amount',
	'_all_attachments',
	'_attachments',
	'_attachment',
	'_result'
];

_result = [];
_allowed = [];

_weapon = _this select 0;
_amount = _this select 1;
_attachments = [_weapon] call asdg_jointrails_fnc_getCompatibleAttachments;

{
	_class = _x select 1;
	if ({_x == _class} count _attachments > 0) then {
		_allowed set [count _allowed, _class];
	};
} forEach (call accessoriesArray);

if(count _allowed > _amount) then {
	while {count _result < _amount} do {
		_attachment = _allowed call BIS_fnc_selectRandom;
		_allowed = _allowed - [_attachment];
		_result set [count _result, _attachment];
	};
} else {
	if(_amount > 0 && count _allowed <= _amount) then {
		_result = _allowed;
	};
};

_result