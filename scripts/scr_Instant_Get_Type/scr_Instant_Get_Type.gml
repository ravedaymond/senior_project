/// @description Get class type of instant item as a string.
/// @param type The type of instant item.
/// @return string The string name of the requested item class type.
// ---------------------------------------------------------------------------------
var type = "";
switch(argument[0]){
	case -1:
		type = "undefined";
		break;
	case 0:
		type = "bandage";
		break;
	case 1:
		type = "medkit";
		break;
	case 2:
		type = "blue-pill";
		break;
}
return type;