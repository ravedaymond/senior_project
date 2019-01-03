/// @description Player Control
// ---------------------------------------------------------------------------------
/*
	Need to transfer input to a non constant call, especially when 
	managing kb/gp preference as well as gp/kb disconnection when playing.
*/
event_inherited();
scr_Get_Face();
if(start){
	game_restart();
}
if(hp <= 0){
	state = STATE.DYING;
}
#region Execute Player State
switch(state){
	case STATE.IDLE:
		scr_Player_State_Idle();
	break;
	case STATE.MOVE:
		scr_Player_State_Move();
	break;
	case STATE.DYING:
		scr_Player_State_Dying();
	break;
}
#endregion

// Call Collision Model
scr_Basic_Collision(o_Solid);
