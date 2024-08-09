player_distance_threshold = 700;
ghost_distance_threshold = 400;
xoffset = 0;
yoffset = 0;
image_speed = 0.35;
depth = -6;
with(obj_trapghost)
{
	if trapid == noone
	{
		trapid = other.id;
	}
}
