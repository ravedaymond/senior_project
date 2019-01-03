/// @description Complete Reload
// ---------------------------------------------------------------------------------
var ammo_maxmag = equipped[? "ammo_maxmag"];
var ammo_mag = equipped[? "ammo_mag"];
var ammo_res = equipped[? "ammo_res"];
var fill_amt = ammo_maxmag - ammo_mag;

if(ammo_res > fill_amt){
	ammo_res -= fill_amt;
	ammo_mag += fill_amt;
	ds_map_replace(equipped, "ammo_mag", ammo_mag);
	ds_map_replace(equipped, "ammo_res", ammo_res);
} else {
	ammo_mag += ammo_res;
	ds_map_replace(equipped, "ammo_mag", ammo_mag);
	ds_map_replace(equipped, "ammo_res", 0);
}
charge_max = 0;
charge_amt = 0;
reloading = false;
