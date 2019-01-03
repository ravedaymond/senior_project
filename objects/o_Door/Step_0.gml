/// @description Insert description here
// You can write your code in this editor
if(unlock_cost > 0){
	var player_access = collision_rectangle(x-(sprite_width/2), y, x+(sprite_width/2), y+16, o_Player, false, true);
	if(player_access != noone){
		switch(object_get_name(player_access.object_index)){
			case "o_p0":
				target_player = 0;
				if(unlock_cost > 0){
					var charge = 0;
					with(o_p0){
						if(interact){
							if(coins > 0){
								coins--;
								charge++;
								audio_play_sound(snd_shop_purchase, 1000, false);
								audio_play_sound(snd_shop_accent, 1000, false);
							}
						}
					}
					unlock_cost-=charge;
				}
			break;
			case "o_p1":
				target_player = 1;
				if(unlock_cost > 0){
					var charge = 0;
					with(o_p1){
						if(interact){
							if(coins > 0){
								coins--;
								charge++;
								audio_play_sound(snd_shop_purchase, 1000, false);
								audio_play_sound(snd_shop_accent, 1000, false);
							}
						}
					}
					unlock_cost-=charge;
				}
			break;
			case "o_p2":
				target_player = 2;
				if(unlock_cost > 0){
					var charge = 0;
					with(o_p0){
						if(interact){
							if(coins > 0){
								coins--;
								charge++;
								audio_play_sound(snd_shop_purchase, 1000, false);
								audio_play_sound(snd_shop_accent, 1000, false);
							}
						}
					}
					unlock_cost-=charge;
				}
			break;
			case "o_p3":
				target_player = 3;
				if(unlock_cost > 0){
					var charge = 0;
					with(o_p0){
						if(interact){
							if(coins > 0){
								coins--;
								charge++;
								audio_play_sound(snd_shop_purchase, 1000, false);
								audio_play_sound(snd_shop_accent, 1000, false);
							}
						}
					}
					unlock_cost-=charge;
				}
			break;
		}
	} else {
		target_player = -1;
	}
	switch(unlock_cost){
		case 29:
			image_index = 1;
		break;
		case 24:
			image_index = 2;
		break;
		case 18:
			image_index = 3;
		break;
		case 12:
			image_index = 4;
		break;
		case 6:
			image_index = 5;
		break;
	}
} else {
	if(instance_exists(o_p0))
		p0 = collision_rectangle(x-(sprite_width/2), y, x+(sprite_width/2), y+16, o_p0, false, true);
	if(instance_exists(o_p1))
		p1 = collision_rectangle(x-(sprite_width/2), y, x+(sprite_width/2), y+16, o_p1, false, true);
	if(instance_exists(o_p2))
		p2 = collision_rectangle(x-(sprite_width/2), y, x+(sprite_width/2), y+16, o_p2, false, true);
	if(instance_exists(o_p3))
		p3 = collision_rectangle(x-(sprite_width/2), y, x+(sprite_width/2), y+16, o_p3, false, true);
	if(image_index <= 6){
		image_index = 6;
		if(p0 != noone || p1 != noone || p2 != noone || p3 != noone){
			image_speed = 1;
			audio_play_sound(snd_door_a, 1, false);
			audio_play_sound(snd_door_b, 1, false);
		}
	} else {
		if(image_index = 27){
			image_speed = 0;
			image_index = 27;
			if(p0 != noone && p1 != noone && p2 != noone && p3 != noone){
				if(p0 != -1){
					with(o_p0){
						if(interact){
							audio_stop_all();
							audio_master_gain(0);
							room_goto(rm_Boss);	
						}
					}
				}
				if(p1 != -1){
					with(o_p1){
						if(interact){
							audio_stop_all();
							audio_master_gain(0);
							room_goto(rm_Boss);	
						}
					}
				}
				if(p2 != -1){
					with(o_p2){
						if(interact){
							audio_stop_all();
							audio_master_gain(0);
							room_goto(rm_Boss);	
						}
					}
				}
				if(p3 != -1){
					with(o_p3){
						if(interact){
							audio_stop_all();
							audio_master_gain(0);
							room_goto(rm_Boss);	
						}
					}
				}
			}
		}
	}
}
