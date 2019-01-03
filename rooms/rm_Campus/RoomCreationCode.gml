/// @description Prototype Room Creation Code
//---------------------------------------------------------------------------------
//scr_Initialize_View(0, true, 640, 480);
//scr_Build_Camera();
randomize();
show_debug_message("Initial Seed: " + string(random_get_seed()));
#region Create Player Objects Based Off Selectors
if(global.p0_cont)
	instance_create_layer(6096, 3760, "Instances", o_p0);
if(global.p1_cont)
	instance_create_layer(6192, 3760, "Instances", o_p1);
if(global.p2_cont)
	instance_create_layer(6096, 3856, "Instances", o_p2);
if(global.p3_cont)
	instance_create_layer(6192, 3856, "Instances", o_p3);
#endregion
audio_play_sound(snd_title_b,1000,true);