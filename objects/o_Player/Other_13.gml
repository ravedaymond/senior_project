/// @description Default Weapon Attack
// ---------------------------------------------------------------------------------
shooting = true;
var fire_rate = 0;
switch(character){
	case 0: // Kyle
		fire_rate = 0.5;
		#region Create Projectile
			var dir = aim_dir;
			var this = object_index;
			audio_play_sound(snd_atk_kyle, 100, false);
			repeat(3){
				var projectile = instance_create_layer(x, y, "Instances", o_Projectile);
				with(projectile){
					dmg = 1;
					sprite_index = spr_attack_kyle;
					hostile = false;
					motion_set(dir+irandom_range(-20, 20), spd*2);
					image_angle = dir;
				}
			}
		#endregion
		alarm[0] = room_speed*fire_rate;
	break;
	case 1: // Schwartz
		fire_rate = 0.75;
		#region Create Damage
			var dir = aim_dir;
			var offset = 0;
			var xx = lengthdir_x(offset, dir);
			var yy = lengthdir_y(offset, dir);
			var this = object_index;
			audio_play_sound(snd_atk_schwartz, 100, false);
			var damage = instance_create_layer(x+(image_xscale*xx), y+(image_xscale*yy), "Instances", o_Damage);
			with(damage){
				depth = -y;
				sprite_index = spr_attack_schwartz;
				image_angle = dir;
			}		
		#endregion
		alarm[0] = room_speed*fire_rate;
	break;
	case 2: // Shen
		fire_rate = 0.25;
		#region Create Projectile
			var dir = aim_dir;
			var this = object_index;
			audio_play_sound(snd_atk_shen, 100, false);
			var projectile = instance_create_layer(x, y, "Instances", o_Projectile);
			with(projectile){
				sprite_index = spr_attack_shen;
				hostile = false;
				spd = 12;
				dmg = 0.5;
				motion_set(dir+irandom_range(-20, 20), spd*2);
				image_angle = dir;
			}
		#endregion
		alarm[0] = room_speed*fire_rate;
	break;
	case 3: // Hacker
		fire_rate = 0.75;
		#region Create Damage
			var dir = aim_dir;
			var offset = 0;
			var xx = lengthdir_x(offset, dir);
			var yy = lengthdir_y(offset, dir);
			var this = object_index;
			audio_play_sound(snd_atk_schwartz, 100, false);
			var damage = instance_create_layer(x+(image_xscale*xx), y+(image_xscale*yy), "Instances", o_Damage);
			with(damage){
				depth = -y;
				sprite_index = spr_attack_hacker;
				image_angle = dir;
			}	
			#endregion
			alarm[0] = room_speed*fire_rate;
	break;
}