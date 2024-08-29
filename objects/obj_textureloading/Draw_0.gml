var p1 = tex_max - array_length(tex_list);
var p2 = lang_max - ds_queue_size(global.lang_to_load);
var p3 = lang_tex_max - lang_tex;
var t = (p1 + p2 + p3) / (tex_max + lang_max + lang_tex_max);
var spr_w = sprite_get_width(spr_loadingscreen);
var spr_h = sprite_get_height(spr_loadingscreen);
var xx = floor((SCREEN_WIDTH / 2) - (spr_w / 2));
var yy = floor((SCREEN_HEIGHT / 2) - (spr_h / 2));
draw_sprite(spr_loadingscreen, 0, xx, yy);
draw_sprite_part(spr_loadingscreen, 1, 0, 0, spr_w * t, spr_h, xx, yy);
if debug
	draw_sprite(spr_compiled_mod, 0, SCREEN_WIDTH / 2, SCREEN_HEIGHT - 8)
