/// @description Insert description here
// You can write your code in this editor
var shield_status = 0;
if(o_Tower0.activated){
	shield_status++;
}
if(o_Tower1.activated){
	shield_status++;
}
if(o_Tower2.activated){
	shield_status++;
}
if(o_Tower3.activated){
	shield_status++;
}
shield = shield_status;
if(shield == 4){
	vulnerable = true;
	alarm[0] = room_speed*5;
}
if(!attacking){
	attacking = true;
	alarm[1] = room_speed*4;
}
if(hp == hp_max-1){
	alarm[4] = room_speed*5;	
}
if(hp <= 0){
	state = STATE.DYING;
}	
if(state == STATE.DYING){
	room_goto(rm_Splash);	
}