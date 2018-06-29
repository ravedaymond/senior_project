/// @description Drop Weapon
//---------------------------------------------------------------------------------
dropped = true;
alarm[3] = room_speed/4;
var dropped_clips = weapon[? "clips"];
var dropped_mag = weapon[? "current_mag"];
with(scr_Player_Drop_Weapon(weapon[? "class"])){
	clips = dropped_clips;
	current_mag = dropped_mag;
}
scr_Player_Reset_Weapon();
