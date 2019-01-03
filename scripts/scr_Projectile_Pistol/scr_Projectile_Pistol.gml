/// @description Projectile Bullet Pattern
/// @param object The type of projectile to be used in this pattern.
// ---------------------------------------------------------------------------------
var arg0 = argument[0];
var dir = aim_dir;
var offset = sprite_width/2;
var xx = lengthdir_x(offset, dir);
var yy = lengthdir_y(offset, dir);
var this = object_index;
var projectile = instance_create_layer(x+(image_xscale*xx), y+(image_xscale*yy), "Instances", arg0);
with(projectile){
	if(object_is_ancestor(this, o_Enemy)){
		hostile = true;
		sprite_index = spr_proto_projectileH;
	} else {
		hostile = false;
	}
	motion_set(dir, spd);
	dmg = 4;
	image_angle = dir;
}
