/// @description Collision with Player Object
// ---------------------------------------------------------------------------------
if(hostile){
	var damage = dmg;
	with(other){
		hp -= damage;
		state = STATE.DAMAGED;
	}
	instance_destroy();
}
