/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
if(state != STATE.DYING){
	scr_Input(0);
}
event_inherited();

if(instance_exists(o_p1)){
	if(closest_player_distance < distance_to_object(o_p1)){
		closest_player_distance = distance_to_object(o_p1);
		closest_player = 1;
	}
}
if(instance_exists(o_p2)){
	if(closest_player_distance < distance_to_object(o_p2)){
		closest_player_distance = distance_to_object(o_p2);	
		closest_player = 2;
	}
}
if(instance_exists(o_p3)){
	if(closest_player_distance < distance_to_object(o_p3)){
		closest_player_distance = distance_to_object(o_p3);
		closest_player = 3;
	}
}