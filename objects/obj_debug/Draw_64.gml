if debugactive
{
	if instance_exists(obj_player1)
	{
		scr_debug("X", obj_player1.x, 0)
		scr_debug("Y", obj_player1.y, 1)
		scr_debug("Room", room_get_name(room), 2)
		scr_debug("Palette",sprite_get_name(obj_player1.spr_palette), 3)
		scr_debug("Palette select",obj_player1.paletteselect, 4)
		scr_debug("Pattern",sprite_get_name(global.palettetexture), 5)
	}
}