if debugactive
{
	if instance_exists(obj_player1)
	{
		scr_debug("X", obj_player1.x, 0)
		scr_debug("Y", obj_player1.y, 1)
		scr_debug("Room", room_get_name(room), 2)
		scr_debug("pX",obj_player.x, 3)
		scr_debug("pY",obj_player.y, 4)
		if instance_exists(obj_followcharacter)
		{
			scr_debug("followX",obj_followcharacter.x, 5)
			scr_debug("followY",obj_followcharacter.y, 6)
		}
	}
}