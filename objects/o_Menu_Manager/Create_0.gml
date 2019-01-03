/// @description Insert description here
// You can write your code in this editor
scr_Globals();
gui_width		= display_get_gui_width();
gui_height		= display_get_gui_height();
gui_margin		= 32;
active_menu		= 0; // Set active menu.
menu_x			= gui_width;
menu_y			= gui_height;
menu_font		= font_menu;
menu_textHeight = font_get_size(font_menu);
menu_control	= true;
menu_cursor		= 0;
// Title Menu Options
title_menu[3]	= "Exit Game";
title_menu[2]	= "Options";
title_menu[1]	= "Scoreboard";
title_menu[0]	= "New Game";
// Pause Menu Options
pause_menu[2]	= "Resume Game";
pause_menu[1]	= "Options";
pause_menu[0]	= "Exit to Title";
// Player Selection Options
selection_finished = false;
audio_play_sound(snd_title_a,1000,true)