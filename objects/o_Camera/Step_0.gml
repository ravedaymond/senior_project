/// @description Insert description here
// You can write your code in this editor
switch(player_count){
	case 1:
		dx = o_p0.x;
		dy = o_p0.y;
	break;
	case 2:
		dx = (o_p0.x + o_p1.x)*0.5;
		dy = (o_p0.y + o_p1.y)*0.5;
	break;
	case 3:
		side_ax = (o_p0.x + o_p1.x)*0.5;
		side_ay = (o_p0.y + o_p1.y)*0.5;
		side_bx = (o_p1.x + o_p2.x)*0.5;
		side_by = (o_p1.y + o_p2.y)*0.5;
		side_cx = (o_p2.x + o_p0.x)*0.5;
		side_cy = (o_p2.y + o_p0.y)*0.5;
		dx = (side_ax + side_bx + side_cx)*0.333;
		dy = (side_ay + side_by + side_cy)*0.333;
	break;
	case 4:
		side_ax = (o_p0.x + o_p1.x)*0.5;
		side_ay = (o_p0.y + o_p1.y)*0.5;
		side_bx = (o_p1.x + o_p2.x)*0.5;
		side_by = (o_p1.y + o_p2.y)*0.5;
		side_cx = (o_p2.x + o_p3.x)*0.5;
		side_cy = (o_p2.y + o_p3.y)*0.5;
		side_dx = (o_p3.x + o_p0.x)*0.5;
		side_dy = (o_p3.y + o_p0.y)*0.5;
		dx = (side_ax + side_bx + side_cx + side_dx)*0.25;
		dy = (side_ay + side_by + side_cy + side_dy)*0.25;
	break;
}
x = dx;
y = dy;
