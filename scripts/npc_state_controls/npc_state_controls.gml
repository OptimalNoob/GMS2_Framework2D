///@func	npc_set_state(_npc, _state)
///@arg		{object} _npc | instance of npc you wish to update the state of
///@arg		{string} _state | state of npc you wish to update to, stored in array within npc
///@desc	Updates the state of a given NPC
function npc_set_state(_npc, _state){
	if(_npc.current_state != _state) _npc.current_state = _state
	else sdm("Did nothing");
}