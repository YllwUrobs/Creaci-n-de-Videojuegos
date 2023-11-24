/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
switch (state) {
	case enemystate.WANDER :
		switch (sub) {
			case enemysub.IDLE :
				sprite_index = enemysprite[0]
				wander();
				checkrang()
				facing()
				break;
			case enemysub.WALK :
				sprite_index = enemysprite[1]
				wander();
				checkrang()
				facing()
				break;
			case enemysub.HURT :
			calc_en()
				if sprite_index != enemysprite[2]{
					sprite_index = enemysprite[2]
					image_index = 0
				}
				if image_index >= image_number-1{
					sub = enemysub.IDLE
				}
				break
		}
		break;
	case enemystate.FOLLOW :
		switch (sub) {
			case enemysub.IDLE :
				sprite_index = Enem2Run
				follow()
				stpflw()
				facing()
				break;
			case enemysub.WALK :
				sprite_index = Enem2Run
				follow()
				stpflw()
				facing()
				xp = x
				break;
			case enemysub.HURT :
			calc_en()
				if sprite_index != enemysprite[2]{
					sprite_index = enemysprite[2]
					image_index = 0
				}
				if image_index >= image_number-1{
					sub = enemysub.IDLE
				}
				break
			case enemysub.ATACK :
				follow()
				atack();
				facing()
				break;
		}
		break;
	case states.DEAD : 
		sub = enemysub.IDLE
			switch (sub) {
			case enemysub.IDLE :
				if sprite_index != enemysprite[3]{
					sprite_index = enemysprite[3]
					image_index = 0
					}
				if sprite_index == enemysprite[3]{
					if image_index >= image_number-1{
						instance_destroy()
					}
				}
			break
			}
}
xp = x 
yp = y
