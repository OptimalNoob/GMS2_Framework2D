/// @desc description

get_inputs();

if(!npc_talking){
	move_h = Input_RightHold - Input_LeftHold;
	move_v = Input_DownHold - Input_UpHold;
} else {
	move_h = 0;
	move_v = 0;
}

hsp = move_h * move_speed / sqrt(abs(move_h) + abs(move_v) + .1);
vsp = move_v * move_speed / sqrt(abs(move_v) + abs(move_h) + .1);

x += hsp;
y += vsp;

col_npc = collide_with_villager(32);

if(col_npc != noone){
	if (keyAction && !npc_talking){
		sel_state = 0;
		keyAction = false;
		npc_talking = true;
	}
}



if(npc_talking){
	var _statelength =	array_length(col_npc.state_list);
	if(keyUpPress)		sel_state = max(0, --sel_state);
	if(keyDownPress)	sel_state = min(_statelength - 1, ++sel_state);
	if(keyAction) {
		npc_set_state(col_npc, sel_state);
		npc_talking = false;
	}
	
	if(keyCancel){
		keyCancel = false;
		npc_talking = false;
	}
}

