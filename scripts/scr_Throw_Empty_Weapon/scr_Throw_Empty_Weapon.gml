/// @description Create Thrown Weapon Projectile once charge is completed by holding "reload".
// ---------------------------------------------------------------------------------
charge_max = room_speed*2
#region Determine sprite for the type of weapon equipped.
var sprite = spr_proto_projectile;
switch(equipped[? "type"]){ 
	case 0:
		sprite = spr_Pistol_Test;
	break;
	case 1:
		sprite = spr_Assault_Test;
	break;
	case 2:
		sprite = spr_Shotgun_Test;
	break;
}
#endregion

#region Throw Weapon
// Charging
if(charge_amt < charge_max){ // Why is this returning 1 always? --> Because it's only being used when reload is held anyways.
	spd = 2;
	charge_amt++; // Increment Throw Weapon Charge
	if(charge_amt >= charge_max){ // Done Charging
		var dir = aim_dir;
		var offset = sprite_width/2;
		var xx = lengthdir_x(offset, dir);
		var yy = lengthdir_y(offset, dir);
		var projectile = instance_create_layer(x+(image_xscale*xx), y+(image_xscale*yy), "Instances", o_Thrown_Weapon);
		with(projectile){ 
			sprite_index = sprite;
			image_angle = dir;
			motion_set(dir, spd);
			// Ensure Thrown Weapon spins in correct direction based off dir.
			if(dir < 90 || dir >= 270){
				rotspd *= -1;
			}
		}
	}
} else { // Finish Throw
	if(equipped[? "type"] != -1){ // Incomplete Charge (Player still holding a weapon)
		// Implement Slight Toss Animation, maybe with Particle?
		scr_Player_Reset_Equipped();
	}
	charge_max = 0;
	charge_amt = 0;
	spd = 4;
}
#endregion
