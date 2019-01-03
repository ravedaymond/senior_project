/// @description Draw Player GUI
// ---------------------------------------------------------------------------------
//var _vx = camera_get_view_width(view_camera[0]);
//var _vy = camera_get_view_height(view_camera[0]);
var _vx = 640;
var _vy = 512;
display_set_gui_size(_vx, _vy);
// Draw Frame and Character Portrait
draw_sprite(spr_gui_player_corners, gui_corner, gui_corner_x, gui_corner_y);
draw_sprite_ext(spr_gui_char_portraits, gui_portrait, gui_portrait_x, gui_portrait_y, gui_portrait_scale, gui_portrait_scale, 0, c_white, 1);
// Draw Heart Containers
for(var i = 0; i < hp_max/2; i++){
	draw_sprite(spr_gui_health, 0, gui_corner_heart_x+(i*16), gui_corner_heart_y);
}
// Draw Hearts
var hh = hp%2;
if(hh > 0){
	var ii = 0;
	for(var i = -1; ii < (hp-1)/2; ii++){
		draw_sprite(spr_gui_health, 2, gui_corner_heart_x+(ii*16), gui_corner_heart_y);
	}
		draw_sprite(spr_gui_health, 1, gui_corner_heart_x+(ii*16), gui_corner_heart_y);
} else {
	for(var i = 0; i < hp/2; i++){
		draw_sprite(spr_gui_health, 2, gui_corner_heart_x+(i*16), gui_corner_heart_y);
	}	
}
// Draw Shielded Hearts
if(shld > 0){
	for(var i = 0; i < shld; i++){
		draw_sprite(spr_gui_health, 3, gui_corner_heart_x+(i*16), gui_corner_heart_y);
	}
}
// Draw Coin Text
draw_text_ext_transformed_color(gui_coin_x, gui_coin_y, "x " + string(coins), 10, 200, 0.5, 0.5, 0, c_white, c_white, c_white, c_white, 1);
// Draw Weapon Portrait
switch(equipped[? "type"]){
	case -1:
		switch(character){
			case 0:
				gui_weap_portrait = 0;
			break;
			case 1:
				gui_weap_portrait = 1;
			break;
			case 2:
				gui_weap_portrait = 2;
			break;
			case 3:
				gui_weap_portrait = 3;
			break;
		}
	break;
	case 0:
		gui_weap_portrait = 4;
	break;
	case 1:
		gui_weap_portrait = 5;
	break;
	case 2:
		gui_weap_portrait = 6;
	break;
}
draw_sprite(spr_gui_weap_portraits, gui_weap_portrait, gui_weap_portrait_x, gui_weap_portrait_y);
// Draw Weapon Text
if(equipped[? "type"] != -1){
	draw_text_ext_transformed_color(gui_weap_text_x, gui_weap_text_y, string(equipped[? "ammo_mag"])+"/"+string(equipped[? "ammo_res"]), 10, 200, 0.4, 0.4, 0, c_white, c_white, c_white, c_white, 1);
} else {
	draw_text_ext_transformed_color(gui_weap_text_x, gui_weap_text_y, "unlimited", 10, 200, 0.4, 0.4, 0, c_white, c_white, c_white, c_white, 1);
}
