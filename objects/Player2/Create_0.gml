/// @description Inserte aquí la descripción
// Puede escribir su código en este editor
charor = global.charlist.Char2
life = 46;
lifemx = 46
face = 1;
pspeed = 3;
rspeed = 6
hsp =0;
vsp=0;
player_sprites = [Idle2, Walk2, Run2, Hurt2, Dead2]; 
bate_sprites = BtMelee2
sht_sprites = [ShtIdle2, ShtWalk2, ShtRun2, Shot2, ShtHurt2, ShtDead1];
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