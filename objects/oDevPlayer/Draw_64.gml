/// @desc description

var _guiw = display_get_gui_width();
var _guih = display_get_gui_height();

if(npc_talking){
	var _statelength = array_length(col_npc.state_list);
	var _fontsize = font_get_size(fntDev01);
	draw_set_color(c_white);
	draw_set_alpha(1.0);
	draw_set_align(fa_center, fa_top);
	
	for(i = 0; i < _statelength; i++){
		if(sel_state == i) draw_text(_guiw / 2, _guih / 2 - (_statelength * _fontsize / 2) + (i * _fontsize), "> " + string(col_npc.state_list[i][0]));
		else draw_text(_guiw / 2, _guih / 2 - (_statelength * _fontsize / 2) + (i * _fontsize), string(col_npc.state_list[i][0]));
	}
}