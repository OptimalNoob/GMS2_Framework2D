/// @desc

var _fontsize = font_get_size(fntDev01);
var _drawstate = string(state_list[current_state][0]);

draw_self();
draw_set_color(c_white);
draw_set_alpha(1.0);
draw_set_font(fntDev01);
draw_set_align(fa_center, fa_bottom);

draw_text(x, y - (sprite_height + _fontsize), _drawstate);
