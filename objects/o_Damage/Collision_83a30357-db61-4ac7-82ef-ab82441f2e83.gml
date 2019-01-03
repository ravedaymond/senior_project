/// @description Insert description here
// You can write your code in this editor
with(other){
	if(object_is_ancestor(object_index, o_Destructable)){
		hp--;
		event_perform(ev_other, ev_user0);
	}
}