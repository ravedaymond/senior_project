/// @description Insert description here
// You can write your code in this editor
if(instance_exists(id)){
	audio_play_sound(snd_enemy_death, 100, false);
	instance_destroy(id);
}