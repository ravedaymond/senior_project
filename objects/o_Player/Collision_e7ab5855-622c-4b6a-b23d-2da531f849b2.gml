/// @description Pickup Item
//---------------------------------------------------------------------------------
if(other.item_type != ITEM.WEAPON){
	with(other){
		event_perform(ev_other, ev_user0);
	}	
} else if(!interacted && interact && other.id == instance_nearest(x, y, o_Weapon)){
	interacted = true;
	alarm[2] = room_speed/4;
	if(weapon[? "class"] != -1){
		event_perform(ev_other, ev_user2); // Drop Current Weapon
	}
	with(other){
		event_perform(ev_other, ev_user0); // Pickup New Weapon
	}
}
