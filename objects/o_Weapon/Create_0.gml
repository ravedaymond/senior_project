/// @description Weapon Object Model
// ---------------------------------------------------------------------------------
#region Inherited Variables
event_inherited();
// Override
item_class = ITEM.WEAPON;
#endregion

#region Object Unique Variables
// Set Correct Starting Sprite
image_index = 0;
image_speed = 0;
spr_outline = spr_proto_assault;

// Weapon Attributes
ammo_mag	= 0;
ammo_res	= 0;
ammo_maxmag = 0;
ammo_maxres = 0;
reld_spd	= 0;
reld_perf	= 0.75;
fire_rate	= 0;
fire_ptrn	= scr_Projectile_Bullet;
proj_type   = o_Projectile;

// Outline Shader Variables
//outline_pxScale = 1;
//uPixelW = shader_get_uniform(shd_Outline,"pixelW");
//uPixelH = shader_get_uniform(shd_Outline,"pixelH");
//texelW = outline_pxScale*texture_get_texel_width(sprite_get_texture(sprite_index,0));
//texelH = outline_pxScale*texture_get_texel_height(sprite_get_texture(sprite_index,0));

#endregion
