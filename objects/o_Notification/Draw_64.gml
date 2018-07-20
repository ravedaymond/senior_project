/// @description Draw Notifications
// ---------------------------------------------------------------------------------
var notif_list = ds_notifs;
var list_size = ds_list_size(notif_list);
var yy = 0;
c = c_silver;
repeat(list_size){
	draw_text_color(gui_width-200, gui_height+(yy*notif_height)-(list_size*notif_height),
		">" + ds_list_find_value(notif_list, yy), c, c, c, c, notif_alpha);
	yy++;
}

if(notif_decaying){ // Fade out if Decaying
	notif_alpha -= 0.1;
}

if(notif_alpha <= 0){ // Destroy Instance
	instance_destroy();
	show_debug_message("### INSTANCE_DESTROY: Notification Object");
}
