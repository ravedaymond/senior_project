/// @description Basic Player Movement Model
// ---------------------------------------------------------------------------------
#region Vertical Movement Control
if(move_down || move_up){
	vspd += sign(move_down-move_up)*acc;
	if(abs(vspd) > spd){
		vspd = sign(vspd)*spd;
	}
} else { // Apply Vertical Friction
	vspd -= sign(vspd)*fric;
	if(abs(vspd) <= 0){ // Prevent VSPD from looping miniscule +/- values.
		vspd = 0; // Also reset VSPD to 0 when Vertical Friction fully applied.
	}
}
#endregion

#region Horizontal Movement Control
if(move_right || move_left){
	hspd += sign(move_right-move_left)*acc;
	if(abs(hspd) > spd){
		hspd = sign(hspd)*spd;
	}
} else { // Apply Horizontal Friction
	hspd -= sign(hspd)*fric;
	if(abs(hspd) <= 0){ // Prevent HSPD from looping miniscule +/- values.
		hspd = 0; // Also reset HSPD to 0 when Horizontal Friction fully applied.	
	}
}
#endregion

//show_debug_message("LEFT: " + string(keyboard_check_released(ord("A"))));
//show_debug_message("  UP: " + string(keyboard_check_released(ord("W"))));
//show_debug_message("DOWN: " + string(keyboard_check_released(ord("S"))));
//show_debug_message("RIGHT: " + string(keyboard_check_released(ord("D"))));