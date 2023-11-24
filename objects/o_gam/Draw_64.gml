/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
if pause == true && endg == false{
	for (i=1;i<4;i++){
		if i == Sel_in{
			draw_sprite_stretched(Casilla, 10, 350, 195 + (100*i), 300, 30)
		}
		else{
			draw_sprite_stretched(Casilla, 4, 350, 195 + (100 *i), 300, 30)
		}
	}
	draw_text(470, 300, "Resumir")
	draw_text(460, 400, "Reiniciar")
	draw_text(475, 500, "Salir")
}

if pause == true && endg == true{
	for (i=1;i<3;i++){
		if i == Sel_in{
			draw_sprite_stretched(Casilla, 10, 350, 195 + (100*i), 300, 30)
		}
		else{
			draw_sprite_stretched(Casilla, 4, 350, 195 + (100 *i), 300, 30)
		}
	}
	draw_text(470, 300, "Cerrar juego")
	draw_text(460, 400, "Ir al menu")
}





