//	@file Version: 1.0
//	@file Name: radarMarkerUpdate.sqf
//	@file Author: [404] Costlyy
//	@file Created: 08/12/2012 15:19
//	@file Args: [int(key)]
//
// Update: Motavar@judgement.net
// Port: A3Wasteland 
// Date: 4/5/15
// 


if(!X_Server) exitWith {};


private["_playerGroup", "_uniqueID", "_radarStationPos", "_playerSide", "_markerState", "_enemyCount", "_friendlyCount", "_currSide", "_runLoop", "_stillAlive", "_totalDistance"];

	_uniqueID = _this select 0;
	_radarStationPos = _this select 1;
	_playerSide = _this select 2;
	_markerState = _this select 3;
	_playerGroup = _this select 4;


_runLoop = true;


while {_runLoop} do {


	_stillAlive = false;

	// find state
		_enemyCount = 0;
    		_friendlyCount = 0; 


	//# LOOP THROUGH ALL PLAYERS
	{

		//# IS OUR PLAYER WITHIN THE RADAR ZONE
		if (isPlayer _x && alive _x && _x distance _radarStationPos < 350) then
		{

			//# DETERMINE, BASED ON SIDE AND GROUP, IF ENEMIES OR FRIENDLY PLAYERS EXIST IN THE ZONE
			if ((side group _x == _playerSide && _playerSide in [WEST,EAST]) || group _x == _playerGroup) then
			{
				_friendlyCount = _friendlyCount + 1;
			}
				else
			{
				_enemyCount = _enemyCount + 1;
			};
		};

	} forEach playableUnits;


	//# UPDATE RADAR MARKER STATE. THIS WILL BE SENT TO CLIENTS FOR PROCESSING

	if(_friendlyCount == 0 AND _enemyCount == 0 ) then {
    		_markerState = 0; // default - nothing
	};

	if(_friendlyCount > 0) then {
    		_markerState = 1; // Friendly NO enemy
	};

	if(_enemyCount > 0) then {
    		_markerState = 2; // Enemy NO friendly
	};

	if(_enemyCount > 0 AND _friendlyCount > 0) then {
    		_markerState = 3; // Enemy AND friendly
  	};


 	
	//# UPDATE ALL RADAR MARKERS
	{

    		if(_x select 0 == _uniqueID) then {
        	_stillAlive = true;
            
            // delete current marker from server
			clientRadarMarkers set [_forEachIndex, "REMOVETHISCRAP"];
			clientRadarMarkers = clientRadarMarkers - ["REMOVETHISCRAP"]; 
              
            // put updated marker in with updated state
			clientRadarMarkers set [count clientRadarMarkers,[_uniqueID,_radarStationPos,_playerSide, _markerState, _playerGroup]];
			publicVariable "clientRadarMarkers"; 
        	};

	}forEach clientRadarMarkers;



	//# SHOULD WE REALLY RUN THIS LOOP. ALIVE CHECK
	if (!_stillAlive) exitWith {
		_runLoop = false;
		publicVariable "clientRadarMarkers"; 
	};



	//# 3 SECOND DELAY BETWEEN UPDATING 
	sleep 3;



};









