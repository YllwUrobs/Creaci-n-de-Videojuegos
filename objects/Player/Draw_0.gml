/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
draw_sprite_ext(sprite_index,image_index,x,y,face,1,0,c_white,1);

if In[Inind] != -1{
	if In[Inind].wpnst == wpn.BATE{
		switch (state) {
			default :
				draw_sprite_ext(In[Inind].anim[0],image_index,x,y,face,1,0,c_white,1);
			break;
			case states.WALK :
				draw_sprite_ext(In[Inind].anim[1],image_index,x,y,face,1,0,c_white,1);
			break;
			case states.RUN :
				draw_sprite_ext(In[Inind].anim[2],image_index,x,y,face,1,0,c_white,1);
			break;
			case states.ATACK :
				draw_sprite_ext(In[Inind].anim[3],image_index,x,y,face,1,0,c_white,1);
			break;
			case states.HURT :
				draw_sprite_ext(In[Inind].anim[4],image_index,x,y,face,1,0,c_white,1);
				break
			case states.DEAD :
				
				break
		}
	}
	if In[Inind].wpnst == wpn.SHOTGUN{
		switch (state) {
			default :
				draw_sprite_ext(In[Inind].anim[0],image_index,x,y,face,1,0,c_white,1);
			break;
			case states.WALK :
				draw_sprite_ext(In[Inind].anim[1],image_index,x,y,face,1,0,c_white,1);
			break;
			case states.RUN :
				draw_sprite_ext(In[Inind].anim[2],image_index,x,y,face,1,0,c_white,1);
			break;
			case states.SHOT :
				draw_sprite_ext(In[Inind].anim[3],image_index,x,y,face,1,0,c_white,1);
			break;
			case states.HURT :
				draw_sprite_ext(In[Inind].anim[4],image_index,x,y,face,1,0,c_white,1);
				break
			case states.DEAD :
				
				break
		}
	}
}


