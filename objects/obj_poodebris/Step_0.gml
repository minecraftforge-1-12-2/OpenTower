if (place_meeting(x, y, obj_player1) && instance_place(x, y, obj_player1).state == states.crouch)
	standbuffer++;
else
	standbuffer = 0;
if standbuffer >= 600
{
	standbuffer = 0;
	notification_push(notifs.crawl_in_shit, [room]);
}
