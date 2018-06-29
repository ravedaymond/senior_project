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
		class = scr_Instant_Get_Class(argument[1]);
		break;
	case 1:
		type = "WEAPON";
		class = scr_Weapon_Get_Class(argument[1]);
		break;
	case 2:
		type = "SPECIAL";
		class = scr_Special_Get_Class(argument[1]);
		break;
}
return type+" <"+class+">";
