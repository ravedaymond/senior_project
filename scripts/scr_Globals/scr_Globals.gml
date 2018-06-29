/// @description Globals + Macros
//---------------------------------------------------------------------------------
global.PLAYER_COUNT = 0;

enum STATE {
	IDLE = 0,
	MOVE = 1,
	DODGE = 2,
	DAMAGED = 3,
	INJURED = 4
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
	PISTOL = 0,
	ASSAULT = 1,
	SHOTGUN = 2,
	SNIPER = 3
}
enum SPECIAL {
	GRENADE = 0,
	BOMB = 1,
	MINE = 2
}

