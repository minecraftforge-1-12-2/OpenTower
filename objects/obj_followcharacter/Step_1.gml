if obj_player1.roomstarted && !roomstarted
{
	ds_queue_clear(followqueue);
	space = 0;
	x = obj_player1.x;
	y = obj_player1.y;
	lastplayerposx = obj_player1.x;
	lastplayerposy = obj_player1.y;
	roomstarted = true
}
