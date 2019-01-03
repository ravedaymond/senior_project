/// @description Insert description here
// -----
draw_set_font(font_menu);
// Set alignment before drawing text
draw_set_halign(fa_left);
draw_set_valign(fa_center);
// Draw Text
//var offset = (menu_textHeight*(1*1.5));
//var col = c_gray;
//var xx = 32;
//var yy = 32;
//if(room == rm_Player_Selection){
//	draw_text(xx, yy,"Gamepad Connections: " + string(gp_count));yy+=offset;
//	draw_text(xx, yy,"Gamepad ActiveCount: " + string(gp_live_count));yy+=offset;
//	draw_text(xx, yy,"Gamepad Disconnects: " + string(global.gp_dcd));yy+=offset;
//	yy+=offset;
//	draw_text(xx, yy,"Gamepad[0]: "+string(ds_list_find_value(global.gp, 0)));yy+=offset;
//	draw_text(xx, yy,"Gamepad[1]: "+string(ds_list_find_value(global.gp, 1)));yy+=offset;
//	draw_text(xx, yy,"Gamepad[2]: "+string(ds_list_find_value(global.gp, 2)));yy+=offset;
//	draw_text(xx, yy,"Gamepad[3]: "+string(ds_list_find_value(global.gp, 3)));yy+=offset;
//}