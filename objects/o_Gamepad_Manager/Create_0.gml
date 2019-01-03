/// @description 
// -----
global.gp = ds_list_create();
gp_max = 4;
gp_count = 0;
gp_live_count = 0;
global.gp_dcd = 0;
for(var i = 0; i < gp_max; i++){
	for(var j = 0; j < gp_max; j++){
		if(gamepad_is_connected(j) && ds_list_find_index(global.gp, j) != -1){
			ds_list_add(global.gp, j);
			gp_count++;
		}
	}
}
// GUI Draw Variables
gui_width		= display_get_gui_width();
gui_height		= display_get_gui_height();
menu_font		= font_menu;
menu_textHeight = font_get_size(font_menu);
