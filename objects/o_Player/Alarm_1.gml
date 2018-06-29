/// @description Reload Finished
//---------------------------------------------------------------------------------
var total_mag = weapon[? "total_mag"];
var clips = weapon[? "clips"];
clips -= 1;
ds_map_replace(weapon, "current_mag", total_mag);
ds_map_replace(weapon, "clips", clips);
reloading = false;
