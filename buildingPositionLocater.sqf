//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
// Building Position Locater v1.1 - by Blackjack 89
// After being fed up with trying to find the correct positions of a building I decided to make this script to make mission making a 
// little easier. Building position locater(BPL) makes it easier to locate all of the positions of a building. Simply aim your weapon
// at the base of the building that you want the positions of and press the End key on your keyboard. Run over one of the arrows 
// indicating the positions and you get that position displayed in the hint menu. To copy a position to the clipboard simply press the
// Insert key while standing on a blue arrow the paste the copied code into a units initialization field.
// Usage : Place the following code into your init.sqf.  _nul = [] execVM "buildingPositionLocater.sqf";
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//if (isMultiplayer) exitWith {};
hintSilent "Building Position Locater v1.1";

showPositions = False;
disableSerialization;
sleep 1;
_displayEnd = (findDisplay 46) displayAddEventHandler ["KeyDown",
	"if ((_this select 1) == 87) then {
		if !(showPositions) then{
			showPositions = True;
		}else{
			showPositions = False;
		};		
	}"];
_displayInsert = (findDisplay 46) displayAddEventHandler ["KeyDown",
	"if ((_this select 1) == 210 && showPositions) then {
		_s = format ['this setPosATL ((nearestBuilding this) buildingPos %1);', pos];
		copyToClipboard (_s);
	}"];

while {true} do{
	_screenPosition = screenToWorld [0.5,0.5];	
	_nearestBuilding = nearestBuilding _screenPosition;
	if (_nearestBuilding distance _screenPosition <10) then{
		_count = 0;
		_positionCount = 0;
		while {format ["%1", _nearestBuilding buildingPos _count] != "[0,0,0]"} do{
			_position = _nearestBuilding buildingPos _count;
			_positionCount = _positionCount +1;
			_count = _count +1;
		};
		
		if (_positionCount >0) then{
			_arrow = "Sign_Arrow_Large_Blue_F" createVehicle position _nearestBuilding;
			_box = boundingBox _nearestBuilding;		
			_height = _nearestBuilding modelToWorld (_box select 1);
			_height = _height select 2;		
			_arrow setPos [getPos _nearestBuilding select 0, getPos _nearestBuilding select 1, _height];
		
			hintSilent parseText format["<t size='1.25' font='Zeppelin33' color='#ffff00' align ='left'>Selected Building :<br/></t> 
				<t size='1.25' font='Zeppelin33' color='#FFFFFF' align ='left'>%1<br/></t>
				<t size='1.25' font='Zeppelin33' color='#ffff00' align ='left'>Number Of Positions :</t>
				<t size='1.25' font='Zeppelin33' color='#FFFFFF' align ='left'> %2<br/><br/></t>
				<t size='0.9' font='Zeppelin33' color='#ffff00' align ='left'>View Building Positions (END).</t>", typeOf _nearestBuilding, _positionCount];

			waitUntil {
				_screenPosition = screenToWorld [0.5,0.5];
				if (_screenPosition distance _nearestBuilding >10 or showPositions) exitWith {True};
				sleep 0.1;
				False
			};
			
			if (showPositions) then{
				_mkrArray = []; _posArray = [];
				for "_i" from 0 to _positionCount -1 do{
					_position = ((_nearestBuilding) buildingPos _i);
					_mkr = createVehicle ["Sign_Arrow_Blue_F", _position, [], 0, "CAN_COLLIDE"];
					_mkrArray pushBack _mkr;
					_posArray pushBack _i;
				};
								
				waitUntil {
					hintSilent parseText format["<t size='1.25' font='Zeppelin33' color='#ffff00' align ='left'>Selected Building :<br/></t> 
						<t size='1.25' font='Zeppelin33' color='#FFFFFF' align ='left'>%1<br/></t>
						<t size='1.25' font='Zeppelin33' color='#ffff00' align ='left'>Number Of Positions :</t><t size='1.25' font='Zeppelin33' color='#FFFFFF' align ='left'> %2</t><br/>
						<t size='1.25' font='Zeppelin33' color='#ffff00' align ='left'>Current Position :<br/><br/></t>
						<t size='0.9' font='Zeppelin33' color='#ffff00' align ='left'>Return To Building Selection (F11).</t>", typeOf _nearestBuilding, _positionCount];
					
					_nearestMkr = [_mkrArray, player] call BIS_fnc_nearestPosition;
										
					if (player distance _nearestMkr <= 1.5) then{
						_index = _mkrArray find _nearestMkr;
						pos = _posArray select _index;
						
						while {True} do{
							hintSilent parseText format["<t size='1.25' font='Zeppelin33' color='#ffff00' align ='left'>Selected Building :<br/></t> 
								<t size='1.25' font='Zeppelin33' color='#FFFFFF' align ='left'>%1<br/></t>
								<t size='1.25' font='Zeppelin33' color='#ffff00' align ='left'>Number Of Positions :</t><t size='1.25' font='Zeppelin33' color='#FFFFFF' align ='left'> %2</t><br/>
								<t size='1.25' font='Zeppelin33' color='#ffff00' align ='left'>Current Position :</t><t size='1.25' font='Zeppelin33' color='#FFFFFF' align ='left'> %3</t><br/><br/>
								<t size='0.9' font='Zeppelin33' color='#ffff00' align ='left'>Return To Building Selection (F11).</t>
								<t size='0.9' font='Zeppelin33' color='#ffff00' align ='left'>Copy Position To Clipboard (INSERT).</t>", typeOf _nearestBuilding, _positionCount, pos];							
							
							if (player distance _nearestMkr > 1.5) exitWith {}; 
						};
					};				
					if !(showPositions) exitWith {True};
					False
				};
				{deleteVehicle _x} forEach _mkrArray;
			};			
			hintSilent "";
			deleteVehicle _arrow;			
		};	
	};
};