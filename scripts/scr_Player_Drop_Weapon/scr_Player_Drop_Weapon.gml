/// @description Drop the players current held weapon.
/// @param class The class of weapon being dropped.
//---------------------------------------------------------------------------------
var xx = x;
var yy = y;
var zz = "Instances";
switch(argument[0]){
	case WEAPON.PISTOL:
		return instance_create_layer(xx, yy, zz, o_Pistol);
	break;
	case WEAPON.ASSAULT:
		return instance_create_layer(xx, yy, zz, o_Assault);
	break;
	case WEAPON.SHOTGUN:
		return instance_create_layer(xx, yy, zz, o_Shotgun);
	break;
}
