/// @description Insert description here
// You can write your code in this editor
draw_self();
#region Health Bar
	if(damaged) {
		image_blend = c_red;
	} else {
		image_blend = c_white;
	}
	var cc = make_color_rgb(252, 252, 252); // Health Bar Color
	var ccc = make_color_rgb(10, 11, 15); // Health Bar Color
	// Draw Bars if Damaged
	var bar_length = 32;
	var bar_width = 4;
	if(shld < shld_max || hp < hp_max){
		// Draw Bar Container
		draw_set_alpha(0.8);
		draw_rectangle_color(x-(bar_length/2)-1, y-(sprite_height/4)-bar_width-1, x+(bar_length/2)+1, y-(sprite_height/4)+1, ccc, ccc, ccc, ccc, false);
		draw_set_alpha(1.0);
		draw_rectangle_color(x-(bar_length/2)-1, y-(sprite_height/4)-bar_width-1, x+(bar_length/2)+1, y-(sprite_height/4)+1, cc, cc, cc, cc, true);
		// Draw Percentage of HP and Shield
		var hp_perc = hp/hp_max;
		if(hp_perc > 0)
			draw_rectangle_color(x-(bar_length/2), y-(sprite_height/4)-bar_width, x-(bar_length/2)+(bar_length*hp_perc), y-(sprite_height/4), c_red, c_red, c_red, c_red, false);
		var shld_perc = shld/shld_max;
		if(shld_perc > 0)
			draw_rectangle_color(x-(bar_length/2), y-(sprite_height/4)-bar_width, x-(bar_length/2)+(bar_length*shld_perc), y-(sprite_height/4), c_aqua, c_aqua, c_aqua, c_aqua, false);
	}
	#endregion
switch(shield){
	case 0:
		draw_sprite(spr_boss_shield, 0, x, y);
	break;
	case 1:
		draw_sprite(spr_boss_shield, 1, x, y);
	break;
	case 2:
		draw_sprite(spr_boss_shield, 2, x, y);
	break;
	case 3:
		draw_sprite(spr_boss_shield, 3, x, y);
	break;
	default:
	break;
}
