/// @description Control TurretH
//aim_dir = point_direction(x, y, o_Player.x, o_Player.y);
if(!firing){
	firing = true;
	scr_Projectile_Bullet(o_Projectile);
	alarm[0] = rate*room_speed;
}
