/// @description Insert description here
// You can write your code in this editor
if(hp <= 0){
	repeat(10){
		instance_create_layer(x+irandom_range(-50, 50), y+irandom_range(-30, 30), "Instances", o_Coin);	
	}
	instance_destroy();	
}
if(image_index < 1){
	image_speed = 0;
}
if(image_index == 12){
	var xx = x;
	var yy = y;
	with(instance_create_layer(x, y-sprite_height, "Instances", o_Crawler)){
		origin_x = xx;
		origin_y = yy;
	};
}
