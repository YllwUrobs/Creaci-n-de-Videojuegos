/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
charor = global.charlist.Char1
life = 56;
lifemx = 56
face = 1;
pspeed = 2;
rspeed = 4
hsp =0;
vsp=0;
player_sprites = [Idle3, Walk3, Run3, Hurt3, Dead3]; 
bate_sprites = BtMelee3
sht_sprites = [ShtIdle3, ShtWalk3, ShtRun3, Shot3, ShtHurt3, ShtDead1];
state = states.IDLE
wepn = wpn.FISTS

for(i=0; i<4; i++){
	In[i][0] = -1
	In[i][1] = 0;
}
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