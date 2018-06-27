/// @description Control Player Object
//---------------------------------------------------------------------------------
scr_Input(); // Call Input for Player
// Need to transfer the above to a non constant call  - especially when managing kb/gp preference
// as well as gp/kb disconnection when playing.

scr_Basic_Movement();
if(fire){
	scr_Create_Projectile();
}
scr_Basic_Collision(o_Solid);
