/// @description Get the class type of weapon item as a string.
/// @param type The type of weapon item.
/// @return string The string name of the requested item class type.
// ---------------------------------------------------------------------------------
var type = "";
switch(argument[0]){
	case -1:
		type = "undefined";
		break;
	case 0:
		type = "pistol";
		break;
	case 1:
		type = "assault";
		break;
	case 2:
		type = "shotgun";
		break;
}
return type;