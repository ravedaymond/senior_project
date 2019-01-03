/// @description Insert description here
// You can write your code in this editor
if(other.hostile){
	var dir = image_angle;
	with(other){
		audio_play_sound(snd_shoot, 100, false);
		sprite_index = spr_proto_projectile;
		hostile = false;
		dmg*=2;
		motion_set(dir, spd);
	}
}