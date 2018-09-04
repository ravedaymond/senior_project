/// @description Take Damage
// ---------------------------------------------------------------------------------
if(other.hostile && !damaged){
	event_perform(ev_other, ev_user15);
	instance_destroy(other);
}
