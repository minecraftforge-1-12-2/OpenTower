pal_swap_init_system()
global.roommessage = "PIZZA TOWER ISLAND"
if (global.panic || ((!obj_player1.ispeppino) && (!global.swapmode)))
{
	var lay = layer_get_id("Assets_2")
	layer_set_visible(lay, 0)
}
