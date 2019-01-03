/// @description Manage Awareness Status
// ---------------------------------------------------------------------------------
if(player_in_range){
	if(awareness[|1] && !awareness[|2]){
		ds_list_set(awareness, 2, true);
		//show_debug_message("Awareness Status: Cautious => Alerted");
	} else if(!awareness[|1]){
		ds_list_set(awareness, 1, true);
		//show_debug_message("Awareness Status: Unaware => Cautious");
	}
} else {
	if(awareness[|2]){
		ds_list_set(awareness, 2, false);
		//show_debug_message("Awareness Status: Alerted => Cautious");
	} else if(awareness[|1]){
		ds_list_set(awareness, 1, false);
		//show_debug_message("Awareness Status: Cautious => Unaware");
	}
}
ds_list_set(awareness, 0, false); // Reset awareness trigger