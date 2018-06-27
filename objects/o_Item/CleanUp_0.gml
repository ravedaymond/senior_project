/// @description Instance Clean Up
//---------------------------------------------------------------------------------
if(instance_exists(id)){
	instance_destroy(id);
	show_debug_message("### CLEAN_UP: Item <"+string(id)+">");
}
