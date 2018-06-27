/// @description Display which key was pressed on input.
// Works hierarchicaly. May not display correct key on notification if higher key is held down.
//---------------------------------------------------------------------------------
switch(true){
	case move_up:
		return "MOVE_UP";
		break;
	case move_down:
		return "MOVE_DOWN";
		break;
	case move_left:
		return "MOVE_LEFT";
		break;
	case move_right:
		return "MOVE_RIGHT";
		break;
	case fire:
		return "FIRE";
		break;
	case reload:
		return "RELOAD";
		break;
	case dodge:
		return "DODGE";
		break;
	case interact:
		return "INTERACT";
		break;
	case start:
		return "START";
		break;
	case back:
		return "BACK";
		break;
	default:
		return "UNBOUND_KEY";
		break;
}
