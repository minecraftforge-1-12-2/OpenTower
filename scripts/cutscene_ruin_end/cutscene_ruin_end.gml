function cutscene_ruin_end()
{
	with obj_player1
	{
		state = states.normal;
		x = backtohubstartx;
		y = backtohubstarty;
	}
	global.levelcomplete = false;
	global.ruincutscene = true;
	quick_ini_write_real(get_savefile_ini(), "cutscene", "ruin", true);
	cutscene_end_action();
}
