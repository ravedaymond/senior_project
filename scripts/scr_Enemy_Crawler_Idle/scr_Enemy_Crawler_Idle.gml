/// @description Crawler Idle State
// ---------------------------------------------------------------------------------
//sprite_index = spr_enemy_crawler_idle;
if(hp <= 0){
	roaming = false;
	state = STATE.DYING;
	exit;
} else if(player_in_range){
	roaming = false;
	state = STATE.MOVE;
	exit;
}
if(!roaming && !attacking){
	roaming = true;
	roam_x = irandom_range(origin_x-roam_range,origin_x+roam_range);
	roam_y = irandom_range(origin_y-roam_range,origin_y+roam_range);
	alarm[9] = room_speed*roam_time;
}
if(roaming){
	scr_Enemy_Movement(roam_x, roam_y);
}

//if(awareness[|2]){
//	state = STATE.MOVE;
//	exit;
//}
//if(awareness[|1]){ // Cautios Idle
//	if(!idling)
//		scr_Enemy_Crawler_Cautious();
//} else {
//	if(!idling)
//		scr_Enemy_Crawler_Unaware();
//}
