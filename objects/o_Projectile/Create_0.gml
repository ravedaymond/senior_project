/// @description Projectile Object Model
// ---------------------------------------------------------------------------------
if(object_is_ancestor(object_index, o_Enemy)){
	hostile = true;
} else {
	hostile = false;
}
spd = 5;
dmg = 1;
ttl = 4;
alarm[0] = room_speed*ttl;
