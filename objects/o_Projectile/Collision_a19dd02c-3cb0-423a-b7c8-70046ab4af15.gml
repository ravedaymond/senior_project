/// @description Collision with Solid Object
//---------------------------------------------------------------------------------
with(other){
	if(object_is_ancestor(object_index, o_Destructable)){
		hp--;
		event_perform(ev_other, ev_user0);
	}
}
instance_destroy();
