/// @description Receive Input
/// @param selected_gamepad The gamepad to check for input.
// ---------------------------------------------------------------------------------
selected_gamepad = argument[0];
gamepad_deadzone = 0.25;
if(gamepad_is_connected(selected_gamepad)){
	#region Gamepad Controls
	gamepad_set_axis_deadzone(selected_gamepad, gamepad_deadzone); // Gamepad Joystick Deadzone
	left_xaxis	= gamepad_axis_value(selected_gamepad, gp_axislh); // Left Horizontal Axis
	left_yaxis	= gamepad_axis_value(selected_gamepad, gp_axislv); // Left Vertical Axis
	right_xaxis = gamepad_axis_value(selected_gamepad, gp_axisrh); // Right Horizontal Axis
	right_yaxis = gamepad_axis_value(selected_gamepad, gp_axisrv); // Right Vertical Axis
	move_up		= left_yaxis <= -gamepad_deadzone;
	move_down	= left_yaxis >= gamepad_deadzone;
	move_left	= left_xaxis <= -gamepad_deadzone;
	move_right	= left_xaxis >= gamepad_deadzone;
	aim_dir		= point_direction(0, 0, right_xaxis, right_yaxis);
	shoot		= gamepad_button_check(selected_gamepad, gp_shoulderrb);
	cast		= gamepad_button_check_pressed(selected_gamepad, gp_shoulderr);
	reload		= gamepad_button_check(selected_gamepad, gp_face3);
	dodge		= gamepad_button_check(selected_gamepad, gp_shoulderlb);
	interact	= gamepad_button_check_pressed(selected_gamepad, gp_face1);
	start		= gamepad_button_check(selected_gamepad, gp_start);
	back		= gamepad_button_check(selected_gamepad, gp_face2);
	#endregion
}
//else { 
//	#region Keyboard Controls
//	left_xaxis	= "Gamepad Disconnected.";
//	left_yaxis	= "Gamepad Disconnected.";
//	right_xaxis = "Gamepad Disconnected.";
//	right_yaxis = "Gamepad Disconnected.";
//	move_up		= keyboard_check(ord("W"));
//	move_down	= keyboard_check(ord("S"));
//	move_left	= keyboard_check(ord("A"));
//	move_right	= keyboard_check(ord("D"));
//	aim_dir		= point_direction(self.x, self.y, mouse_x, mouse_y);
//	shoot		= mouse_check_button(mb_left);
//	cast		= keyboard_check_pressed(ord("F"));
//	reload		= keyboard_check(ord("R"));
//	dodge		= keyboard_check(vk_space);
//	interact	= keyboard_check_pressed(ord("E"));
//	start		= keyboard_check(vk_escape);
//	back		= mouse_check_button(mb_right);
//	#endregion
//}
