/// @description Control Player
//---------------------------------------------------------------------------------
scr_Input(); // Call Input for Player
// Need to transfer the above to a non constant call  - especially when managing kb/gp preference
// as well as gp/kb disconnection when playing.

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

#region Weapon Usage
if(back && !dropped && weapon[? "class"] != -1){
	event_perform(ev_other, ev_user2);
}
if(shoot && !shooting && !reloading){
	if(weapon[? "current_mag"] > 0){
		if(weapon[? "class"] == -1){
			event_perform(ev_other, ev_user3);
		} else {
			event_perform(ev_other, ev_user0);
		}
	} else {
		event_perform(ev_other, ev_user1);
	}
}
if(reload && !reloading){
	event_perform(ev_other, ev_user1);
}
#endregion

scr_Basic_Collision(o_Solid); // Call Collision Model
