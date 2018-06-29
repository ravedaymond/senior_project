/// @description Receive Input
//---------------------------------------------------------------------------------
gamepad_count		= gamepad_get_device_count();
gamepad_deadzone	= 0.35;

if(gamepad_is_connected(0)){
	#region Gamepad Controls
	gamepad_set_axis_deadzone(0, gamepad_deadzone); // Gamepad Joystick Deadzone
	left_xaxis	= gamepad_axis_value(0, gp_axislh); // Left Horizontal Axis
	left_yaxis	= gamepad_axis_value(0, gp_axislv); // Left Vertical Axis
	right_xaxis = gamepad_axis_value(0, gp_axisrh); // Right Horizontal Axis
	right_yaxis = gamepad_axis_value(0, gp_axisrv); // Right Vertical Axis
	move_up		= left_yaxis <= -gamepad_deadzone;
	move_down	= left_yaxis >= gamepad_deadzone;
	move_left	= left_xaxis <= -gamepad_deadzone;
	move_right	= left_xaxis >= gamepad_deadzone;
	aim_dir		= point_direction(0, 0, right_xaxis, right_yaxis);
	shoot		= gamepad_button_check(0, gp_shoulderrb);
	cast		= gamepad_button_check_pressed(0, gp_shoulderr);
	reload		= gamepad_button_check(0, gp_face3);
	dodge		= gamepad_button_check(0, gp_shoulderlb);
	interact	= gamepad_button_check_pressed(0, gp_face1);
	start		= gamepad_button_check(0, gp_start);
	back		= gamepad_button_check(0, gp_face2);
	#endregion
} else { 
	#region Keyboard Controls
	left_xaxis	= "Gamepad Disconnected.";
	left_yaxis	= "Gamepad Disconnected.";
	right_xaxis = "Gamepad Disconnected.";
	right_yaxis = "Gamepad Disconnected.";
	move_up		= keyboard_check(ord("W"));
	move_down	= keyboard_check(ord("S"));
	move_left	= keyboard_check(ord("A"));
	move_right	= keyboard_check(ord("D"));
	aim_dir		= point_direction(self.x, self.y, mouse_x, mouse_y);
	shoot		= mouse_check_button(mb_left);
	cast		= keyboard_check_pressed(ord("F"));
	reload		= keyboard_check(ord("R"));
	dodge		= keyboard_check(vk_space);
	interact	= keyboard_check_pressed(ord("E"));
	start		= keyboard_check(vk_escape);
	back		= mouse_check_button(mb_right);
	#endregion
}

#region Input Notifications
//if(keyboard_check_pressed(vk_anykey) || mouse_check_button_pressed(mb_any)){
//	scr_Notification("INPUT: " + scr_Input_Get_Type());
//}
#endregion
