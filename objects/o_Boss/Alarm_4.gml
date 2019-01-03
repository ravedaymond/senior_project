/// @description Insert description here
// You can write your code in this editor
if(!activated){
	if(instance_number(o_Crawler) < 4){
		with(instance_create_layer(x, y-(sprite_width/2)+16, "Instances", o_Crawler)){
			origin_x = x;
			origin_y = y;
		};
		alarm[4] = room_speed*5;
	}
}