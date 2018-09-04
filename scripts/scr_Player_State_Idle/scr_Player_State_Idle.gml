/// @description Player Idle State
// ---------------------------------------------------------------------------------
sprite_index = idle_sprite;
if(move_up || move_down || move_left || move_right){
	state = STATE.MOVE;
}
//if(dodge){
//	state = STATE.DODGE;
//}
scr_Player_Actions();
