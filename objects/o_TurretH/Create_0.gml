/// @description Turret Object
#region Inherited Variables
event_inherited();
// Override Movement Variables

// Override Attribute Variables
aim_dir = point_direction(x, y, x-1, y);
hp = 0;
#endregion

#region Object Unique Variables

firing = false;
rate = 2;
#endregion