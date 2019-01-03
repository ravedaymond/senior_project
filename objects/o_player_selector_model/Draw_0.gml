/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_sprite_ext(spr_gui_char_select_arrow, 0, x, y-(arrow_up), img_scale,img_scale,0,c_white,1);
draw_sprite_ext(spr_gui_char_select_arrow, 0, x, y+(arrow_down), img_scale,img_scale*-1,0,c_white,1);
if(selected_status){
	draw_sprite_ext(spr_gui_char_select_status, 1, x+ready_x, y, 3, 3, 0, c_white, 1);
} else {
	draw_sprite_ext(spr_gui_char_select_status, 0, x+ready_x, y, 3, 3, 0, c_white, 1);
}
switch(selected_char){
	case 0:
		draw_sprite_ext(spr_gui_char_portraits, 6, x-(8*(img_scale-1))-2, y-(8*(img_scale-1))-1, img_scale, img_scale, 0, c_white, 1);
		draw_set_color(c_white);
		if(gamepad_is_connected(image_index))
			draw_text_transformed(x+ready_x, y-16, "Kyle", 0.65, 0.65, 0);
		break;
	case 1:
		draw_sprite_ext(spr_gui_char_portraits, 7, x-(8*(img_scale-1))-2, y-(8*(img_scale-1))-1, img_scale, img_scale, 0, c_white, 1);
		if(gamepad_is_connected(image_index))
			draw_text_transformed(x+ready_x, y-16, "Purple Schwartz", 0.55, 0.55, 0);
	break;
	case 2:
		draw_sprite_ext(spr_gui_char_portraits, 8, x-(8*(img_scale-1))-2, y-(8*(img_scale-1))-1, img_scale, img_scale, 0, c_white, 1);
		if(gamepad_is_connected(image_index))
			draw_text_transformed(x+ready_x, y-16, "Shenja", 0.55, 0.55, 0);
	break;
	case 3:
		draw_sprite_ext(spr_gui_char_portraits, 11, x-(8*(img_scale-1))-2, y-(8*(img_scale-1))-1, img_scale, img_scale, 0, c_white, 1);
		if(gamepad_is_connected(image_index))
			draw_text_transformed(x+ready_x, y-16, "Mad Hacker", 0.65, 0.65, 0);
	break;
}

if(!gamepad_is_connected(image_index)){
	draw_sprite_ext(spr_gui_char_select_frame, 4,x,y,img_scale,img_scale,0,c_white,1);
	draw_sprite_ext(spr_gui_char_select_arrow, 1, x, y-(arrow_up), img_scale,img_scale,0,c_white,1);
	draw_sprite_ext(spr_gui_char_select_arrow, 1, x, y+(arrow_down), img_scale,img_scale*-1,0,c_white,1);
	draw_sprite_ext(spr_gui_char_select_status, 2, x+ready_x, y, 3, 3, 0, c_white, 1);
}
