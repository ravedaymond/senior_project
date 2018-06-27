/// @description Create Projectiles
/// @param type	The type of projectile to create.
//---------------------------------------------------------------------------------
var host = false;
if(object_is_ancestor(object_index, o_Enemy)){
	host = true;
}
var dir = aim_dir;
var offset = 32;
var xx = lengthdir_x(offset, dir);
var yy = lengthdir_y(offset, dir);
var projectile = instance_create_layer(x+xx, y+yy, "Instances", o_Projectile);
with(projectile){
	motion_set(dir, spd);
	hostile = host;
}
