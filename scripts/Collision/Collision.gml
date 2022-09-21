///@func collide_with_object(_object)
///@arg {object} | Object to collide with
///
///@desc Collide with Object, acts like a wall in return.
function collide_with_object(_object){
	if(place_meeting(x + hsp, y, _object)){
		while(!place_meeting(x + sign(hsp), y, _object)){
			x += sign(hsp);
		}
		hsp = 0;
	}
	if(place_meeting(x, y + vsp, _object)){
		while(!place_meeting(x, y + sign(vsp), _object)){
			y += sign(vsp);
		}
		vsp = 0;
	}
}

///@func collide_with_villager(_range)
///@arg {real} | radius of ellipse (width) that the villager can be interacted with
///
///@desc       | Creates a radius around target that will collide with villagers.
///			   | Upon collision, return the instance ID to the target to be used
///			   | in code.
function collide_with_villager(_range){
	var w = _range; var h = _range / 2; var _inst;
	_inst = collision_ellipse(x - w, y - h, x + w, y + h, ParentNPC, 0, 1);
	if (_inst != noone) return _inst;		
	else return noone;
}