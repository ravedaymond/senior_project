/// @description Display which key was pressed on input.
// Works hierarchicaly. May not display correct key on notification if higher key is held down.
//---------------------------------------------------------------------------------
var msg = "";
switch(true){
	case move_up:
		msg ="MOVE_UP";
		break;
	case move_down:
		msg ="MOVE_DOWN";
		break;
	case move_left:
		msg ="MOVE_LEFT";
		break;
	case move_right:
		msg ="MOVE_RIGHT";
		break;
	case fire:
		msg ="FIRE";
		break;
	case reload:
		msg ="RELOAD";
		break;
	case dodge:
		msg ="DODGE";
		break;
	case interact:
		msg ="INTERACT";
		break;
	case start:
		msg ="START";
		break;
	case back:
		msg ="BACK";
		break;
	default:
		msg ="UNBOUND_KEY";
		break;
}
return msg;
