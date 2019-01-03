/// @description Insert description here
// You can write your code in this editor
if(state != STATE.DYING){
scr_Input(2);
}
// Inherit the parent event
event_inherited();

if(instance_exists(o_p0)){
	if(closest_player_distance < distance_to_object(o_p0)){
		closest_player_distance = distance_to_object(o_p0);	
		closest_player = 0;
	}
}
if(instance_exists(o_p1)){
	if(closest_player_distance < distance_to_object(o_p1)){
		closest_player_distance = distance_to_object(o_p1);
		closest_player = 1;
	}
}
if(instance_exists(o_p3)){
	if(closest_player_distance < distance_to_object(o_p3)){
		closest_player_distance = distance_to_object(o_p3);
		closest_player = 3;
	}
}