/// @description Notification Instance Clean Up
//---------------------------------------------------------------------------------
if(ds_exists(ds_notifs, ds_type_list)){
	ds_list_destroy(ds_notifs);
	show_debug_message("### CLEAN_UP: ds_notifs Data Structure");
}
