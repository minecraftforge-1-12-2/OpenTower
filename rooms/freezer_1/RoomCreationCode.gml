pal_swap_init_system();
global.roommessage = "PIZZA TOWER ISLAND";
global.use_temperature = true;
gameframe_caption_text = lang_get_value("caption_freezer");

if (!obj_secretmanager.init)
	obj_secretmanager.init = true;
