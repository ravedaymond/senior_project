/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
draw_sprite_ext(spr_indicator_shadow, 1, x, y+15, 2, 2, 0, c_white, 1);
draw_sprite_ext(spr_indicator_aim, 1, x+lengthdir_x(8, aim_dir), y+lengthdir_y(8, aim_dir), -2, -2*image_xscale, aim_dir, c_white, 1);
event_inherited();


