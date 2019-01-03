/// @description Globals + Macros
// ---------------------------------------------------------------------------------
#region Gameloop Handling
global.game_running = false;
global.player_count = 1;
global.game_timer	= 0;
global.game_paused	= false;
global.total_score	= 0;
global.gui_width	= 640;
global.gui_height	= 512;
#endregion

#region Player Spawning
global.p0_x			= 0;
global.p0_y			= 0;
global.p0_char		= -1;
global.p0_gp		= -1;
global.p0_cont		= false;
global.p1_x			= 0;
global.p1_y			= 0;
global.p1_char		= -1;
global.p1_gp		= -1;
global.p1_cont		= false;
global.p2_x			= 0;
global.p2_y			= 0;
global.p2_char		= -1;
global.p2_gp		= -1;
global.p2_cont		= false;
global.p3_x			= 0;
global.p3_y			= 0;
global.p3_char		= -1;
global.p3_gp		= -1;
global.p3_cont		= false;
#endregion

#region Macros
enum STATE {
	IDLE			= 0,
	MOVE			= 1,
	DODGE			= 2,
	INJURED			= 3,
	DYING			= 4,
}
enum ITEM {
	UNDEFINED		= -1,
	PICKUP			= 0,
	WEAPON			= 1,
}
enum WEAPON {
	DISC_PISTOL		= 0,
	BAND_RIFLE		= 1,
	PEN_RIFLE		= 2,
	MISC_BLASTER	= 3
}
enum PICKUP {
	HEALTH_VIAL		= 0,
	HEALTH_PACK		= 1,
	SHIELD_PACK		= 2,
	FUSION_PACK		= 3,
	SMALL_AMMO		= 4,
	MEDIUM_AMMO		= 5,
	LARGE_AMMO		= 6
}
enum GAME_SCREEN {
	TITLE_START		= 0,
	TITLE_MAIN		= 1,
	TITLE_SETTINGS	= 2,
	TITLE_PLAY		= 3,
	TITLE_SCORES	= 4
}
#endregion
