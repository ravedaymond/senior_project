/// @description Insert description here
// You can write your code in this editor
if(p0 != -1){
	if(p0 != noone){
		draw_sprite(spr_indicator_boss_ready_0, 1, x, y);
	} else {
		draw_sprite(spr_indicator_boss_ready_0, 0, x, y);	
	}
}
if(p1 != -1){
	if(p1 != noone){
		draw_sprite(spr_indicator_boss_ready_1, 1, x, y);
	} else {
		draw_sprite(spr_indicator_boss_ready_1, 0, x, y);	
	}
}
if(p2 != -1){
	if(global.p2_y != noone){
		draw_sprite(spr_indicator_boss_ready_2, 1, x, y);
	} else {
		draw_sprite(spr_indicator_boss_ready_2, 0, x, y);	
	}
}
if(p3 != -1){
	if(p3 != noone){
		draw_sprite(spr_indicator_boss_ready_3, 1, x, y);
	} else {
		draw_sprite(spr_indicator_boss_ready_3, 0, x, y);	
	}
}
draw_self();
//draw_rectangle_color(x-(sprite_width/2), y, x+(sprite_width/2), y+16, c_purple, c_purple,c_purple,c_purple,true);

if(image_index <= 6){
	switch(target_player){
		case 0:
			draw_sprite(spr_indicator_action, target_player, x, y-sprite_height);
		break;
		case 1:
			draw_sprite(spr_indicator_action, target_player, x, y-sprite_height);
		break;
		case 2:
			draw_sprite(spr_indicator_action, target_player, x, y-sprite_height);
		break;
		case 3:
			draw_sprite(spr_indicator_action, target_player, x, y-sprite_height);
		break;
	}	
}
