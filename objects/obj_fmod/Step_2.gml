position = {
	x: (camera_get_view_x(view_camera[0]) + (camera_get_view_width(view_camera[0]) / 2)),
	y: (camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0]) / 2)), 
	z: 0
}
fmod_system_set_3d_listener_attributes(0, position, velocity, forward, up);