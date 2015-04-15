//	@file Version: 1.0
//	@file Name: updatePlayerRadarMarkers.sqf
//	@file Author: [404] Costlyy
//	@file Created: 08/12/2012 15:19
// 
// Update: Motavar@judgement.net
// Port: A3Wasteland 
// Date: 4/5/15
// 


	//# DELETE EXISTING MARKERS
	{
		deleteMarkerLocal _x;
	} forEach currentRadarMarkers;

	currentRadarMarkers = [];

//# LOOP THROUGH EACH RADAR MARKER
{ 
  
    private ["_marker", "_colorEmpty", "_colorEnemy", "_colorFriendly", "_colorBoth", "_playerSide", "_markerState", "_colorSelected", "_textSelected", "_playerGroup"]; 
     
    _playerSide = _x select 2;
    _markerState = _x select 3;
    _playerGroup = _x select 4;


	//# DETERMINE IF THE PLAYER SHOULD SEE THE RADAR MARKER
	//# FIRST CHECK IF BLUFOR/OPFOR... IF NOT, THEN CHECK WHAT GROUP A PLAYER BELONGS TO IF INDY

	if  ((side group player == _playerSide && _playerSide in [WEST,EAST]) || group player == _playerGroup) then
	{
		//hint format ["OKAY Update: %1, %2, %3, %4",side group player, _playerSide, group player, _playerGroup];

		_colorEmpty = "ColorBlue";
		_colorEnemy = "ColorRed";
		_colorFriendly = "ColorGreen";
		_colorBoth = "ColorOrange";
    	     _colorSelected = _colorEmpty;
    		_textSelected = "";
    
		switch (_markerState) do {

		    	case 0:{ // No one - default
     			   	 _colorSelected = _colorEmpty;
	     		};
     		
			case 1:{ // Friendly NO enemy
     		   		_colorSelected = _colorFriendly;
     	     		  	_textSelected = "Player detected : Friendly";
	 	     };

		     case 2:{ // Enemy NO friendly
        			_colorSelected = _colorEnemy;
            		_textSelected = "Player detected : Enemy";
	            	hintSilent parseText format ["<t size='2' color='#E01B1B'>%1</t><br/><br/>%2.","ATTENTION!","Enemy player detected in radar proximity!"];
				playSound3D ["A3\Sounds_F\sfx\alarm.wss", _x select 1]; //alarm
		     };
      
			case 3:{ // Enemy AND friendly
        			_colorSelected = _colorBoth;
	            	_textSelected = "Players detected : Mixed";
     		       	hintSilent parseText format ["<t size='2' color='#E01B1B'>%1</t><br/><br/>%2.","ATTENTION!","Enemy and Friendly players detected in radar proximity!"];
				playSound3D ["A3\Sounds_F\sfx\alarm.wss", _x select 1]; //alarm
        		};
	
		};
    
	
		//# SHOW OUR MARKER

		_markerZone = createMarkerLocal [_x select 0, _x select 1];
		_markerZone setMarkerShapeLocal "ELLIPSE";
	     _markerZone setMarkerColorLocal _colorSelected;
		_markerZone setMarkerSizeLocal [350, 350];
		_markerZone setMarkerBrushLocal "Grid";
		_markerZone setMarkerAlphaLocal 0.5; 
		currentRadarMarkers = currentRadarMarkers + [_x select 0];

	}
	
	else 

	{ 
	
	//# ELSE.. DO NOT SHOW MARKER FOR PLAYER
	//hint format ["NOT OKAY Update: %1, %2, %3, %4",side group player, _playerSide, group player, _playerGroup];
	
	};



} forEach clientRadarMarkers;






