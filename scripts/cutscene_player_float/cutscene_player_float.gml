function cutscene_player_float(enable)
{
	with obj_player1
		float = enable;
	cutscene_end_action();
}
