switch(wepn) {
	default:
		switch(state) {
			default : 
				sprite_index = player_sprites[0]
				restart();
				get_input();
				calc_mov();
				calc_knock()
			break;
			case states.WALK :
				sprite_index = player_sprites[1]
				restart();
				get_input();
				calc_mov();
				calc_knock()
			break;
			case states.RUN :
				sprite_index = player_sprites[2]
				restart();
				get_input();
				calc_mov();
				calc_knock()
			break;
			case states.HURT :
				if sprite_index != player_sprites[3]{
					sprite_index = player_sprites[3]
					image_index = 0;
				}
				if image_index >= image_number-1{
					state = states.IDLE
				}
				calc_knock()
			break;
			case states.DEAD :
				if sprite_index != player_sprites[4]{
					sprite_index = player_sprites[4]
					image_index = 0;
					alarm[1] = 52
				}
				if image_index >= image_number-1{
					image_speed = 0;
				}
				for (i=0; i<(array_length(In)); i++){
					In[i][0] = -1;
				}
		}
		break;
	case wpn.BATE :
		switch(state) {
			default :
				sprite_index = player_sprites[0]
				restart();
				get_input();
				calc_mov();
				batHit();
			break;
			case states.WALK :
				sprite_index = player_sprites[1]
				restart();
				get_input();
				calc_mov();col()
				calc_knock()
			break;
			case states.RUN :
				sprite_index = player_sprites[2]
				restart();
				get_input();
				calc_mov();col()
				calc_knock()
			break;
			case states.ATACK :
				sprite_index = bate_sprites
				batHit();
				calc_knock()
			break;
			case states.HURT :
				if sprite_index != player_sprites[3]{
					sprite_index = player_sprites[3]
					image_index = 0;
				}
				if image_index >= image_number-1{
					state = states.IDLE
				}
				calc_knock()
				break
			case states.DEAD :
				if sprite_index != player_sprites[4]{
					sprite_index = player_sprites[4]
					image_index = 0;
					alarm[1] = 52
				}
				if image_index >= image_number-1{
					image_speed = 0;
				}
				for (i=0; i<(array_length(In)); i++){
					In[i][0] = -1;
				}
		}
		break;
	case wpn.SHOTGUN : 
		switch(state) {
			default : 
				sprite_index = sht_sprites[0]
				restart();
				get_input();
				calc_mov();col()
				fir();
				calc_knock()
			break;
			case states.WALK :
				sprite_index = sht_sprites[1]
				restart();
				get_input();
				calc_mov();col()
				calc_knock()
			break;
			case states.RUN :
				sprite_index = sht_sprites[2]
				restart();
				get_input();
				calc_mov();col()
				calc_knock()
			break;
			
			case states.SHOT :
				sprite_index = sht_sprites[3]
				fir();
				calc_knock()
			break;
			case states.HURT :
				if sprite_index != sht_sprites[4]{
					sprite_index = sht_sprites[4]
					image_index = 0;
				}
				if image_index >= image_number-1{
					state = states.IDLE
				}
				calc_knock()
				break
			case states.DEAD :
				if sprite_index != player_sprites[4]{
					sprite_index = player_sprites[4]
					image_index = 0;
					alarm[1] = 52
				}
				if image_index >= image_number-1{
					image_speed = 0;
				}
				for (i=0; i<(array_length(In)); i++){
					In[i][0] = -1;
				}
		}
		break
}

get_invinp()

if keyboard_check_pressed(ord("A")){
	if incons[consel][0] != -1{
		incons[consel][0].effect(self);
		if conselus == true{
			incons[consel][1] -= 1
			if incons[consel][1] <= 0 incons[consel][0] = -1
			conselus = false
		}
	}
}

if keyboard_check_pressed(ord("N")){
	if Inind == array_length(In)-1 Inind = 0;
	else Inind ++
	if In[Inind][0] == -1{
		wepn = wpn.FISTS;
	}
	else {
		wepn = In[Inind][0].wpnst
	}
}

if keyboard_check_pressed(ord("Q")) && In[Inind][0] != -1 {
	var _it = instance_create_depth(x,y,1,o_item)
	with (_it){
		item = other.In[other.Inind][0]
		cant = other.In[other.Inind][1]
	}
	In[Inind][0] = -1
	wepn = wpn.FISTS
}

