/// @description Insert description here
// You can write your code in this editor
var picked_up = false;
with(other){
	if(coins < 99){
		audio_play_sound(snd_coin_pickup, 100, false);
		coins++;
		picked_up = true;
	}
}
if(picked_up)
	instance_destroy();