/// @description Player Object Model
//---------------------------------------------------------------------------------
#region Inheritance
event_inherited();
// Override Movement Variables
spd  = 6;
acc  = 1;
fric = 0.5;
// Override Attribute Variables
max_hp	 = 3;
hp		 = max_hp;
max_shld = 1;
shld	 = 0;
#endregion

#region Object Unique Variables
character	= -1; // Selected Character
interacted	= false; // Has Player Interacted Recently
dropped		= false; // Has Player Dropped Weapon Recently
shooting	= false; // Is Player Shooting
reloading	= false; // Is Player Reloading
special		= -1; // Current Special
weapon = ds_map_create();
weapon[? "class"]		= -1;
weapon[? "pattern"]		= -1;
weapon[? "fire_rate"]	= 0.25;
weapon[? "total_mag"]	= 1;
weapon[? "current_mag"] = 1;
weapon[? "clips"]		= -1;
weapon[? "max_clips"]	= -1;
weapon[? "rel_spd"]		= -1;
weapon[? "perf_rel"]	= -1;
#endregion
