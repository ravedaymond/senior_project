/// @description Insert description here
// You can write your code in this editor

switch(room){
	case rm_Title:
		if(menu_control){
			if(keyboard_check_pressed(vk_up) || gamepad_button_check_pressed(0, gp_padu)){
				audio_play_sound(snd_menu_move, 1000, false);
				menu_cursor--;
				if(menu_cursor < 0){
					menu_cursor = array_length_1d(title_menu)-1;
				}
			}
			if(keyboard_check_pressed(vk_down) || gamepad_button_check_pressed(0, gp_padd)){
				audio_play_sound(snd_menu_move, 1000, false);
				menu_cursor++;
				if(menu_cursor >= array_length_1d(title_menu)){
					menu_cursor = 0;
				}
			}
			if(keyboard_check_pressed(vk_enter) || gamepad_button_check_pressed(0, gp_face1)){
				show_debug_message("MENU CURSOR AT: " + string(menu_cursor));
				audio_play_sound(snd_menu_select, 1000, false);
				switch(menu_cursor){
					case 0:
						// New Game
						if(room_exists(rm_Player_Selection)){
							room_goto(rm_Player_Selection);
						}
					break;
					case 1:
						// Scoreboard
					break;
					case 2:
						// Options
					break;
					case 3:
						menu_control = false;
						game_end();
					break;
				}
			}
		}
	break;
	case rm_Player_Selection:
		switch(o_Gamepad_Manager.gp_count){
			case 1:
				if(o_player_selector_0.selected_status)
					selection_finished = true;
			break;
			case 2:
				if(o_player_selector_0.selected_status && o_player_selector_1.selected_status)
					selection_finished = true;
			break;
			case 3:
				if(o_player_selector_0.selected_status && o_player_selector_1.selected_status
					&& o_player_selector_2.selected_status)
					selection_finished = true;
			break;
			case 4:
				if(o_player_selector_0.selected_status && o_player_selector_1.selected_status
					&& o_player_selector_2.selected_status && o_player_selector_3.selected_status)
					selection_finished = true;
			break;
			default:
				selection_finished = false;
			break;
		}
		if(selection_finished){
			if(o_player_selector_0.selected_status){
				global.p0_char = o_player_selector_0.selected_char;
				global.p0_cont = true;
			}
			if(o_player_selector_1.selected_status){
				global.p1_char = o_player_selector_1.selected_char;
				global.p1_cont = true;
			}
			if(o_player_selector_2.selected_status){
				global.p2_char = o_player_selector_2.selected_char;
				global.p2_cont = true;
			}
			if(o_player_selector_3.selected_status){
				global.p3_char = o_player_selector_3.selected_char;
				global.p3_cont = true;
			}
			audio_stop_all();
			room_goto(rm_Campus);
		}
	break;
	case rm_Campus:
	break;
}



//
