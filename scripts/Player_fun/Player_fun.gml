function restart(){
right = 0;
left = 0;
up = 0;
down = 0;
}

function get_input(){
	if keyboard_check(ord("A")) left = 1;
	if keyboard_check(ord("D")) right = 1;
	if keyboard_check(ord("W")) up = 1;
	if keyboard_check(ord("S")) down = 1;
}

function calc_mov(){
	hmove = right - left;
	vmove = down - up;
	if hmove != 0 face = hmove;
	
	if (hmove != 0 or vmove != 0) && !keyboard_check(vk_shift){
		var dir = point_direction(0,0,hmove,vmove);
		
		hmove = lengthdir_x(pspeed, dir);
		vmove = lengthdir_y(pspeed, dir);
		
		x += hmove;
		y += vmove;
		state = states.WALK;
	}
	else if((hmove != 0 or vmove != 0) && keyboard_check(vk_shift)){
		var dir = point_direction(0,0,hmove,vmove);
		
		hmove = lengthdir_x(rspeed, dir);
		vmove = lengthdir_y(rspeed, dir);
		
		x += hmove;
		y += vmove;
		state = states.RUN
	}
	else {
		state = states.IDLE
	}
}

function calc_knock(){
	x+=hsp;
	y+=vsp;
	
	hsp *= global.drag;
	vsp *= global.drag
	
	is_stop()
}

function col(){
	var _tx = x;
	var _ty = y;
	
	x= xprevious;
	y= yprevious;
	
	var _disx = ceil(abs(_tx - x));
	var _disy = ceil(abs(_ty - y));
	
	if place_meeting(x + _disx * sign(_tx - x), y, Wll) x = round(x);
	if place_meeting(x, y + _disy * sign(_ty - y), Wll) y = round(y);
	
	repeat(_disx) {
		if !place_meeting(x + sign(_tx-x), y, Wll) x += sign(_tx - x)
	}
	repeat(_disy) {
		if !place_meeting(x, y + sign(_ty-y), Wll) y += sign(_ty - y)
	}
}

function batHit(){
	if keyboard_check(ord("F")){
		if state != states.ATACK{
			state = states.ATACK
			image_index = 0;
			ds_list_clear(golpeados);
		}
	}
	if state == states.ATACK{
	mask_index = BtMelee1HB
	var golpeadoahora = ds_list_create()
	var _dam = In[Inind][0].dam
	var hits = instance_place_list(x+(36*face),y-8, In[Inind][0].tarj, golpeadoahora, false);
	if hits >= 0{
		for (var i=0;i<hits;i++){
			var hitID = ds_list_find_value(golpeadoahora, i);
			if (ds_list_find_index(golpeados, hitID) == -1) {
				ds_list_add(golpeados, hitID);
				with (hitID){
					damage(hitID, other, _dam,1)
				}
			}
		}
	}
	ds_list_clear(golpeadoahora);
	mask_index = player_sprites[0];
	if image_index > image_number - 1 {
			state = states.IDLE;
		}
	}
}

function fir(){
	if keyboard_check(ord("F")) && can_fire && In[Inind][1]{
		state = states.SHOT;
		image_index = 0;
		can_fire = false;
		alarm = frate;
	}
	if sprite_index = sht_sprites[3]{
		if floor(image_index) == 2 && shot == false{
			shot = true;
			var _dir = point_direction(0, 0, face, 0);
			var _inst = instance_create_layer(x +21 * face, y - 7, "bulet", In[Inind][0].bullfir);
			var _dama = In[Inind][0].dam;
			In[Inind][1] -= 1
			with (_inst){
				dam = _dama;
				speed = 10;
				face = other.face;
				direction = _dir;
				owner_id = other;
			}
		}
		if image_index >= image_number-1{
			state = states.IDLE;
			shot = false;
		}
	}
}