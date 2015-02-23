// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
//	@file Version: 1.0
//	@file Name: weaponInfo.sqf
//	@file Author: [404] Deadbeat, [KoS] His_Shadow, AgentRev
//	@file Created: 20/11/2012 05:13
//	@file Args:
//########################################
//#
//# Author: Motavar@judgement.net
//# Borrowed/Modified Code: Taw_Tonic (from VAS)
//# Updated to query weapons for compatible optics for purchase
//#
//###################################################################

#include "dialog\gunstoreDefines.sqf";

disableSerialization;
private ["_weap_type", "_picture", "_description", "_price", "_showAmmo", "_dialog", "_gunlist", "_ammolist", "_gunlisttext", "_ammoText", "_itemIndex", "_itemText", "_itemData", "_weapon", "_name", "_conf", "_ammolistIndex", "_itemEntry", "_parentCfg", "_itemConfigInfo"];
//Initialize Values
_weap_type = "";
_picture = "";
_description = "";
_price = 0;
_showAmmo = false;

// Grab access to the controls
_dialog = findDisplay gunshop_DIALOG;
_gunlist = _dialog displayCtrl gunshop_gun_list;
_ammolist = _dialog displayCtrl gunshop_ammo_list;
_gunlisttext = _dialog displayCtrl gunshop_gun_TEXT;
_ammoText = _dialog displayCtrl gunshop_ammo_TEXT;
_gunDesc = _dialog displayCtrl gunshop_gun_desc;
lbClear _ammolist;

//Get Selected Item
_itemIndex = lbCurSel _gunlist;
_itemText = _gunlist lbText _itemIndex;
_itemData = _gunlist lbData _itemIndex;

_gunlisttext ctrlSetText "";

_itemConfigInfo = [_itemText, _itemData] call getItemInfo;

_parentCfg = _itemConfigInfo select 0;
_price = _itemConfigInfo select 1;
_description = _itemConfigInfo select 2;
_showAmmo = _itemConfigInfo select 3;

// Display price and description
_gunlisttext ctrlSetText format ["Price: $%1", [_price] call fn_numbersText];
_gunDesc ctrlSetStructuredText parseText _description;


//systemChat "debug 0";


// If firearm, add compatible mags to ammo list
if (_showAmmo) then
{
private ["_configMags", "_shopMag", "_shopMagClass", "_conf", "_name", "_master", "_class", "_details", "_displayName", "_scope", "_type", "_acc_p", "_acc_o", "_acc_m", "_slotclasses", "_acc_m", "_picture", "_config", "_itemInfo", "_muzzles", "_magazines", "_desc","_base"];
_acc_p = [];
_acc_o = [];
_acc_m = [];

//systemChat "debug 1";

	_weapon = configFile >> _parentCfg >> _itemData;

	if (isClass _weapon) then
	{

			//Check if the item we selected from CfgWeapons is really a "class".
//systemChat format["DEBUG Parent:%1", _parentCfg];
//systemChat format["DEBUG Weapon:%1", _weapon];
			_displayName = getText(_weapon >> "displayName");
//systemChat "Isclass check 2";
				_picture = getText(_weapon >> "picture");
//systemChat "Isclass check 3";
				_desc = getText(_weapon >> "descriptionshort");
//systemChat "Isclass check 4";
				_base = inheritsFrom _weapon;
//systemChat "Isclass check 5";
				_scope = getNumber(_weapon >> "scope");
//systemChat "Isclass check 6";
				_type = getNumber(_weapon >> "type");

			
				//So where are we in the code? we are here:
				//configFile >> "CfgWeapons" >> _class >> "WeaponSlotsInfo >> "CowsSlot" >> "compatibleItems");
				

				//Load compatible attachments
				//_acc_p = getArray(_config >> "WeaponSlotsInfo" >> "PointerSlot" >> "compatibleItems");
				_acc_o = getArray(_weapon >> "WeaponSlotsInfo" >> "CowsSlot" >> "compatibleItems");
				//_acc_m = getArray(_config >> "WeaponSlotsInfo" >> "MuzzleSlot" >> "compatibleItems");

//systemChat "Isclass check 7";


				//Verify contents of array
				for "_i" from 0 to (count _acc_o)-1 do
				{
					//Debug chat for displaying array
					//systemChat format ["CompatibleItems: %1", _acc_o select _i];
				};

//systemChat "Isclass check 8";
		

		_configMags = [];
		{
			_configMags = _configMags + getArray ((if (_x == "this") then { _weapon } else { _weapon >> _x }) >> "magazines");
		} forEach getArray (_weapon >> "muzzles");

		{
			_shopMag = _x;
			_shopMagClass = _x select 1;

			if ({_x == _shopMagClass} count _configMags > 0) then
			{
				_conf = configFile >> "CfgMagazines" >> _shopMagClass;
				_name = _shopMag select 0;
				_picture = getText (_conf >> "picture");
				_ammolistIndex = _ammolist lbAdd format ["%1", _name];
				_ammolist lbSetPicture [_ammolistIndex,_picture];
				_ammolist lbSetData [_ammolistIndex, _shopMagClass];
			};
		} forEach (call ammoArray);

//systemChat "Isclass check 9";


		//LOOP OPTICS ARRAY AND COMPARE TO AVAILABLE ACCESSORIES ARRAY
		//RE-USE EXISTING MAG CODE :)
		//2/20/15 - bugged: need to work on displaying price in store ammoinfo.sqf
		//Code not done but does display new optics
		//================================================================
		{
			_shopMag = _x;
			_shopMagClass = _x select 1;

			//systemChat "Isclass check 10";


			if ({_x == _shopMagClass} count _acc_o > 0) then
			{
			//	_conf = _weapon >> _shopMagClass;
				_name = _shopMag select 0;

			//systemChat format ["accessoriesArray: %1", _name];
			//systemChat format ["accessoriesArray: %1", _conf];

			//	_picture = getText (_conf >> "picture");
				_ammolistIndex = _ammolist lbAdd format ["%1", _name];
			//	_ammolist lbSetPicture [_ammolistIndex,_picture];
				_ammolist lbSetData [_ammolistIndex, _shopMagClass];
			};
		} forEach (call accessoriesArray);
		//================================================================



		[] execVM "client\systems\gunStore\ammoInfo.sqf";
	};
};
