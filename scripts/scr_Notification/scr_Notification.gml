/// @description
/// @param msg The message to display.
//---------------------------------------------------------------------------------
var msg = argument[0];
if(!instance_exists(o_Notification)){
	instance_create_layer(0, 0, "Instances", o_Notification);
}
with(o_Notification){
	if(!ds_exists(ds_notifs, ds_type_list)){
		ds_notifs = ds_list_create();
		var notif_list = ds_notifs;
		ds_list_add(notif_list, msg);
	} else {
		event_perform(ev_other, ev_user0);
		var notif_list = ds_notifs;
		ds_list_add(notif_list, msg);
	}
}
