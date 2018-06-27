/// @description Draw GUI + Debug Stats
//---------------------------------------------------------------------------------
// Set draw color
draw_set_color(c_silver);

// Window Variables
var windowWidth = window_get_width();
var windowHeight = window_get_height();
var col = 32;
var row = 16;
// 

// Debug Stats
draw_text(col, row, "(RIGHT-LEFT): " + string(sign(o_Player.hspd)));
draw_text(col, row*2, "(DOWN-UP): " + string(sign(o_Player.vspd)));
draw_text(col, row*3, "(FACE): " + string(o_Player.face));
draw_text(col, row*4, "(GP_COUNT): " + string(o_Player.gamepad_count));
draw_text(col, row*5, "(GP_HAXIS): " + string(o_Player.left_xaxis));
draw_text(col, row*6, "(GP_VAXIS): " + string(o_Player.left_yaxis));
draw_text(col, row*7, "(AIM_DIR): " + string(o_Player.aim_dir));
draw_text(col, row*8, "(HSPD): " + string(o_Player.hspd));
draw_text(col, row*9, "(VSPD): " + string(o_Player.vspd));
