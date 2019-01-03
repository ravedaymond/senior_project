/// @description Insert description here
// You can write your code in this editor
if(!hacker_attack){
	hacker_attack = true;
	damaged = true;
	alarm[11] = invuln_time*room_speed;
	event_perform(ev_other, ev_user15);
	alarm[8] = room_speed*0.75;	
}

