// ******************************************************************************************
// * This project is licensed under the GNU Affero GPL v3. Copyright © 2014 A3Wasteland.com *
// ******************************************************************************************
// Motavar@judgement.net
// Create static buildings for Gun Stores/Vehicle Stores/General Stores & Misc
//


//Gvozdno
//=============================================================
//Building Near GunStore
_pos = [8743.72,11668.7,-0.00131226];
_object = createVehicle ["Land_i_Shop_02_V1_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 350.999;
_object setPosATL _pos;

//Building near large building
_pos = [8774.19,11609,0.700302];
_object = createVehicle ["Land_i_Shop_01_V1_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 83.1989;
_object setPosATL _pos;

//Building 
_pos = [8736.3,11606.2,-0.00668335];
_object = createVehicle ["Land_i_Shop_02_V2_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 173.398;
_object setPosATL _pos;

//Tower
_pos = [8819.62,11658.2,0];
_object = createVehicle ["Land_Cargo_Tower_V1_F", _pos, [], 0, "CAN_COLLIDE"];
_object setDir 10.9997;
_object setPosATL _pos;

