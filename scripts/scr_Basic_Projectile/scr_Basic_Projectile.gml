/// @description Create Projectiles
// ---------------------------------------------------------------------------------
var dir = aim_dir;
var offset = sprite_width/2;
var xx = lengthdir_x(offset, dir);
var yy = lengthdir_y(offset, dir);
var projectile = instance_create_layer(x+(image_xscale*xx), y+(image_xscale*yy), "Instances", o_Projectile);
with(projectile){
	motion_set(dir, spd);
	image_angle = dir;
}
