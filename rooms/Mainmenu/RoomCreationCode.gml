pal_swap_init_system();
instance_destroy(obj_pigtotal);
instance_destroy(obj_swapmodefollow);
global.gameframe_caption_text = lang_get_value("caption_mainmenu");
with (instance_create(0, 0, obj_loadingscreen))
{
	group_arr = ["hudgroup", "baddiegroup", "levelstructuregroup", "menugroup"];
	offload_arr = ["introgroup"];
}
with (obj_player1)
	state = states.titlescreen;
global.swapmode = false;
global.leveltorestart = -4;
global.leveltosave = -4;
global.startgate = false;
global.exitrank = false;
