/// @description Draw Menu
// ---
display_set_gui_size(global.gui_width, global.gui_height);
switch(room){
	#region Title Menu Drawing
	case rm_Title:
		draw_set_font(font_menu);
		// Set alignment before drawing text
		draw_set_halign(fa_left);
		draw_set_valign(fa_top);

		for(var i = 0; i < array_length_1d(title_menu); i++){
			var offset = 2;
			var col = c_gray;
			var txt = title_menu[i];
			if(menu_cursor == i){
				 txt = string_insert("> ", txt, 0); // Selection Indicator
				col = c_white;
			}
			var xx = 32;//menu_x/2;
			var yy = 32 + (menu_textHeight*(i*1.5));
			draw_set_color(c_black);
			draw_text(xx-offset,yy,txt);
			draw_text(xx+offset,yy,txt);
			draw_text(xx,yy-offset,txt);
			draw_text(xx,yy+offset,txt);
			draw_set_color(col);
			draw_text(xx, yy, txt);
		}
	break;
	#endregion
}


