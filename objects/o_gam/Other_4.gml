var _w = ceil(room_width/TS)
var _h = ceil(room_height/TS)

global.mp_grid = mp_grid_create(0,0,_w, _h, TS, TS)

with(Wll){
mp_grid_add_cell(global.mp_grid,floor(x/32),floor(y/32))
}
/*with(o_enemy){
	mp_grid_add_cell(global.mp_grid,floor(x/32),floor(y/32))
}*/
//mp_grid_add_instances(global.mp_grid, Wll, true)
//mp_grid_add_instances(global.mp_grid, o_enemy, true)




