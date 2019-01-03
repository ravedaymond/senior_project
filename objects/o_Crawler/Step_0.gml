/// @description Crawler Control
// ---------------------------------------------------------------------------------
event_inherited();
switch(state){
	case STATE.IDLE:
		scr_Enemy_Crawler_Idle();
	break;
	case STATE.MOVE:
		scr_Enemy_Crawler_Move();
	break;
	case STATE.DYING:
		scr_Enemy_Crawler_Dying();
	break;
}

