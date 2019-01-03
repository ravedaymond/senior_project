/// @description Enemy Move Script
/// @param argx Target X Point
/// @param argy Target Y Point
var argx = argument0;
var argy = argument1;
if(x == argx && y == argy){
	hspd = 0;
	vspd = 0;
} else if(distance_to_point(argx, argy) < spd){
	hspd = sign(argx-x);
	vspd = sign(argy-y);
} else {
	hspd += sign(argx-x)*acc;
	vspd += sign(argy-y)*acc;
	if(abs(hspd) > spd){
		hspd = sign(hspd)*spd;	
	}
	if(abs(vspd) > spd){
		vspd = sign(vspd)*spd;	
	}
}
scr_Enemy_Collision(o_Solid);
x+=hspd;
y+=vspd;
