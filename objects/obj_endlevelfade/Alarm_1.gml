room = targetRoom;
with obj_player1
{
	targetRoom = other.targetRoom;
	targetDoor = other.targetDoor;
	state = states.comingoutdoor;
	image_index = 0;
}
scr_playerreset();
instance_destroy();
