/// @description Control Player Object
//---------------------------------------------------------------------------------
scr_Input(); // Call Input for Player
// Need to transfer the above to a non constant call  - especially when managing kb/gp preference
// as well as gp/kb disconnection when playing.

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
		scr_Player_State_Move();
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

if(fire){
	scr_Create_Projectile();
}
scr_Basic_Collision(o_Solid); // Call Collision Model
