/// @description Player Dying State
// ---------------------------------------------------------------------------------
image_speed = 0;
image_index = 0;
hspd = 0;
vspd = 0;
if(!dropped){
	event_perform(ev_other, ev_user2);
}
switch(character){
	case 0:
		sprite_index = spr_player_kyle_down;
	break;
	case 1:
		sprite_index = spr_player_schwartz_down;
	break;
	case 2:
		sprite_index = spr_player_shenja_down;
	break;
	case 3:
		sprite_index = spr_player_hacker_down;
	break;	
}
if(!reviving){
	reviving = true;
	alarm[4] = room_speed*5;
}