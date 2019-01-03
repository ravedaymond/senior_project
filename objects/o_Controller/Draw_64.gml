/// @description Debug Stats
// ---------------------------------------------------------------------------------
// Set draw color
draw_set_color(c_fuchsia);

// Window Variables
var windowWidth = window_get_width();
var windowHeight = window_get_height();
var col = 32;
var row = 16;
var rmult = 0;
// 
if(debug) {
	rmult = 4;
	// Debug Stats
	draw_text(col, row*(rmult++), "(RIGHT-LEFT): " + string(sign(o_Player.hspd)));
	draw_text(col, row*(rmult++), "(DOWN-UP): " + string(sign(o_Player.vspd)));
	draw_text(col, row*(rmult++), "(FACE): " + string(o_Player.face));
	draw_text(col, row*(rmult++), "(X-SCALE): " + string(o_Player.image_xscale));
	draw_text(col, row*(rmult++), "(GP_COUNT): " + string(o_Player.gamepad_count));
	draw_text(col, row*(rmult++), "(GP_HAXIS): " + string(o_Player.left_xaxis));
	draw_text(col, row*(rmult++), "(GP_VAXIS): " + string(o_Player.left_yaxis));
	draw_text(col, row*(rmult++), "(AIM_DIR): " + string(o_Player.aim_dir));
	draw_text(col, row*(rmult++), "(HSPD): " + string(o_Player.hspd));
	draw_text(col, row*(rmult++), "(VSPD): " + string(o_Player.vspd));
	rmult++;
	switch(o_Player.state){
		case STATE.IDLE:
			draw_text(col, row*(rmult++), "STATE: IDLE");
		break;
		case STATE.MOVE:
			draw_text(col, row*(rmult++), "STATE: MOVE");
		break;
		case STATE.DODGE:
			draw_text(col, row*(rmult++), "STATE: DODGE");
		break;
		case STATE.INJURED:
			draw_text(col, row*(rmult++), "STATE: INJURED");
		break;
		case STATE.DYING:
			draw_text(col, row*(rmult++), "STATE: DYING");
		break;
		default:
			draw_text(col, row*(rmult++), "STATE: null");
		break;
	}
	draw_text(col, row*(rmult++), "Damaged: " + string(o_Player.damaged));
	draw_text(col, row*(rmult++), "Shooting: " + string(o_Player.shooting));
	draw_text(col, row*(rmult++), "Reloading: " + string(o_Player.reloading));
	draw_text(col, row*(rmult++), "Max Mag: " + string(o_Player.equipped[? "ammo_maxmag"]));
	draw_text(col, row*(rmult++), "Max Ammo: " + string(o_Player.equipped[? "ammo_maxres"]));
	draw_text(col, row*(rmult++), "Fire Rate: " + string(o_Player.equipped[? "fire_rate"]));
	draw_text(col, row*(rmult++), "Reload Speed: " + string(o_Player.equipped[? "reld_spd"]));
	draw_text(col, row*(rmult++), "Perfect Reload: " + string(o_Player.equipped[? "reld_perf"]));
	rmult++;
}
