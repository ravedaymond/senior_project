/// @description Player Object Model
// ---------------------------------------------------------------------------------
#region Inheritance
event_inherited();
// Override Movement Variables
spd		= 5;
acc		= 1.5;
fric	= 0.5;
// Override Attribute Variables
state		= STATE.IDLE;
hp			= 10;
hp_max		= 25;
shld		= 3;
shld_max	= 5;
#endregion

#region Object Unique Variables
image_index = 0;
xscale_mod  = 1;
character	= -1; // Selected Character
idle_sprite = spr_player_default_idle;
move_sprite	= spr_player_default_run;
charge_amt	= 0;
charge_max  = 0;
interacted	= false; // Has Player Interacted Recently
dropped		= false; // Has Player Dropped Weapon Recently
shooting	= false; // Is Player Shooting
reloading	= false; // Is Player Reloading

special		= -1; // Current Special
equipped = ds_map_create();
equipped[? "type"]			= -1;
equipped[? "ammo_mag"]		= 1;
equipped[? "ammo_res"]		= -1;
equipped[? "ammo_maxmag"]	= 1;
equipped[? "ammo_maxres"]	= -1;
equipped[? "reld_spd"]		= -1;
equipped[? "reld_perf"]		= -1;
equipped[? "fire_rate"]		= 0.25;
equipped[? "fire_ptrn"]		= -1;
equipped[? "proj_type"]		= -1;
#endregion
