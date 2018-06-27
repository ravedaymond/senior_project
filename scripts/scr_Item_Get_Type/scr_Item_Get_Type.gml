/// @description Get String of Item Type
/// @param item_type The items type.
/// @param item_class The class of item.
/// @return string The string name of the requested type.
//---------------------------------------------------------------------------------
var type, class = "";
switch(argument[0]){
	case -1:
		type = "UNDEFINED";
		class = "undefined";
		break;
	case 0:
		type = "INSTANT";
		switch(argument[1]){
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
		break;
	case 1:
		type = "WEAPON";
		switch(argument[1]){
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
		break;
	case 2:
		type = "SPECIAL";
		switch(argument[1]){
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
		break;
}
return type+" <"+class+">";
