/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
life = 12
lifemx = 12
ovel = 4
vel = 2;
face = 1;
enemysprite = [Enem2Idle, Enem2Wlk, Enem2Hurt, Enem2Dead, Enem2Atack]

xp = x
yp = y
hsp = 0
vsp = 0;

wait_time = 100;
wait = 0;
time_pass = 0;
xdes = x;
ydes = y;
range = 300;
dir = 0;

rangesns = 150;
enemy_hit = ds_list_create();
dam = 2
canatack = true;
atckdis = 42
path_timer = 0;
path_delay = 5;
path = path_add()

state = enemystate.WANDER
sub = enemysub.IDLE;