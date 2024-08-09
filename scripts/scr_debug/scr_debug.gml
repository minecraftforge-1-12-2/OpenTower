function scr_debug(txt, _var, tyo){
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	var ty = tyo * 20
	var text = string_concat(string_concat(txt,":"), string(_var))
	draw_set_font(font0)
	draw_set_color(c_black)
	draw_set_alpha(0.7)
	var tsx = string_width(text)
	var tsy = string_height(text)
	draw_rectangle(0, ty, tsx, ty+tsy, false)
	draw_set_color(c_white)
	draw_set_alpha(1)
	draw_text(0,ty,text)
}