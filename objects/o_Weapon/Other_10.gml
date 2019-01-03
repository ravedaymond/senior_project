/// @description Weapon Picked Up
// ---------------------------------------------------------------------------------
if(other.equipped[? "type"] == item_type){
	var p_ammo = other.equipped[? "ammo_res"];
	if(p_ammo < ammo_maxres){
		p_ammo += ammo_res+ammo_mag;
		if(p_ammo > ammo_maxres){
			p_ammo = ammo_maxres;
		}
		with(other){
			ds_map_replace(equipped, "ammo_res", p_ammo);
		}
		event_inherited();
	}
} else {
	var a = item_type;
	var b = ammo_mag;
	var c = ammo_res;
	var d = ammo_maxmag;
	var e = ammo_maxres;
	var f = reld_spd;
	var g = reld_perf;
	var h = fire_rate;
	var i = fire_ptrn;
	var j = proj_type;
	with(other){
		ds_map_replace(equipped, "type", a);
		ds_map_replace(equipped, "ammo_mag", b);
		ds_map_replace(equipped, "ammo_res", c);
		ds_map_replace(equipped, "ammo_maxmag", d);
		ds_map_replace(equipped, "ammo_maxres", e);
		ds_map_replace(equipped, "reld_spd", f);
		ds_map_replace(equipped, "reld_perf", g);
		ds_map_replace(equipped, "fire_rate", h);
		ds_map_replace(equipped, "fire_ptrn", i);
		ds_map_replace(equipped, "proj_type", j);
	}
	event_inherited();
}
