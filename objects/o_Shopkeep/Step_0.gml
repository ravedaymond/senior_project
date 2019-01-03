/// @description Shopkeeper Control
// -----
var item_ammo = collision_rectangle(draw_x,draw_y,draw_x+(32*1),draw_y+(16*1),o_Player,false,true);
var item_half = collision_rectangle(draw_x+(32*1),draw_y,draw_x+(32*2),draw_y+(16*1),o_Player,false,true);
var item_heart = collision_rectangle(draw_x+(32*2),draw_y,draw_x+(32*3),draw_y+(16*1),o_Player,false,true);
var item_shield = collision_rectangle(draw_x+(32*3),draw_y,draw_x+(32*4),draw_y+(16*1),o_Player,false,true);
if(item_ammo != noone){
	target_item = 0;
	switch(object_get_name(item_ammo.object_index)){
		case "o_p0":
			target_player = 0;
			var cost = price_ammo;
			with(o_p0){
				if(interact){
					if(equipped[? "type"] != -1){
						if(coins >= cost && equipped[? "ammo_res"] < equipped[? "ammo_maxres"] && equipped[? "ammo_mag"] < equipped[? "ammo_maxmag"]){
							coins-=cost;
							var mr = equipped[? "ammo_maxres"];
							var mm = equipped[? "ammo_maxmag"];
							ds_map_replace(equipped, "ammo_res", mr);
							ds_map_replace(equipped, "ammo_mag", mm);
							audio_play_sound(snd_shop_purchase, 100, false);
							audio_play_sound(snd_shop_accent, 100, false);
						}
					}
				}
			}
		break;
		case "o_p1":
			target_player = 1;
			var cost = price_ammo;
			with(o_p1){
				if(interact){
					if(equipped[? "type"] != -1){
						if(coins >= cost){
							coins-=cost;
							var mr = equipped[? "ammo_maxres"];
							var mm = equipped[? "ammo_maxmag"];
							ds_map_replace(equipped, "ammo_res", mr);
							ds_map_replace(equipped, "ammo_mag", mm);
							audio_play_sound(snd_shop_purchase, 100, false);
							audio_play_sound(snd_shop_accent, 100, false);
						}
					}
				}
			}
		break;
		case "o_p2":
			target_player = 2;
			var cost = price_ammo;
			with(o_p2){
				if(interact){
					if(equipped[? "type"] != -1){
						if(coins >= cost){
							coins-=cost;
							var mr = equipped[? "ammo_maxres"];
							var mm = equipped[? "ammo_maxmag"];
							ds_map_replace(equipped, "ammo_res", mr);
							ds_map_replace(equipped, "ammo_mag", mm);
							audio_play_sound(snd_shop_purchase, 100, false);
							audio_play_sound(snd_shop_accent, 100, false);
						}
					}
				}
			}
		break;
		case "o_p3":
			target_player = 3;
			var cost = price_ammo;
			with(o_p3){
				if(interact){
					if(equipped[? "type"] != -1){
						if(coins >= cost){
							coins-=cost;
							var mr = equipped[? "ammo_maxres"];
							var mm = equipped[? "ammo_maxmag"];
							ds_map_replace(equipped, "ammo_res", mr);
							ds_map_replace(equipped, "ammo_mag", mm);
							audio_play_sound(snd_shop_purchase, 100, false);
							audio_play_sound(snd_shop_accent, 100, false);
						}
					}
				}
			}
		break;
	}
} else if(item_half != noone){
	target_item = 1;
	switch(object_get_name(item_half.object_index)){
		case "o_p0":
			target_player = 0;
			var cost = price_half;
			with(o_p0){
				if(interact){
					if(hp < hp_max){
						if(coins >= cost){
							coins-=cost;
							hp++;
							audio_play_sound(snd_shop_purchase, 100, false);
							audio_play_sound(snd_shop_accent, 100, false);
						}
					}
				}
			}
		break;
		case "o_p1":
			target_player = 1;
			var cost = price_half;
			with(o_p1){
				if(interact){
					if(hp < hp_max){
						if(coins >= cost){
							coins-=cost;
							hp++;
							audio_play_sound(snd_shop_purchase, 100, false);
							audio_play_sound(snd_shop_accent, 100, false);
						}
					}
				}
			}
		break;
		case "o_p2":
			target_player = 2;
			var cost = price_half;
			with(o_p2){
				if(interact){
					if(hp < hp_max){
						if(coins >= cost){
							coins-=cost;
							hp++;
							audio_play_sound(snd_shop_purchase, 100, false);
							audio_play_sound(snd_shop_accent, 100, false);
						}
					}
				}
			}
		break;
		case "o_p3":
			target_player = 3;
			var cost = price_half;
			with(o_p3){
				if(interact){
					if(hp < hp_max){
						if(coins >= cost){
							coins-=cost;
							hp++;
							audio_play_sound(snd_shop_purchase, 100, false);
							audio_play_sound(snd_shop_accent, 100, false);
						}
					}
				}
			}
		break;
	}
} else if(item_heart != noone){
	target_item = 2;
	switch(object_get_name(item_heart.object_index)){
		case "o_p0":
			target_player = 0;
			var cost = price_heart;
			with(o_p0){
				if(interact){
					if(hp+1 < hp_max){
						if(coins >= cost){
							coins-=cost;
							hp+=2;
							audio_play_sound(snd_shop_purchase, 100, false);
							audio_play_sound(snd_shop_accent, 100, false);
						}
					}
				}
			}
		break;
		case "o_p1":
			target_player = 1;
			var cost = price_heart;
			with(o_p1){
				if(interact){
					if(hp+1 < hp_max){
						if(coins >= cost){
							coins-=cost;
							hp+=2;
							audio_play_sound(snd_shop_purchase, 100, false);
							audio_play_sound(snd_shop_accent, 100, false);
						}
					}
				}
			}
		break;
		case "o_p2":
			target_player = 2;
			var cost = price_heart;
			with(o_p2){
				if(interact){
					if(hp+1 < hp_max){
						if(coins >= cost){
							coins-=cost;
							hp+=2;
							audio_play_sound(snd_shop_purchase, 100, false);
							audio_play_sound(snd_shop_accent, 100, false);
						}
					}
				}
			}
		break;
		case "o_p3":
			target_player = 3;
			var cost = price_heart;
			with(o_p3){
				if(interact){
					if(hp+1 < hp_max){
						if(coins >= cost){
							coins-=cost;
							hp+=2;
							audio_play_sound(snd_shop_purchase, 100, false);
							audio_play_sound(snd_shop_accent, 100, false);
						}
					}
				}
			}
		break;
	}
} else if(item_shield != noone){
	target_item = 3;
	switch(object_get_name(item_shield.object_index)){
		case "o_p0":
			target_player = 0;
			var cost = price_shield;
			with(o_p0){
				if(interact){
					if(shld < shld_max){
						if(coins >= cost){
							coins-=cost;
							shld++;
							audio_play_sound(snd_shop_purchase, 100, false);
							audio_play_sound(snd_shop_accent, 100, false);
						}
					}
				}
			}
		break;
		case "o_p1":
			target_player = 1;
			var cost = price_shield;
			with(o_p1){
				if(interact){
					if(shld < shld_max){
						if(coins >= cost){
							coins-=cost;
							shld++;
							audio_play_sound(snd_shop_purchase, 100, false);
							audio_play_sound(snd_shop_accent, 100, false);
						}
					}
				}
			}
		break;
		case "o_p2":
			target_player = 2;
			var cost = price_shield;
			with(o_p2){
				if(interact){
					if(shld < shld_max){
						if(coins >= cost){
							coins-=cost;
							shld++;
							audio_play_sound(snd_shop_purchase, 100, false);
							audio_play_sound(snd_shop_accent, 100, false);
						}
					}
				}
			}
		break;
		case "o_p3":
			target_player = 3;
			var cost = price_shield;
			with(o_p3){
				if(interact){
					if(shld < shld_max){
						if(coins >= cost){
							coins-=cost;
							shld++;
							audio_play_sound(snd_shop_purchase, 100, false);
							audio_play_sound(snd_shop_accent, 100, false);
						}
					}
				}
			}
		break;
	}
} else {
	target_player = -1;
	target_item = -1;
}
if(target_item < 2){
	image_index = 0;
} else {
	image_index = 1;	
}
