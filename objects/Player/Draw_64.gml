/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
for (i=0; i<(array_length(In)); i++){
	if i == Inind draw_sprite(CasillaUpsc, 10, 100, 100 + 74 * i)
	else draw_sprite(CasillaUpsc, 4, 100, 100 + 74  * i);
	if In[i][0] != -1 {
		draw_sprite(In[i][0].icon,0,100, 100 + 74 * i) 
		if In[i][0].wpnst == wpn.SHOTGUN draw_text(108, 100 + 74 * i, In[i][1])
	}
}

for (i=0; i<(array_length(incons)); i++){
	if i == consel draw_sprite(CasillaUpsc, 10, 400 + 74 * i, 580)
	else draw_sprite(CasillaUpsc, 4, 400 + 74 * i, 580);
	if incons[i][0] != -1 {
		draw_sprite(incons[i][0].icon,0, 400 + 74 * i, 580) 
		draw_text(408 + 74 * i, 580, incons[i][1])
	}
}

var _lifeper = ceil(lifemx/2)
var _lifeperv = ceil(life/2)
for (i=0;i<_lifeper;i++){
	draw_sprite(Life71,0,40,100 + 14*i)
}
for (i=0;i<_lifeperv;i++){
	var _celper = (life - 2 * i) * 6.5
	if i == _lifeperv -1 {
		draw_sprite_part(Life,0,0,0, 9,_celper,40,100+14*i)
	} else draw_sprite(Life,0,40,100 + 14*i)
}

