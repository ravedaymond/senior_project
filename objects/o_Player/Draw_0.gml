/// @description Draw Player Event
// ---------------------------------------------------------------------------------
var offset = 8;
draw_self();
// Draw Equipped Weapon
if(equipped[? "type"] != -1){
	switch(equipped[? "type"]){
		case 0:
			draw_sprite_ext(spr_Pistol_Test, 0, x+lengthdir_x(offset, aim_dir), y+lengthdir_y(offset, aim_dir), -1, -1*image_xscale, aim_dir, c_white, 1);
		break;
		case 1:
			draw_sprite_ext(spr_Assault_Test, 0, x+lengthdir_x(offset, aim_dir), y+lengthdir_y(offset, aim_dir), -1, -1*image_xscale, aim_dir, c_white, 1);
		break;
		case 2:
			draw_sprite_ext(spr_Shotgun_Test, 0, x+lengthdir_x(offset, aim_dir), y+lengthdir_y(offset, aim_dir), -1, -1*image_xscale, aim_dir, c_white, 1);
		break;
	}
}
// Draw Charge Bar
draw_sprite_ext(spr_char_temp_hand, 0, x+lengthdir_x(offset, aim_dir), y+lengthdir_y(offset, aim_dir), -1, -1*image_xscale, aim_dir, c_white, 1);
if(charge_max > 0){
	draw_line_width_color(
	x-charge_max/2,
	y-sprite_height/2,
	x+charge_max/2,
	y-sprite_height/2,
	2,
	c_orange,
	c_orange
	);
	draw_line_width_color(
		x-(charge_max/2),
		y-(sprite_height/2),
		x+(charge_max*(charge_amt/charge_max)-(charge_max/2)),
		y-(sprite_height/2),
		2,
		c_aqua,
		c_aqua
	);
	// Draw Perfect Reload Zone
	if(reloading){
		draw_line_width_color(
			x-(charge_max/2)+(charge_max*equipped[? "reld_perf"]),
			y-(sprite_height/2)-5,
			x-(charge_max/2)+(charge_max*equipped[? "reld_perf"]),
			y-(sprite_height/2)+5,
			2,
			c_red,
			c_red
		);
	}
}
