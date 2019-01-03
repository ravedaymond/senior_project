/// @description Enemy Control
// ---------------------------------------------------------------------------------
event_inherited();
image_xscale = face;
var closest_player = -1;
if(distance_to_object(o_Player) < range){
	if(o_p0.state != STATE.DYING){
		var p0 = point_distance(x, y, o_p0.x, o_p0.y);
		closest_player = p0;
		targeted_player = 0;
	}
	if(instance_exists(o_p1)){
		if(o_p1.state != STATE.DYING){
			var p1 = point_distance(x, y, o_p1.x, o_p1.y);
			if(p1 < closest_player){
				closest_player = p1;
				targeted_player = 1;
			}
		}
	}
	if(instance_exists(o_p2)){
		if(o_p2.state != STATE.DYING){
			var p2 = point_distance(x, y, o_p2.x, o_p2.y);
			if(p2 < closest_player){
				closest_player = p2;
				targeted_player = 2;
			}
		}
	}
	if(instance_exists(o_p3)){
		if(o_p3.state != STATE.DYING){
			var p3 = point_distance(x, y, o_p3.x, o_p3.y);
			if(p3 < closest_player){
				closest_player = p3;
				targeted_player = 3;
			}
		}
	}
	if(closest_player != -1){
		player_in_range = closest_player < range;
	} else {
		player_in_range = false;
	}
	
}
