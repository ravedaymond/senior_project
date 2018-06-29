/// @description Create Projectiles
//---------------------------------------------------------------------------------
var dir = aim_dir;
var offset = sprite_width;
var xx = lengthdir_x(offset, dir);
var yy = lengthdir_y(offset, dir);
var projectile = instance_create_layer(x+xx, y+yy, "Instances", o_Projectile);
with(projectile){
	motion_set(dir, spd);
	image_angle = dir;
}
