/// @description Game Control
// ---------------------------------------------------------------------------------
if(keyboard_check_pressed(vk_delete)){
	if(debug){
		debug = false;
	} else {
		debug = true;
		show_debug_overlay(true);
	}
}
