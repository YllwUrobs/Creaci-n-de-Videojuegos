/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
sprite_index = item.sprite
if place_meeting(x,y,Player){
	if keyboard_check_pressed(ord("E"))
	{
		if Player.In[Player.Inind] == -1 {Player.In[Player.Inind] = item; Player.wepn = item.wpnst; Player.pickup = false instance_destroy()}
		else {
			for (i = 0; i<array_length(Player.In); i++){
				if Player.In[i] == -1 {Player.In[i] = item; instance_destroy(); Player.pickup = false break}
			}
		}
	}
}