/// @description Get class of weapon_item as a string.
/// @param class The class of weapon_item.
/// @return string The string name of the requested classification.
//---------------------------------------------------------------------------------
var class = "";
switch(argument[0]){
	case -1:
		class = "undefined";
		break;
	case 0:
		class = "pistol";
		break;
	case 1:
		class = "assault";
		break;
	case 2:
		class = "shotgun";
		break;
}
return class;