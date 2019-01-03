/// @description Retrieve the state of a living object in human-readable form.
/// @param state The state variable of the living object.
// ---------------------------------------------------------------------------------
var state = argument[0];

switch(state){
	case STATE.IDLE:
		return "IDLE";
	break;
	case STATE.MOVE:
		return "MOVE";
	break;
	case STATE.DODGE:
		return "DODGE";
	break;
	case STATE.INJURED:
		return "INJURED";
	break;
	case STATE.DYING:
		return "DYING";
	break;
}