/// @desc description

if(keyboard_check_pressed(ord("N"))){
	npc_decide = irandom_range(1, 3);
	var npc = instance_create_layer(t_player.x, t_player.y, "objects", oNPC);
	with npc {
		x = other.t_player.x + 128;
		y = other.t_player.y;
		npc_sprite_no = other.npc_decide;
		sprite_index = asset_get_index("sDevNPC" + string(npc_sprite_no));
	}
}