/// @description Reload
//---------------------------------------------------------------------------------
if(weapon[? "clips"] > 0){
	reloading = true;
	alarm[1] = room_speed * weapon[? "rel_spd"];
} else {
	scr_Player_Reset_Weapon();
}

