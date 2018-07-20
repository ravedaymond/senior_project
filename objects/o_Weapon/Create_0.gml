/// @description Weapon Object Model
// ---------------------------------------------------------------------------------
#region Inherited Variables
event_inherited();
// Override
item_class = ITEM.WEAPON;
#endregion

#region Object Unique Variables
ammo_mag		= 0;
ammo_res		= 0;
ammo_maxmag = 0;
ammo_maxres = 0;
reld_spd		= 0;
reld_perf	= 0.75;
fire_rate	= 0;
fire_ptrn	= scr_Basic_Projectile;
#endregion
