/// @description Pickup Item
// ---------------------------------------------------------------------------------
if(other.item_class != ITEM.WEAPON){
	with(other){
		event_perform(ev_other, ev_user0); // Pickup Non-Weapon Item
	}
} else if(!interacted && interact && other.id == instance_nearest(x, y, o_Weapon)){
	interacted = true;
	alarm[2] = room_speed/4;
	if(equipped[? "type"] != other.item_type){
		event_perform(ev_other, ev_user2); // Drop Current Weapon if different
	}
	with(other){
		event_perform(ev_other, ev_user0); // Pickup New Weapon
	}
}
