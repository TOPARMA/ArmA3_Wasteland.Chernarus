//	@file Version: 1.0
//	@file Name: radarDeploy.sqf
//	@file Author: [404] Costlyy
//	@file Created: 08/12/2012 15:19
//	@file Args: [obj(tank), player]
//
// Update: Motavar@judgement.net
// Port: A3Wasteland 
// Date: 4/5/15
// 

private["_deployStatus", "_player", "_stringEscapePercent", "_totalDuration", "_lockDuration", "_iteration", "_playerSide", "_playerPos", "_radarStation", "_radarStationPos", "_uniqueID", "_temp", "_markerState", "_tankFuel", "_tankDamage"];


	_radarStation = (nearestobjects [getpos player, ["rhs_typhoon_vdv"],  10] select 0);
	_deployStatus = _radarStation getVariable "deployed";
	_playerSide = playerSide;


	if (_radarStation getVariable "deployed" == 1 ) exitWith { 
		//player globalChat "Radar Already Deployed";
		["Vehicle Radar Already Deployed", 5] call mf_notify_client;

	};

	
	//# BUG: HAVE TO LOOK INTO THIS FURTHER BUT FOR NOW FORCE THE PLAYER INTO/OUT OF THE VEHICLE TO SET OWNERSHIP
	//###########################################################################
		player moveInDriver _radarStation;
     		//_radarStation setVariable["deployed", 0, true];

		sleep 1;

		//# REMOVE PLAYERS FROM THE VEHHICLE
		{
			moveOut _x;
		} forEach crew _radarStation;
	//###########################################################################


	_radarStation limitSpeed 0;


	// PRECONDITION: Check if mutex lock is active.
		if(mutexScriptInProgress) exitWith {
		player globalChat localize "STR_WL_Errors_InProgress";
	};


	// PRECONDITION: Check that a player is not currently a car (driving)
	if(vehicle player != player) exitWith {
		player globalChat "You cannot be in vehicle";
	};

	
	// PRECONDITION: Check the vehicle is alive
	if(getDammage _radarStation == 1) exitWith {
		player globalChat "Vehicle Damaged";
	     deleteVehicle _radarStation;
	};


// All is good, commence to unpacking...

	mutexScriptInProgress = true;




/*
//LEGACY CODE:

//player switchMove "AinvPknlMstpSlayWrflDnon_medic"; // Begin the full medic animation...

_stringEscapePercent = "%"; // Required to get the % sign into a formatted string.
_totalDuration = 45; // This will NOT be easy >:)
_actionDuration = _totalDuration;
_iteration = 0;

for "_iteration" from 1 to _actionDuration do {
		
	if(vehicle player != player) exitWith {
//		player globalChat localize "STR_WL_Errors_BeaconInVehicle";
		player globalChat "Error Radar in vehicle";
        player action ["eject", vehicle player];
		sleep 1;
	};

//player globalChat "DEBUG 2";
    

    if (doCancelAction) exitWith {// Player selected "cancel action".
    	2 cutText ["", "PLAIN DOWN", 1];
        doCancelAction = false;
    	mutexScriptInProgress = false;
	}; 

	if (!(alive player)) exitWith {// If the player dies, revert state.
//		2 cutText ["Radar deploy interrupted...", "PLAIN DOWN", 1];
		player globalChat "Player Died";
    	mutexScriptInProgress = false;
	};     
    
    if(player distance _currObject > 5) exitWith { // If the player dies, revert state.
//		2 cutText ["Radar deploy interrupted...", "PLAIN DOWN", 1];
		player globalChat "Distance 5+";
		mutexScriptInProgress = false;       
    };          
                                                        	    
	if (animationState player != "AinvPknlMstpSlayWrflDnon_medic") then { // Keep the player locked in medic animation for the full duration of the placement.
		player switchMove "AinvPknlMstpSlayWrflDnon_medic";
	};

//player globalChat "DEBUG 3";
			    
	_actionDuration = _actionDuration - 1;
	_iterationPercentage = floor (_iteration / _totalDuration * 100);
					    
//	2 cutText [format["Unpacking radar station %1%2 complete", _iterationPercentage, _stringEscapePercent], "PLAIN DOWN", 1];
	sleep 1;					   
					    
	if (_iteration >= _totalDuration) exitWith { // Sleep a little extra to show that place has completed.
		sleep 1;
//		2 cutText ["", "PLAIN DOWN", 1];
		
        
        _radarTankAmount = (nearestObjects [getpos player, ["rhs_prv13"],  10]);
                
		if(count _radarTankAmount == 0) exitWith { // Check the cheeky fuckers haven't tried to pull a fast one...
            hint "Your attempt to unpack the the radar truck was unsuccessful.";
            mutexScriptInProgress = false;
        };

//# END LEGACY CODE
*/



		_uniqueID = random 1000000;
	     _temp = _uniqueID / random 1000000;
     		_uniqueID = format["Radar_Marker%1", _temp];
        	_markerState = 0;    
		_radarStation limitSpeed 0;
        	_radarStation addEventHandler["handleDamage", {false}];
	   	//_radarStation setVehicleLock "LOCKED";
	   	_radarStation setVariable ["R3F_LOG_disabled",true,true];
	   	_radarStation allowDamage true;
        	_radarStation enableSimulation true;
        	_radarStation setVariable["UID", _uniqueID, true];          
        	_radarStation setVariable["deployed", 1, true];
        	_radarStation setFuel 0;
        	_radarStationPos = getPos _radarStation;    

		
		//# UPDATE MARKER ARRAY AND SEND TO SERVER
	     clientRadarMarkers set [count clientRadarMarkers,[_uniqueID, _radarStationPos, _playerSide, _markerState, group player]];
		publicVariableServer "clientRadarMarkers";
           

		mutexScriptInProgress = false;  

      
		//#UPDATE PLAYER HUD WITH STATUS
		hint "Mobile Radar Station Online";


		//# RADAR DEPLOYMENT SOUND
		playSound3D ["A3\Sounds_F\sfx\alarm.wss", _radarStation]; //alarm

		
		//# SEND SERVER OUR RADAR INFORMATION AND PROCESS THE DEPLOYMENT
		//# TELL THE SERVER TO START THE RADAR UPDATE LOOP FOR CLIENTS
		[[[_uniqueID, _radarStationPos, _playerSide, _markerState, group player], "server\functions\RadarMarkerUpdate.sqf"], "BIS_fnc_execVM", true] call BIS_fnc_MP;



//player SwitchMove "amovpknlmstpslowwrfldnon_amovpercmstpsraswrfldnon"; // Redundant reset of animation state to avoid getting locked in animation. 
