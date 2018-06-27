/// @description Player Object Model
//---------------------------------------------------------------------------------
#region Inheritance
event_inherited();
// Override Movement Variables
spd = 6;
acc = 1;
fric = 0.5;
// Override Attribute Variables
max_hp = 3;
hp = max_hp;
max_shld = 1;
shld = 0;
#endregion

#region Object Unique Variables
character = -1; // Selected Character
weapon = -1; // Current Weapon
special = -1; // Current Special
#endregion
