/// @description Take Damage
// ---------------------------------------------------------------------------------
if(!other.hostile && !damaged && state != STATE.DYING){
	event_perform(ev_other, ev_user15);
	if(other.sprite_index != spr_attack_shen){
		instance_destroy(other);
	}
}
