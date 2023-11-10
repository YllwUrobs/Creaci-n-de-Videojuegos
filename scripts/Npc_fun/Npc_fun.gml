
function calc_en(){
	x+=hsp;
	y+=vsp;
	
	hsp *= global.drag;
	vsp *= global.drag
	
	is_stop()
}

function is_stop(){
	if abs(hsp) < 0.1 hsp = 0
	if abs(vsp) < 0.1 vsp = 0
}

function facing() {
	var _facing = sign(x-xp);
	if _facing != 0 face = _facing
}

function wander(){
	time_pass ++
	if ((x == xdes) && (y == ydes)) || time_pass > wait_time{
		sub = enemysub.IDLE;
		hspeed = 0;
		vspeed = 0;
		wait ++
		if wait >= wait_time{
			wait = 0;
			time_pass=0;
			dir = point_direction(x, y, xstart,ystart) + irandom_range(-45,45)
			xdes = x+lengthdir_x(range, dir)
			ydes = y+lengthdir_y(range, dir)
		}
		
	}
	else {
		sub = enemysub.WALK
		var _dis = point_distance(x,y,xdes,ydes)
		var _speedf = vel;
		if _dis < vel _speedf = _dis
		dir = point_direction(x,y,xdes,ydes)
		hspeed = lengthdir_x(_speedf, dir)
		vspeed = lengthdir_y(_speedf,dir)
	}
}

function checkrang(){
	if collision_circle(x,y,rangesns, Player, false, true){
		state = enemystate.FOLLOW
		tarjet = Player;
	}
}

function follow(){
	if --path_timer <= path_delay{
	path_timer = path_delay
	var _canrech = mp_grid_path(global.mp_grid, path, x, y, Player.x, Player.y, true)
	if _canrech{
			path_start(path, vel, path_action_stop, false)
	} else state = enemystate.WANDER
	var _dis = point_distance(x,y,tarjet.x,tarjet.y)
		//var _speedf = vel;
		//if _dis < vel _speedf = _dis
		//dir = point_direction(x,y,tarjet.x,tarjet.y)
		//hspeed = lengthdir_x(_speedf, dir)
		//vspeed = lengthdir_y(_speedf,dir)
		//path_start(path, vel, path_action_stop, false)
		
	if _dis <= atckdis && canatack {vel =2; sub = enemysub.ATACK} else vel = ovel
	if _dis <= 25 path_end()
	}
}

function atack(){
	if sprite_index != Sprite45{
		sprite_index = Sprite45		
		image_index = 0;
		ds_list_clear(enemy_hit)
	}
	else {
		mask_index = BtMelee1HB
		var golpeadoahora = ds_list_create()
		var hits = instance_place_list(x+(36*face),y-8,Player, golpeadoahora, false);
		if hits >= 0{
			canatack = false;
			alarm[0] = wait_time;
			for (var i=0;i<hits;i++){
				var hitID = ds_list_find_value(golpeadoahora, i);
				if (ds_list_find_index(enemy_hit, hitID) == -1) {
					ds_list_add(enemy_hit, hitID);
					with (hitID){
						damage(hitID, other, other.dam,1)
					}
			}
		}
	}
	ds_list_clear(golpeadoahora);
	mask_index = enemysprite[0];
	if image_index > image_number - 1 {
			sub = enemysub.IDLE;
		}
	}
}

function stpflw(){
	if point_distance(x,y,tarjet.x,tarjet.y) > rangesns state = enemystate.WANDER
}