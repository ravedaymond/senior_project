/// @description Projectile Spread Pattern
/// @param object The type of projectile to be used in this pattern.
// ---------------------------------------------------------------------------------
var arg0 = argument[0];
var dir = aim_dir;
var offset = sprite_width/2;
var xx = lengthdir_x(offset, dir);
var yy = lengthdir_y(offset, dir);
var this = object_index;
repeat(4){
	var projectile = instance_create_layer(x+(image_xscale*xx), y+(image_xscale*yy), "Instances", arg0);
	with(projectile){
		if(object_is_ancestor(this, o_Enemy)){
			hostile = true;
			sprite_index = spr_proto_projectileH;
		} else {
			hostile = false;
			sprite_index = spr_proto_projectile;
		}
		dmg = 3;
		motion_set(dir+irandom_range(-20, 20), spd);
		image_angle = dir;
	}
}
