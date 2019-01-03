
audio_master_gain(1);
audio_play_sound(snd_boss_music,1000,true);
if(instance_exists(o_Camera)){
	o_Camera.x = 655;
	o_Camera.y = 700;
}
if(instance_exists(o_p0)){
	o_p0.x = 655;
	o_p0.y = 700;
}
if(instance_exists(o_p1)){
	o_p1.x = 655;
	o_p1.y = 700;
}
if(instance_exists(o_p2)){
	o_p2.x = 655;
	o_p2.y = 700;
}
if(instance_exists(o_p3)){
	o_p3.x = 655;
	o_p3.y = 700;
}