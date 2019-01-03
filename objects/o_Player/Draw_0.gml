/// @description Draw Player Event
// ---------------------------------------------------------------------------------
draw_self();

var aim_offset = 8;
#region Draw Equipped Weapon
if(equipped[? "type"] != -1){
	var sub_img = 0;
	//if(shooting){ // Attempting to add muzzle flash to weapon via sub_img (image_index) 1
	//	sub_img = 1;
	//}
	if(equipped[? "ammo_res"] + equipped[? "ammo_mag"] == 0){ 
		sub_img = 2;
	}
	switch(equipped[? "type"]){
		case WEAPON.DISC_PISTOL:
			draw_sprite_ext(spr_weapon_disc_pistol, sub_img, x+lengthdir_x(aim_offset, aim_dir), y+lengthdir_y(aim_offset, aim_dir), -1, -1*image_xscale, aim_dir, c_white, 1);
		break;
		case WEAPON.PEN_RIFLE:
			draw_sprite_ext(spr_weapon_pen_rifle, sub_img, x+lengthdir_x(aim_offset, aim_dir), y+lengthdir_y(aim_offset, aim_dir), -1, -1*image_xscale, aim_dir, c_white, 1);
		break;
		case WEAPON.BAND_RIFLE:
			draw_sprite_ext(spr_weapon_band_rifle, sub_img, x+lengthdir_x(aim_offset, aim_dir), y+lengthdir_y(aim_offset, aim_dir), -1, -1*image_xscale, aim_dir, c_white, 1);
		break;
		case WEAPON.MISC_BLASTER:
			// Placeholder
		break;
	}
} else {
	// Draw Character Default Weapon
}

#endregion
// Draw Hand
draw_sprite_ext(spr_player_default_hand, 0, x+lengthdir_x(aim_offset, aim_dir), y+lengthdir_y(aim_offset, aim_dir), -1, -1*image_xscale, aim_dir, c_white, 1);
#region Shader Control
if(damaged && state != STATE.DYING){
	gpu_set_blendmode(bm_add);
	shader_set(shd_Color);
	var shd_red = shader_get_uniform(shd_Color, "_red");
	var shd_green = shader_get_uniform(shd_Color, "_green");
	var shd_blue = shader_get_uniform(shd_Color, "_blue");
	var shd_alpha = shader_get_uniform(shd_Color, "_alpha");
	shader_set_uniform_i(shd_red, 255);
	shader_set_uniform_i(shd_green, 0);
	shader_set_uniform_i(shd_blue, 0);
	shader_set_uniform_f(shd_alpha, 0.75);
	draw_self();
	draw_sprite_ext(spr_player_default_hand, 0, x+lengthdir_x(aim_offset, aim_dir), y+lengthdir_y(aim_offset, aim_dir), -1, -1*image_xscale, aim_dir, c_white, 1);
	shader_reset();
	gpu_set_blendmode(bm_normal);
}
#endregion

#region Draw Charge Bar
if(charge_max > 0){
	draw_line_width_color(
	x-charge_max/2,
	y-sprite_height/2,
	x+charge_max/2,
	y-sprite_height/2,
	4,
	c_orange,
	c_orange
	);
	draw_line_width_color(
		x-(charge_max/2),
		y-(sprite_height/2),
		x+(charge_max*(charge_amt/charge_max)-(charge_max/2)),
		y-(sprite_height/2),
		4,
		c_aqua,
		c_aqua
	);
	// Draw Perfect Reload Zone
	//if(reloading){
	//	draw_line_width_color(
	//		x-(charge_max/2)+(charge_max*equipped[? "reld_perf"]),
	//		y-(sprite_height/2)-5,
	//		x-(charge_max/2)+(charge_max*equipped[? "reld_perf"]),
	//		y-(sprite_height/2)+5,
	//		2,
	//		c_red,
	//		c_red
	//	);
	//}
}
#endregion