/// @description Drop the players current held weapon.
/// @param argument[0] The class of weapon being dropped.
// ---------------------------------------------------------------------------------
var xx = x;
var yy = y;
var zz = "Instances";
switch(argument[0]){
	case WEAPON.DISC_PISTOL:
		return instance_create_layer(xx, yy, zz, o_Disc_Pistol);
	break;
	case WEAPON.PEN_RIFLE:
		return instance_create_layer(xx, yy, zz, o_Pen_Rifle);
	break;
	case WEAPON.BAND_RIFLE:
		return instance_create_layer(xx, yy, zz, o_Band_Rifle);
	break;
	case WEAPON.MISC_BLASTER:
		return instance_create_layer(xx, yy, zz, o_Misc_Blaster);
	break;
}
