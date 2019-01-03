/// @description Crawler Object Model
// ---------------------------------------------------------------------------------
#region Inherited Variables
event_inherited();
// Override Movement Variables
spd = 5;
acc = 0.75;
// Override Attribute Variables
hp = 5;
hp_max = 5;
shld = 0;
shld_max = 0;
// Override Unique Variables
range = 384; // Range calculated in 64 block increments. Is radius, not diameter
attack_length = 0.75;
attack_distance = 192;
ds_list_set(awareness, 3, 0.15); // awareness[|3]: Start Cautious Timer
ds_list_set(awareness, 4, 0.25); // awareness[|4]: End Cautious Timer
ds_list_set(awareness, 5, 0.3); // awareness[|5]: Start Alert Timer
ds_list_set(awareness, 6, 0.5); // awareness[|6]: End Alert Timer
#endregion

#region Object Unique Variables
#endregion
