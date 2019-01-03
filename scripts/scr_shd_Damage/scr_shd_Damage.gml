///@description Shader for indicating Damage Taken
// ---------------------------------------------------------------------------------
gpu_set_blendmode(bm_add);
shader_set(shd_Color);
shd_red = shader_get_uniform(shd_Color, "_red");
shd_green = shader_get_uniform(shd_Color, "_green");
shd_blue = shader_get_uniform(shd_Color, "_blue");
shd_alpha = shader_get_uniform(shd_Color, "_alpha");
shader_set_uniform_i(shd_red, 255);
shader_set_uniform_i(shd_green, 0);
shader_set_uniform_i(shd_blue, 0);
shader_set_uniform_f(shd_alpha, 0.75);
draw_self();
shader_reset();
gpu_set_blendmode(bm_normal);
