/// @description Insert description here
// You can write your code in this editor

#region Inherited Variables
event_inherited();
// Override Movement Variables
spd = 0;
// Override Attribute Variables
state = -1;
hp = 20;
hp_max = 20;
invuln_time = 0.05;
enemy_spawn_time = 8.5;
#endregion

depth = -y;
alarm[0] = room_speed*enemy_spawn_time;
image_speed = 0;
image_index = 0;
