/// @description Collision with Solid Object
// ---------------------------------------------------------------------------------
with(other){
	if(object_is_ancestor(object_index, o_Destructable)){
		hp--;
		event_perform(ev_other, ev_user0);
		audio_play_sound(snd_player_damaged, 100, false);
	}
}
if(sprite_index != spr_attack_shen){
	instance_destroy();
}