/// @description Enemy Awareness AI
// ---------------------------------------------------------------------------------
//player_in_range = point_distance(x, y, o_Player.x, o_Player.y) < range;
/*	awareness[|0]: Control Trigger
	awareness[|1]: Cautious
	awareness[|2]: Alerted
	awareness[|3]: Start Cautious Timer
	awareness[|4]: End Cautious Ti mer
	awareness[|5]: Start Alert Timer
	awareness[|6]: End Alert Timer */
if(player_in_range){
	if(awareness[|1] && !awareness[|2]){ // Cautious => Alerted
		if(!awareness[|0]){
			ds_list_set(awareness, 0, true);
			alarm[10] = room_speed*awareness[|5];
			show_debug_message("Changing to Alerted Status in "+string(awareness[|5])+" seconds...");
		}
	} else if(!awareness[|1]){ // Unaware => Cautious
		if(!awareness[|0]){
			ds_list_set(awareness, 0, true);
			alarm[10] = room_speed*awareness[|3];
			show_debug_message("Changing to Cautious Status in "+string(awareness[|3])+" seconds...");
		}
	}	
} else {
	if(awareness[|2]){ // Alerted => Cautious
		if(!awareness[|0]){
			ds_list_set(awareness, 0, true);
			alarm[10] = room_speed*awareness[|6];
			show_debug_message("Changing from Alerted Status in "+string(awareness[|6])+" seconds...");
		}
	} else if (awareness[|1]){ // Cautious => Unaware
		if(!awareness[|0]){
			ds_list_set(awareness, 0, true);
			alarm[10] = room_speed*awareness[|4];
			show_debug_message("Changing from Cautious Status in "+string(awareness[|4])+" seconds...");
		}
	}
}
