/// @description Create a new Camera
// ---------------------------------------------------------------------------------
// Build a Camera at (0,0) with size of 640x480, 0* of angle, no target instance, instant-jumping hspd and vspd, with a 32 pixel border
camera = camera_create_view(0, 0, 640, 480, 0, o_Player, -1, -1, 32, 32);

// The below does the same as the above.
//camera_set_view_pos(view_camera[0], 0, 0);
//camera_set_view_size(view_camera[0], 640, 480);
//camera_set_view_angle(view_camera[0], 0);
//camera_set_view_target(view_camera[0], o_Player);
//camera_set_view_speed(view_camera[0], -1, -1);
//camera_set_view_border(view_camera[0], 32, 32);

// Bind camera to View 0
view_set_camera(0, camera);
