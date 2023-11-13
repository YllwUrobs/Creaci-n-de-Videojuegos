/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
life = 50;
lifemx = 50
face = 1;
pspeed = 3;
rspeed = 5
hsp =0;
vsp=0;
player_sprites = [Idle1, Walk1, Run1, Hurt1, Dead1]; 
bate_sprites = BtMelee1
sht_sprites = [ShtIdle1, ShtWalk1, ShtRun1, Shot1, ShtHurt1, ShtDead1];
state = states.IDLE
wepn = wpn.FISTS

In = array_create(4, -1);
Inind = 0;


for(i=0; i<4; i++){
	incons[i][0] = -1
	incons[i][1] = 0;
}
consel = 0;
conselus = false

frate = 30;
can_fire = true;
shot = false;
bulspd = 8;

golpeados = ds_list_create()
batdam = 2