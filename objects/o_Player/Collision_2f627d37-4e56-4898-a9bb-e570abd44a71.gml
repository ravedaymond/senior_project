/// @description Insert description here
// You can write your code in this editor
if(other.state == STATE.DYING){
	other.image_index = 1;
	if(interact){
		reviving = false;
		other.state = STATE.IDLE;
		other.hp = 7;
	}
}