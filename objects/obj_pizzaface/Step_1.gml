if obj_player1.roomstarted && !roomstarted
{
	if instance_exists(obj_player1)
	{
		x = obj_player1.x;
		y = obj_player1.y;
	}
	if (instance_exists(obj_treasure))
		treasure = true;
	else
		treasure = false;
	if room == rank_room
		instance_destroy();
	roomstarted = true;
}
