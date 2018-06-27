/// @description Control Player Face
//---------------------------------------------------------------------------------
switch(move_right-move_left){
	case -1:
		face = 2;
		break;
	case 1:
		face = 0;
		break;
	default:
		switch(move_down-move_up){
			case -1:
				face = 1;
				break;
			case 1:
				face = 3;
				break;
		}
	break;
}
