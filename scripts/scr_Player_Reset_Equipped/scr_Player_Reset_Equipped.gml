/// @description Reset to Default Character Weapon
// ---------------------------------------------------------------------------------
switch(character){
	case 0:
	break;
	case 1:
	break;
	case 2:
	break;
	case 3:
	break;
	default:
	break;
}
ds_map_replace(equipped, "type", -1);
ds_map_replace(equipped, "ammo_mag", 1);
ds_map_replace(equipped, "ammo_res", 1);
ds_map_replace(equipped, "ammo_maxmag", 1);
ds_map_replace(equipped, "ammo_maxres", 1);
ds_map_replace(equipped, "fire_rate", 0.25);

