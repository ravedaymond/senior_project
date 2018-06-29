/// @description Shoot Weapon
//---------------------------------------------------------------------------------
var current_mag = weapon[? "current_mag"];
current_mag -= 1;
ds_map_replace(weapon, "current_mag", current_mag);
shooting = true;
alarm[0] = room_speed*weapon[? "fire_rate"];
script_execute(weapon[? "pattern"]);
