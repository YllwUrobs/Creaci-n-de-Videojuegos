/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
sprite_index = item.sprite
if place_meeting(x,y,Player){
	if keyboard_check_pressed(vk_space)
	{
		if (is_instanceof(item, create_weapon)){
			if Player.In[Player.Inind][0] == -1 {Player.In[Player.Inind][0] = item; Player.In[Player.Inind][1] = cant; Player.wepn = item.wpnst; Player.pickup = false instance_destroy()}
			else {
				for (i = 0; i<array_length(Player.In); i++){
					if Player.In[i][0] == -1 {Player.In[i][0] = item; Player.In[Player.Inind][1] = cant; instance_destroy(); Player.pickup = false break}
				}
			}
		}
		if (is_instanceof(item, create_consum)){
			for (i = 0; i<array_length(Player.incons); i++){
				if Player.incons[i][0] == -1 {
					Player.incons[i][0] = item; 
					if Player.incons[i][1]+cant <= item.cantmx{
						Player.incons[i][1] = cant; 
						instance_destroy(); 
						Player.pickup = false 
						break
					} else{
						var index = i
						for (i = cant; i>0; i--){
							var newcant = Player.incons[index][1] + i
							if (newcant <= item.cantmx){
								Player.incons[index][1] += i; 
								Player.pickup = false
								cant -= i
							}
						}
					}
				}
				/*if (Player.incons[i][0] == item) && (Player.incons[i][1] <= item.cantmx){
					var index = i
					for (i = cant; i>0; i--){
						var newcant = Player.incons[index][1] + i
						if (newcant <= item.cantmx){
							Player.incons[index][1] += i; 
							Player.pickup = false
							cant -= i
							if cant == 0 {
								instance_destroy()
								break
							}
						}
					}
				}*/
			}
		}
	}
}