//	@file Version: 1.0
//	@file Name: radarPack.sqf
//	@file Author: [404] Costlyy
//	@file Created: 08/12/2012 15:19
//	@file Args: [obj(tank), player]
//
// Update: Motavar@judgement.net
// Port: A3Wasteland 
// Date: 4/5/15
///



	private["_radarTank","_player", "_stringEscapePercent", "_totalDuration", "_lockDuration", "_iteration", "_playerSide", "_playerPos", "_radarStation", "_uniqueID"];

	//# FIND NEAREST VEHICLE
	_radarStation = (nearestobjects [getpos player, ["rhs_typhoon_vdv"],  10] select 0);
	_deployStatus = _radarStation getVariable "deployed";


	//# The following Jump In/Out of the vehicle is done to set vehicle ownership
	//###########################################################################
	player moveInDriver _radarStation;
     _radarStation setVariable["deployed", 0, true];

	sleep 1;

	//# REMOVE PLAYERS FROM THE VEHHICLE
	{
		moveOut _x;
	} forEach crew _radarStation;
	//###########################################################################


	// PRECONDITION: Check if mutex lock is active.
	if(mutexScriptInProgress) exitWith {
		player globalChat localize "STR_WL_Errors_InProgress";
	};

	// PRECONDITION: Check that a player is not currently a car (driving)
	if(vehicle player != player) exitWith {
		player globalChat localize "STR_WL_Errors_InVehicle";
	};


// All is good, commence to re-pack

	mutexScriptInProgress = true;



/*

// LEGACY CODE: We'll use this later.. maybe

_stringEscapePercent = "%"; // Required to get the % sign into a formatted string.
_totalDuration = 45; // This will NOT be easy >:)
_actionDuration = _totalDuration;
_iteration = 0;
_playerSide = playerSide;
//player switchMove "AinvPknlMstpSlayWrflDnon_medic"; // Begin the full medic animation...
for "_iteration" from 1 to _actionDuration do {
		
	if(vehicle player != player) exitWith {
		player globalChat localize "STR_WL_Errors_BeaconInVehicle";
        player action ["eject", vehicle player];
		sleep 1;
	};
    
    if (doCancelAction) exitWith {// Player selected "cancel action".
    	2 cutText ["", "PLAIN DOWN", 1];
        doCancelAction = false;
    	mutexScriptInProgress = false;
	}; 
    
    if (!(alive player)) exitWith {// If the player dies, revert state.
		2 cutText ["Pack radar station interrupted...", "PLAIN DOWN", 1];
    	mutexScriptInProgress = false;
	}; 

	if(player distance _currObject > 5) exitWith { // If the player dies, revert state.
		2 cutText ["Pack radar station interrupted...", "PLAIN DOWN", 1];
		mutexScriptInProgress = false;       
    };                         
                                                        	    
	if (animationState player != "AinvPknlMstpSlayWrflDnon_medic") then { // Keep the player locked in medic animation for the full duration of the placement.
		player switchMove "AinvPknlMstpSlayWrflDnon_medic";
	};
			    
	_actionDuration = _actionDuration - 1;
	_iterationPercentage = floor (_iteration / _totalDuration * 100);
					    
	2 cutText [format["Re-packing radar station %1%2 complete", _iterationPercentage, _stringEscapePercent], "PLAIN DOWN", 1];
	sleep 1;
					    
	if (_iteration >= _totalDuration) exitWith { // Sleep a little extra to show that place has completed.
		sleep 1;
		2 cutText ["", "PLAIN DOWN", 1];
	         
        _radarStationAmount = (nearestObjects [getpos player, ["M1130_HQ_unfolded_Base_EP1"],  10]);
                
		if(count _radarStationAmount == 0) exitWith { // Check the cheeky fuckers haven't tried to pull a fast one...
            hint "Your attempt to re-pack the radar station was unsuccessful.";
            mutexScriptInProgress = false;
        };               
  
*/

                      
	_uniqueID = _radarStation getVariable "UID";               
     _playerPos = getPosATL player;
     _stationPos = position _radarStation;
     _radarStation setVariable ["deployed", 0, true];
	_radarStation setVehicleLock "UNLOCKED";
	_radarStation setVariable ["R3F_LOG_disabled",true,true];
     _radarStation setFuel 1;


	//# LOOP THROUGH ALL RADAR MARKERS AND FIND THE ONE WE ARE PACKING
	{
			//player globalChat format["PACK ClientRadarMarker %1", _x];
			//player globalChat format["PACK ClientRadarMarker UniqueID %1", _x select 0];
			//player globalChat format["PACK RadarMarker UniqueID %1", _uniqueID];

		//# FOUND OUR MARKER, NOW DELETE IT FROM ARRAY
	    	if(_x select 0 == _uniqueID) then {
			//player globalChat format["PACK Update clientradarmarker UniqueID %1", _uniqueID];
			clientRadarMarkers set [_forEachIndex, "REMOVETHISCRAP"];
			clientRadarMarkers = clientRadarMarkers - ["REMOVETHISCRAP"];
			publicVariableServer "clientRadarMarkers";   //#TELL SERVER TO UPDATE VARIABLE    
		};
	
	}forEach clientRadarMarkers;   
                                   
	mutexScriptInProgress = false; 

	//# UPDATE PLAYER HUD WITH VISUAL NOTIFICATION
	hint "Mobile Radar Station Offline";       

		
		//player globalChat "DEBUG PACK : DONE";
		//{
		//player globalChat format["PACK remaining ClientRadarMarker %1", _x];
		//player globalChat format["PACK remaining ClientRadarMarker UniqueID %1", _x select 0];
		//}forEach clientRadarMarkers;   



//player SwitchMove "amovpknlmstpslowwrfldnon_amovpercmstpsraswrfldnon"; // Redundant reset of animation state to avoid getting locked in animation.





