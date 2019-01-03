/// @description Player Move State
// ---------------------------------------------------------------------------------
sprite_index = move_sprite;
//if(hspd < 0 && face == 0){
//	image_speed = image_speed*-1;
//} // Backpedal script? Think on it.

//if(dodge){
//	state = STATE.DODGE;
//}
if(hspd == 0 && vspd == 0){
	state = STATE.IDLE;	
}
scr_Basic_Movement();
scr_Player_Actions();
