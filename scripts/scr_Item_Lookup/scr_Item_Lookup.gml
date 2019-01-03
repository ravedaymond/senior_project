/// @description Get String of Item class
/// @param item_class The items class.
/// @param item_type The type of class item.
/// @return string The string name of the requested class item.
// ---------------------------------------------------------------------------------
var class, type = "";
switch(argument[0]){
	case -1:
		class = "UNDEFINED";
		type = "undefined";
		break;
	case 0:
		class = "INSTANT";
		type = scr_Instant_Get_Type(argument[1]);
		break;
	case 1:
		class = "WEAPON";
		type = scr_Weapon_Get_Type(argument[1]);
		break;
	case 2:
		class = "SPECIAL";
		type = scr_Special_Get_Type(argument[1]);
		break;
}
return class+" <"+type+">";
