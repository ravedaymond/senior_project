/// @description Player Control
// ---------------------------------------------------------------------------------
/*
	Need to transfer input to a non constant call, especially when 
	managing kb/gp preference as well as gp/kb disconnection when playing.
*/
scr_Input();
event_inherited();
// Debugging Purposes Only
if(start){
	game_restart();
}

#region Execute Player State
switch(state){
	case STATE.IDLE:
		scr_Player_State_Idle();
	break;
	case STATE.MOVE:
		scr_Player_State_Move();
	break;
	case STATE.DODGE:
		scr_Player_State_Dodge();
	break;
	case STATE.INJURED:
		scr_Player_State_Injured();
	break;
	case STATE.DYING:
		scr_Player_State_Dying();
	break;
	default:
		scr_Basic_Movement();
	break;
}
#endregion

// Call Collision Model
scr_Basic_Collision(o_Solid);
