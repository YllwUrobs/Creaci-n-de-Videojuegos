
function damage(_tid, _sid, _dam, _tim){
	if (_tid.object_index != Player) {
		with _tid{
		life -= _dam;
		var _dead = isDead()
		path_end();
		if _dead var _dis = 4 else _dis = 3
		var _dir = point_direction(_sid.x,_sid.y,x,y)
		hsp += lengthdir_x(_dis,_dir)
		vsp += lengthdir_y(_dis,_dir)
		knockback_time = _tim
		if !_dead sub = enemysub.HURT
		}
	} else {
		with _tid{
		life -= _dam;
		var _dead = isDead()
		path_end();
		if _dead var _dis = 4 else _dis = 3
		var _dir = point_direction(_sid.x,_sid.y,x,y)
		hsp += lengthdir_x(_dis,_dir)
		vsp += lengthdir_y(_dis,_dir)
		knockback_time = _tim
		if !_dead state = states.HURT
		}
	}
}

function isDead(){
	if state != states.DEAD{
		if life <= 0{
			state = states.DEAD
			life = 0;
			image_index = 0
			return true
		}
	} else return true
}