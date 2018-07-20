/// @description Shell Pattern
// ---------------------------------------------------------------------------------
var dir = aim_dir;
var offset = sprite_width/2;
var xx = lengthdir_x(offset, dir);
var yy = lengthdir_y(offset, dir);
repeat(4){
	with(instance_create_layer(x+(image_xscale*xx), y+(image_xscale*yy), "Instances", o_Shell)){
		motion_set(dir+irandom_range(-20, 20), spd);
		image_angle = dir;
	}
}
