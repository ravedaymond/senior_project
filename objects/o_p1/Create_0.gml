/// @description Insert description here
// You can write your code in this editor
character = global.p1_char;
gui_corner = 1;
// Inherit the parent event
event_inherited();

if(instance_exists(o_p0)){
	if(closest_player_distance < distance_to_object(o_p0)){
		closest_player_distance = distance_to_object(o_p0);
		closest_player = 0;
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