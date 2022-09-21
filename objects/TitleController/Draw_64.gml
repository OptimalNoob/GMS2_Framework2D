/// @desc description

var _guiw = display_get_gui_width();
var _guih = display_get_gui_height();

var _fontsize = font_get_size(fntDev01);

draw_set_font(fntDev01);
draw_set_color(c_white);
draw_set_alpha(1.0);

if(at_title){ // DRAW TITLE TEXT
	
	draw_set_align(fa_center, fa_center);
	draw_text(_guiw / 2, _guih / 2, "Press E");
	
}else if(in_menu){ // DRAW MENU TEXT
	
	draw_set_align(fa_center, fa_center);
	for(i = 0; i < menu_length; i++){
		if(sel_menu == i) draw_text(_guiw / 2, _guih / 2 + (i * _fontsize) - ((menu_length * _fontsize) / 2), ">" + string(menu_options[i]) + "<");
		else draw_text(_guiw / 2, _guih / 2 + (i * _fontsize) - ((menu_length * _fontsize) / 2), string(menu_options[i]));
	}
	
	draw_set_align(fa_left, fa_bottom);
	draw_text(_fontsize, _guih - _fontsize, "F1 - Dev Options");
	draw_set_align(fa_right, fa_bottom);
	draw_text(_guiw - _fontsize, _guih - _fontsize, "Escape - Back");
	
} else { // DRAW DEV MENU TEXT
	
	draw_set_align(fa_left, fa_center);
	for(i = 0; i < dev_length; i++){
		if(sel_dev == i) draw_text(_fontsize, _guih / 2 + (i * _fontsize) - ((dev_length * _fontsize) / 2), string(menu_options_dev[i][0]) + "<");
		else draw_text(_fontsize, _guih / 2 + (i * _fontsize) - ((dev_length * _fontsize) / 2), string(menu_options_dev[i][0]));
	}
	
	draw_set_align(fa_right, fa_bottom);
	draw_text(_guiw - _fontsize, _guih - _fontsize, "Escape - Back");
	
}