/// @description Spawn Enemy
// -----
if(instance_number(o_Crawler) < 70){
	image_speed = 1;
	image_index = 1;	
}
alarm[0] = room_speed*enemy_spawn_time;
