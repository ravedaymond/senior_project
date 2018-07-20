/// @description Collision with Enemy Object
// ---------------------------------------------------------------------------------
if(!hostile){
	var damage = dmg;
	with(other){
		hp -= damage;
		state = STATE.DAMAGED;
	}
	instance_destroy();
}
