/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_rectangle_color(draw_x,draw_y,draw_x+(32*1),draw_y+(16*1),c_red,c_red,c_red,c_red,true);
draw_rectangle_color(draw_x+(32*1),draw_y,draw_x+(32*2),draw_y+(16*1),c_blue,c_blue,c_blue,c_blue,true);
draw_rectangle_color(draw_x+(32*2),draw_y,draw_x+(32*3),draw_y+(16*1),c_green,c_green,c_green,c_green,true);
draw_rectangle_color(draw_x+(32*3),draw_y,draw_x+(32*4),draw_y+(16*1),c_yellow,c_yellow,c_yellow,c_yellow,true);

switch(target_item){
	case 0:
		draw_sprite(spr_indicator_action, target_player, draw_x+16, y-16);
		draw_text_color(draw_x+8, y-32, "$: " + string(price_ammo), c_white, c_white, c_white, c_white, 1);
	break;
	case 1:
		draw_sprite(spr_indicator_action, target_player, draw_x+48, y-16);
		draw_text_color(draw_x+8, y-32, "$: " + string(price_half), c_white, c_white, c_white, c_white, 1);
	break;
	case 2:
		draw_sprite(spr_indicator_action, target_player, draw_x+80, y-16);
		draw_text_color(draw_x+8, y-32, "$: " + string(price_heart), c_white, c_white, c_white, c_white, 1);
	break;
	case 3:
		draw_sprite(spr_indicator_action, target_player, draw_x+112, y-16);
		draw_text_color(draw_x+8, y-32, "$: " + string(price_shield), c_white, c_white, c_white, c_white, 1);
	break;
}
