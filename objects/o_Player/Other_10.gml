/// @description Shoot Equipped Weapon
// ---------------------------------------------------------------------------------
var ammo_mag = equipped[? "ammo_mag"];
ammo_mag -= 1;
ds_map_replace(equipped, "ammo_mag", ammo_mag);
shooting = true;
alarm[0] = room_speed*equipped[? "fire_rate"];
script_execute(equipped[? "fire_ptrn"]);
