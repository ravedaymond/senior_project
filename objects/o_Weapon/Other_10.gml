/// @description Insert description here
// You can write your code in this editor
var a = item_class;
var b = pattern;
var c = fire_rate;
var d = total_mag;
var e = current_mag;
var f = clips;
var g = max_clips;
var h = rel_spd;
var i = perf_rel;
with(o_Player){
	ds_map_replace(weapon, "class", a);
	ds_map_replace(weapon, "pattern", b);
	ds_map_replace(weapon, "fire_rate", c);
	ds_map_replace(weapon, "total_mag", d);
	ds_map_replace(weapon, "current_mag", e);
	ds_map_replace(weapon, "clips", f);
	ds_map_replace(weapon, "max_clips", g);
	ds_map_replace(weapon, "rel_spd", h);
	ds_map_replace(weapon, "perf_rel", i);
}
event_inherited();
