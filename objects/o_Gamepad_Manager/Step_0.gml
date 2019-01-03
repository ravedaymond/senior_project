/// @description Insert description here
// -----
#region Gamepad Disconnects (Maybe check only when game running?)
for(var i = 0; i < gp_max; i++){
	if(ds_list_find_value(global.gp, i) != undefined){
		if(ds_list_find_value(global.gp, i) != -1 && !gamepad_is_connected(ds_list_find_value(global.gp, i))){
			show_debug_message("Gamepad["+string(ds_list_find_value(global.gp, i))+"] Disconnected.");
			ds_list_set(global.gp, i, -1);
			global.gp_dcd++;
			gp_count--;
		}
	}
}	
#endregion
#region New Gamepad Connections (Checking only when not playing the game)
if(!global.game_running && gp_count < 4){
	gp_live_count = gp_count;
	for(var i = 0; i < gp_max; i++){
		if(gp_count >= 4){
			break;
		} else if(gamepad_is_connected(i) && ds_list_find_index(global.gp, i) == -1){
			gp_live_count++;
			if(ds_list_find_index(global.gp, -1) != -1){
				ds_list_replace(global.gp,ds_list_find_index(global.gp, -1), i);
				gp_count++;
				global.gp_dcd--;
			} else if(gp_count < gp_live_count){
				ds_list_add(global.gp, i);
				gp_count++;
			}
		}
	}
}
#endregion
