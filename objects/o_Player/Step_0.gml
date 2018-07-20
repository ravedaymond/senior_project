/// @description Control Player
// ---------------------------------------------------------------------------------

/*
	Need to transfer input to a non constant call, especially when 
	managing kb/gp preference as well as gp/kb disconnection when playing.
*/
scr_Input();

// Debugging Purposes Only
if(start){
	game_restart();
}

#region Control Depth and Face
depth = -y;
scr_Player_Face();
#endregion

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
	case STATE.DAMAGED:
		scr_Player_State_Damaged();
	break;
	case STATE.INJURED:
		scr_Player_State_Injured();
	default:
		scr_Basic_Movement();
	break;
}
#endregion

// Call Collision Model
scr_Basic_Collision(o_Solid);
