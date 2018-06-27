/// @description Ininitialize Notification Object
//---------------------------------------------------------------------------------
ds_notifs		= -1; // Placeholder value for used DS_LIST
notif_decaying	= false;
notif_alpha		= 1;
notif_color		= c_white;
notif_height	= string_height("H");
gui_height		= display_get_gui_height();
gui_width		= display_get_gui_width();
alarm[0]		= room_speed * 1.5;
