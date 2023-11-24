/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if room != Room2 && room != Story && room != End{
	if keyboard_check_pressed(vk_escape){
		pause =! pause;
		endg = false
		conf = false
		quitng = 1
		Sel_in = 1
		if pause == false{
			instance_activate_all();
			/*surface_free(paused_surf);
						paused_surf = -1;*/
		}
		if pause == true{
			instance_deactivate_all(true)
		}
	}
}

if endg == true{
	if keyboard_check_pressed(vk_up) {
		Sel_in--
		if Sel_in < 1 Sel_in = 1
	}
	if keyboard_check_pressed(vk_down) {
		Sel_in++
		if Sel_in > 2 Sel_in = 2
	}
	if keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space){
		switch(Sel_in) {
			case 1 : 
				game_end()
			break;
			case 2 :
				room_goto(Room2)
			break
		}
	}
}

if pause == true && endg == false{
	if keyboard_check_pressed(vk_up) {
		Sel_in--
		if Sel_in < 1 Sel_in = 1
	}
	if keyboard_check_pressed(vk_down) {
		Sel_in++
		if Sel_in > 3 Sel_in = 3
	}
	if keyboard_check_pressed(vk_enter) || keyboard_check_pressed(vk_space){
		switch(Sel_in) {
			case 1 : 
				instance_activate_all();
				pause =! pause
			break;
			case 2 :
				room_restart()
			break
			case 3 :
				Sel_in = 1
				endg = true
			break
		}
	}
}






