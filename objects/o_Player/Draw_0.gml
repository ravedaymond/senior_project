/// @description Draw Player
//---------------------------------------------------------------------------------
reticle_length = 64;
draw_self(); // Draw Player_0 Sprite
// Draw AIM_DIR Reticle
draw_line_width_color(x, y, x+lengthdir_x(reticle_length, aim_dir), y+lengthdir_y(reticle_length, aim_dir), 2, c_fuchsia, c_fuchsia);
