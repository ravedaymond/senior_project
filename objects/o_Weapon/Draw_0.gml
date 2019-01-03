/// @description Insert description here
// You can write your code in this editor
//shader_set(shd_Outline);
//shader_set_uniform_f(uPixelW,texelW);
//shader_set_uniform_f(uPixelH,texelH);
var ammo_perc = (ammo_res+ammo_mag) / (ammo_maxres+ammo_maxmag);
if(ammo_perc <= 0){
	draw_sprite_ext(spr_outline, 3, x, y, image_xscale, image_yscale, image_angle, c_white, 1);
	image_index = 2;
} else if(ammo_perc <= 0.35){
	draw_sprite_ext(spr_outline, 2, x, y, image_xscale, image_yscale, image_angle, c_white, 1);
} else if(ammo_perc <= 0.75){
	draw_sprite_ext(spr_outline, 1, x, y, image_xscale, image_yscale, image_angle, c_white, 1);
} else if(ammo_perc <= 1.0){
	draw_sprite_ext(spr_outline, 0, x, y, image_xscale, image_yscale, image_angle, c_white, 1);
}
draw_self();
//shader_reset();
