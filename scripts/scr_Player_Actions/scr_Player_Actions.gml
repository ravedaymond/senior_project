/// @description Control Player Actions from Input
// ---------------------------------------------------------------------------------
#region Shooting/Attacking
if(shoot && !shooting && !reloading){
	if(equipped[? "ammo_mag"] > 0){
		if(equipped[? "type"] == -1){
			event_perform(ev_other, ev_user3); // Player Default Attack
		} else {
			event_perform(ev_other, ev_user0); // Shoot Picked-Up Weapon
		}
	} else {
		if(equipped[? "ammo_res"] != 0){
			event_perform(ev_other, ev_user1); // Reload Current Weapon
		} else {
			// (Play Empty Gun *click* Sound)
		}		
	}
}
#endregion

#region Reloading
if(reload && !reloading){
	event_perform(ev_other, ev_user1);
}
if(reloading){
	charge_amt++; // Increment Reload Charge Bar
	// Perfect Reload Control
	if(reload){ // && Charge_amt % is between the lowest and highest values for reld_perf
		//alarm[1] = 0;
	}
}
#endregion

#region Dropping
if(back && !dropped && equipped[? "type"] != -1){
	event_perform(ev_other, ev_user2);
}
#endregion
