/// @description Crawler Injured State
// ---------------------------------------------------------------------------------
//sprite_index = spr_enemy_crawler_injured;
if(hp <= 0){
	state = STATE.DYING;
} else if(hp > ceil(hp_max/5)){
	state = STATE.IDLE;
	exit;
}