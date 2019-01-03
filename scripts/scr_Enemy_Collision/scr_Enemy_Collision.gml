/// @description Collision Control for Objects
/// @param collisionObject  The object being collided with.
// ---------------------------------------------------------------------------------
var collisionObject = argument0;
#region Horizontal Collision
if(place_meeting(x+hspd, y, collisionObject)){
	while(!place_meeting(x+sign(hspd), y, collisionObject)){ // Prevent Collision Gap
		x += sign(hspd);
	}
	hspd = 0; // Set HSPD to 0
}
#endregion

#region Vertical Collision
if(place_meeting(x, y+vspd, collisionObject)){
    while(!place_meeting(x, y+sign(vspd), collisionObject)){ // Prevent Collision Gap
        y += sign(vspd);
    }
    vspd = 0; // Set VSPD to 0
}
#endregion
