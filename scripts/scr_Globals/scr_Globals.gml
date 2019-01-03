/// @description Globals + Macros
// ---------------------------------------------------------------------------------
global.PLAYER_COUNT = 1;
global.TOTAL_SCORE = 0;
global.GAME_TIMER = 0;

enum STATE {
	IDLE = 0,
	MOVE = 1,
	DODGE = 2,
	INJURED = 3,
	DYING = 4,
}
enum ITEM {
	UNDEFINED = -1,
	INSTANT = 0,
	WEAPON = 1,
	SPECIAL = 2
}
enum INSTANT {
	BANDAGE = 0,
	MEDKIT = 1,
	BLUEPILL = 2
}
enum WEAPON {
	DISC_PISTOL = 0,
	BAND_RIFLE = 1,
	PEN_RIFLE = 2,
	MISC_BLASTER = 3
}
enum SPECIAL {
	GRENADE = 0,
	BOMB = 1,
	MINE = 2
}

