/// @description Player Object Model
// ---------------------------------------------------------------------------------
#region Inheritance
event_inherited();
// Override Movement Variables
spd		= 5;
acc		= 1.5;
fric	= 0.5;
// Override Attribute Variables
state		= STATE.IDLE;
hp			= 5;
hp_max		= 10;
shld		= 0;
shld_max	= 5;
invuln_time = 2;
#endregion

#region Object Unique Variables
image_index = 0;
coins = 10;
xscale_mod  = 1;
closest_player = -1;
closest_player_distance = 0;
//character = -1;
switch(character){
	case 0:
		idle_sprite = spr_player_kyle_idle;
		move_sprite = spr_player_kyle_run;
	break;
	case 1:
		idle_sprite = spr_player_schwartz_idle;
		move_sprite = spr_player_schwartz_run;
	break;
	case 2:
		idle_sprite = spr_player_shenja_idle;
		move_sprite = spr_player_shenja_run;
	break;
	case 3:
		idle_sprite = spr_player_hacker_idle;
		move_sprite = spr_player_hacker_run;
	break;
	default:
		idle_sprite = spr_player_default_idle;
		move_sprite	= spr_player_default_run;
	break;
}
charge_amt	= 0;
charge_max  = 0;
interacted	= false; // Has Player Interacted Recently
dropped		= false; // Has Player Dropped Weapon Recently
shooting	= false; // Is Player Shooting
reloading	= false; // Is Player Reloading
reviving = false;
//special		= -1; // Current Special
// Equipped DS_Map
equipped = ds_map_create();
equipped[? "type"]			= -1;
equipped[? "ammo_mag"]		= 1;
equipped[? "ammo_res"]		= -1;
equipped[? "ammo_maxmag"]	= 1;
equipped[? "ammo_maxres"]	= -1;
equipped[? "reld_spd"]		= -1;
equipped[? "reld_perf"]		= -1;
equipped[? "fire_rate"]		= 0.25;
equipped[? "fire_ptrn"]		= -1;
equipped[? "proj_type"]		= -1;
// Object GUI Variables
//gui_corner = 0;
gui_portrait = 0;
gui_portrait_scale = 2;
switch(character){
	case -1:
		gui_portrait = 1;
	break;
	case 0:
		gui_portrait = 6;
	break;
	case 1:
		gui_portrait = 7;
	break;
	case 2:
		gui_portrait = 8;
	break;
	case 3:
		gui_portrait = 11;
	break;
}
switch(gui_corner){
	case 0:
		gui_corner_x = 0;
		gui_corner_y = 0;
		gui_corner_heart_x = 40;
		gui_corner_heart_y = 6;
		gui_portrait_x = 6;
		gui_portrait_y = 6;
		gui_weap_portrait = 5;
		gui_weap_portrait_x = 18;
		gui_weap_portrait_y = 42;
		gui_weap_text_x = 44;
		gui_weap_text_y = 51;
		gui_coin_x = 54;
		gui_coin_y = 32;
	break;
	case 1:
		gui_corner_x = display_get_gui_width() - 128;
		gui_corner_y = 0;
		gui_corner_heart_x = display_get_gui_width() - 122;
		gui_corner_heart_y = 6;
		gui_portrait_x = display_get_gui_width() - 34;
		gui_portrait_y = 6;
		gui_weap_portrait = 5;
		gui_weap_portrait_x = display_get_gui_width() - 34;
		gui_weap_portrait_y = 42;
		gui_weap_text_x = gui_corner_x + 40;
		gui_weap_text_y = 51;
		gui_coin_x = gui_corner_x + 48;
		gui_coin_y = 32;
	break;
	case 2:
		gui_corner_x = 0;
		gui_corner_y = display_get_gui_height() - 66;
		gui_corner_heart_x = 40;
		gui_corner_heart_y = 6;
		gui_portrait_x = 4;
		gui_portrait_y = 4;
		gui_weap_portrait = 5;
		gui_weap_portrait_x = 18;
		gui_weap_portrait_y = 42;
		gui_weap_text_x = 52;
		gui_weap_text_y = 50; 
		gui_coin_x = 0;
		gui_coin_y = 0;
	break;
	case 3:
		gui_corner_x = display_get_gui_width() - 128;
		gui_corner_y = display_get_gui_height() - 66;
		gui_corner_heart_x = 40;
		gui_corner_heart_y = 6;
		gui_portrait_x = 4;
		gui_portrait_y = 4;
		gui_weap_portrait = 5;
		gui_weap_portrait_x = 18;
		gui_weap_portrait_y = 42;
		gui_weap_text_x = 40;
		gui_weap_text_y = 50;
		gui_coin_x = 0;
		gui_coin_y = 0;
	break;
}
#endregion
