/// @description Get class of special_item as a string.
/// @param class The class of special_item.
/// @return string The string name of the requested classification.
//---------------------------------------------------------------------------------
var class = "";
switch(argument[0]){
	case -1:
		class = "undefined";
		break;
	case 0:
		class = "grenade";
		break;
	case 1:
		class = "bomb";
		break;
	case 2:
		class = "mine";
		break;
}
return class;