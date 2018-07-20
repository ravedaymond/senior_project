/// @description Player Idle State
// ---------------------------------------------------------------------------------
sprite_index = spr_char_temp_idle;
if(damaged){
	state = STATE.DAMAGED;
}
if(move_up || move_down || move_left || move_right){
	state = STATE.MOVE;
}
if(dodge){
	state = STATE.DODGE;	
}
scr_Player_Actions();
