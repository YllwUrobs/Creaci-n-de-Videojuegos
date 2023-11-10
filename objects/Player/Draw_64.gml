/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
for (i=0; i<(array_length(In)); i++){
	if i == Inind draw_sprite(CasillaUpsc, 10, 100, 100 + 74 * i)
	else draw_sprite(CasillaUpsc, 4, 100, 100 + 74  * i);
	if In[i] != -1 draw_sprite(In[i].icon,0,100, 100 + 74 * i) 
}

var _lifeper = ceil(life/2)
var _celper = (2 - ((_lifeper *2 - life)))/2
for (i=0;i<_lifeper;i++){
	draw_sprite(Life71,0,100,100 + 14*i)
}
for (i=0;i<_lifeper;i++){
	
	if i == _lifeper -1 {
		draw_sprite_part(Life,0,1,_celper,9,13,100,100+14*i)
	} else draw_sprite(Life,0,100,100 + 14*i)
}

