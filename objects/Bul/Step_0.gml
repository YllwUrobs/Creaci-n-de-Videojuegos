/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
var _dis = point_distance(xstart, ystart, x, y);

if _dis > range {
	instance_destroy()
}

if place_meeting(x, y, o_enemy){
	damage(o_enemy, self, dam, 1)
	instance_destroy();
}



