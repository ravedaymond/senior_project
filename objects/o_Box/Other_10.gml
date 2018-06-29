/// @description Step Destruction
//---------------------------------------------------------------------------------
switch(hp){
	case 4:
		image_index = 0;
		break;
	case 3:
		image_index = 1;
		break;
	case 2:
		image_index = 2;
		break;
	case 1:
		image_index = 3;
		break;
	case 0:
		instance_destroy();
		break;
}
