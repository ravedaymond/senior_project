/// @description Crawler Move State
// ---------------------------------------------------------------------------------
//sprite_index = spr_enemy_crawler_move;
if(hp <= 0){
	state = STATE.DYING;
} else if(!player_in_range && !attacking){
	state = STATE.IDLE;
} else if(player_in_range && !attacking){
	switch(targeted_player){
		case 0:
			if(distance_to_object(o_p0) > attack_distance){
				scr_Enemy_Movement(o_p0.x, o_p0.y);
			} else {
				alarm[0] = room_speed*attack_length;
				attacking = true;
			}
		break;
		case 1:
			if(distance_to_object(o_p1) > attack_distance){
				scr_Enemy_Movement(o_p1.x, o_p1.y);
			} else {
				alarm[0] = room_speed*attack_length;
				attacking = true;
			}
		break;
		case 2:
			if(distance_to_object(o_p2) > attack_distance){
				scr_Enemy_Movement(o_p2.x, o_p2.y);
			} else {
				alarm[0] = room_speed*attack_length;
				attacking = true;
			}
		break;
		case 3:
			if(distance_to_object(o_p3) > attack_distance){
				scr_Enemy_Movement(o_p3.x, o_p3.y);
			} else {
				alarm[0] = room_speed*attack_length;
				attacking = true;
			}
		break;
	}
}