/// @description Insert description here
// You can write your code in this editor
if(gamepad_is_connected(image_index)){
	if(selected_status){
		if(gamepad_button_check_pressed(image_index, gp_face2)){
			selected_status = false;
		}
	} else {
		if(gamepad_button_check_pressed(image_index, gp_padu)){
			audio_play_sound(snd_menu_move, 800, false);
			arrow_up = 82;
			selected_char++;
			if(selected_char >= 4){
				selected_char = 0;
			}
		} else {
			arrow_up = 70;
		}
		if(gamepad_button_check_pressed(image_index, gp_padd)){
			audio_play_sound(snd_menu_move, 800, false);
			arrow_down = 88;
			selected_char--;
			if(selected_char < 0){
				selected_char = 3;	
			}
		} else {
			arrow_down = 76;	
		}
		if(gamepad_button_check_pressed(image_index, gp_face1)){
			selected_status = true;
		}
	}
}
