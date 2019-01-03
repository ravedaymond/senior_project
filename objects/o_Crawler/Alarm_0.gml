/// @description Attack
switch(targeted_player){
		case 0:
			var dir = point_direction(x, y, o_p0.x, o_p0.y);
		break;
		case 1:
			var dir = point_direction(x, y, o_p1.x, o_p1.y);
		break;
		case 2:
			var dir = point_direction(x, y, o_p2.x, o_p2.y);
		break;
		case 3:
			var dir = point_direction(x, y, o_p3.x, o_p3.y);
		break;
}
var offset = sprite_width/2;
var this = object_index;
audio_play_sound(snd_shoot, 100, false);
var projectile = instance_create_layer(x+(image_xscale), y+(image_xscale), "Instances", o_Projectile);
with(projectile){
	if(object_is_ancestor(this, o_Enemy)){
		hostile = true;
		sprite_index = spr_proto_projectileH;
	} else {
		hostile = false;
		sprite_index = spr_proto_projectile;
	}
	motion_set(dir+irandom_range(-20, 20), spd);
	image_angle = dir;
}
attacking = false;