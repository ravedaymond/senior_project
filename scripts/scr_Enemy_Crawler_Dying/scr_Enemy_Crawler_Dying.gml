/// @description Crawler Dying State
// ---------------------------------------------------------------------------------
sprite_index = spr_enemy_crawler_dying;
hspd = 0;
vspd = 0;
if(image_index > image_number - 1){
	repeat(3){
		instance_create_layer(x+irandom_range(-20, 20), y+irandom_range(-20, 20), "Instances", o_Coin);	
	}
	instance_destroy();
}