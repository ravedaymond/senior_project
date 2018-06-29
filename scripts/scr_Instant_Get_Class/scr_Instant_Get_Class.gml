/// @description Get class of instant_item as a string.
/// @param class The class of instant_item.
/// @return string The string name of the requested classification.
//---------------------------------------------------------------------------------
var class = "";
switch(argument[0]){
	case -1:
		class = "undefined";
		break;
	case 0:
		class = "bandage";
		break;
	case 1:
		class = "medkit";
		break;
	case 2:
		class = "blue-pill";
		break;
}
return class;