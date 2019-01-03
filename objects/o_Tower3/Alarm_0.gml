/// @description Spawn Enemy
// -----
if(!activated){
	if(instance_number(o_Crawler) < 4){
		with(instance_create_layer(x, y-16, "Instances", o_Crawler)){
			origin_x = x;
			origin_y = y;
		};
		alarm[0] = room_speed*5;
	}
}

