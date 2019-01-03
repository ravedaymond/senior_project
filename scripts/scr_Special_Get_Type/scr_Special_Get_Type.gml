/// @description Get class type of special item as a string.
/// @param type The type of special item.
/// @return string The string name of the requested item class type.
// ---------------------------------------------------------------------------------
var type = "";
switch(argument[0]){
	case -1:
		type = "undefined";
		break;
	case 0:
		type = "grenade";
		break;
	case 1:
		type = "bomb";
		break;
	case 2:
		type = "mine";
		break;
}
return type;