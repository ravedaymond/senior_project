/// @description Take Damage
// ---------------------------------------------------------------------------------
damaged = true;
audio_play_sound(snd_player_damaged, 100, false);
alarm[11] = invuln_time*room_speed;
if(shld > 0){
	shld -= other.dmg;
} else {
	if(shld < 0){
		hp -= abs(shld); // If took more damage than shield could block, remove from HP as well
		shld = 0; // Set shield value to 0
	}
	hp -= other.dmg;
}