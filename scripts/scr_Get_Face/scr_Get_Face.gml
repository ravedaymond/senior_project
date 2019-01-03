/// @description Control Player Face and Image X-Scale
// ---------------------------------------------------------------------------------
if(aim_dir >= 315 || aim_dir < 45){
	face = 0;
	image_xscale = -1;
	if(sign(hspd)){
		image_speed = 1;
	} else {
		image_speed = -1;
	}
} else if(aim_dir >= 45 && aim_dir < 90){
	face = 1;
	image_xscale = -1;
	if(sign(hspd)){
		image_speed = 1;
	} else {
		image_speed = -1;
	}
} else if(aim_dir >= 90 && aim_dir < 135){
	face = 2;
	image_xscale = 1;
	if(sign(hspd)){
		image_speed = -1;
	} else {
		image_speed = 1;
	}
} else if(aim_dir >= 135 && aim_dir < 225){
	face = 3;
	image_xscale = 1;
	if(sign(hspd)){
		image_speed = -1;
	} else {
		image_speed = 1;
	}
} else if(aim_dir >= 225 && aim_dir < 270){
	face = 4;
	image_xscale = 1;
	if(sign(hspd)){
		image_speed = -1;
	} else {
		image_speed = 1;
	}
} else if(aim_dir >= 270 && aim_dir < 315){
	face = 5;
	image_xscale = -1;
	if(sign(hspd)){
		image_speed = 1;
	} else {
		image_speed = -1;
	}
}
