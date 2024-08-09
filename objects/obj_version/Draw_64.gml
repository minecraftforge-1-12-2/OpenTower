draw_set_font(global.smallfont);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);
var a = 0;
with obj_mainmenu
	a = extrauialpha;
draw_text_color(SCREEN_WIDTH - 8, SCREEN_HEIGHT, lang_get_value("game_version"), c_white, c_white, c_white, c_white, a);
draw_text_color(SCREEN_WIDTH - 8, SCREEN_HEIGHT - 16, "IDE V2024.6.2.162 RUNTIME V2024.6.1.208", c_white, c_white, c_white, c_white, a);

