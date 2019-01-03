/// @description Reload Equipped Weapon
// ---------------------------------------------------------------------------------
if(equipped[? "ammo_res"] > 0){
	reloading = true;
	charge_max = room_speed*equipped[? "reld_spd"];
	alarm[1] = room_speed*equipped[? "reld_spd"];
} else {
	// No Ammo Reserves || Empty Weapon
}
