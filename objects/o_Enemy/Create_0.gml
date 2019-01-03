/// @description Enemy Object Model
// ---------------------------------------------------------------------------------
#region Inherited Variables
event_inherited();
// Override Movement Variables
spd = 3;
acc	= 1;
// Override Attribute Variables
state = STATE.IDLE;
hp = 3;
hp_max = 3;
shld = 0;
shld_max = 0;
invuln_time = 0.25;
attacking = false;
attack_length = 1;
attack_dist = 100;
#endregion

hacker_attack = false;

#region Object Unique Variables
hmov = false;
vmov = false;
range = -1;
player_in_range = false;
targeted_player = -1;
origin_x = x;
origin_y = y;
roaming = false;
roam_range = 150;
roam_time = 3;
roam_x = irandom_range(origin_x-roam_range,origin_x+roam_range);
roam_y = irandom_range(origin_y-roam_range,origin_y+roam_range);
awareness = ds_list_create();
ds_list_add(awareness, false);	// awareness[|0]: Control Trigger
ds_list_add(awareness, false);	// awareness[|1]: Cautious
ds_list_add(awareness, false);	// awareness[|2]: Alerted
ds_list_add(awareness, -1);		// awareness[|3]: Start Cautious Timer
ds_list_add(awareness, -1);		// awareness[|4]: End Cautious Timer
ds_list_add(awareness, -1);		// awareness[|5]: Start Alert Timer
ds_list_add(awareness, -1);		// awareness[|6]: End Alert Timer
#endregion
