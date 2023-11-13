// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información

function create_item (_name, _description, _sprite, _icon) constructor {
	nem = _name
	description = _description
	sprite = _sprite
	icon = _icon
}

function create_weapon (_name, _description, _sprite, _icon, _wpnst, _anim, _dam, _tarj, _bullfir, _maxbul) : create_item(_name, _description, _sprite, _icon) constructor {
	wpnst = _wpnst
	anim = _anim
	dam = _dam
	tarj = _tarj
	bullfir = _bullfir
	maxbul = _maxbul
}

function create_consum (_name, _description, _sprite, _icon, _cantmx, _effect) : create_item(_name, _description, _sprite, _icon) constructor {
	cantmx = _cantmx
	effect = _effect
}

global.item_list = {

/*-----------------Weapons--------------------*/

bBate : new create_weapon(
		"Bate", 
		"Un bate", 
		Bate28, 
		BateIc, 
		wpn.BATE, 
		[BtIdle, BtWalk, BtRun, BtMelee, BtHurt],
		2,
		o_enemy,
		noone,
		noone),

ShtGun : new create_weapon(
			"Escopeta",	
			"Una escopeta", 
			Shotgun, 
			ShotgunIc, 
			wpn.SHOTGUN, 
			[ShtIdle, ShtWalk, ShtRun, Shot, ShtHurt],
			4,
			o_enemy,
			Bul,
			2),

Crss : new create_weapon(
			"Cruz",
			"Una cruz",
			Cross,
			CrossIc,
			wpn.BATE,
			[CrossIdle, CrossWalk, CrossRun, CrossMelee, CrossHurt],
			4,
			o_enemy,
			noone,
			noone),
		
ShtGunB : new create_weapon(
			"Escopeta",	
			"Una escopeta", 
			ShotgunB, 
			ShotgunBIc, 
			wpn.SHOTGUN, 
			[ShtBIdle, ShtBWalk, ShtBRun, ShotB, ShtBHurt],
			6,
			o_enemy,
			Bul,
			6),

/*-----------------Consumibles---------------------*/

Bot : new create_consum(
			"Botiquín",
			"Con esto puedo curarme",
			Bot,
			BotInc,
			5,
			function(tar){
				if tar.life != tar.lifemx{
				tar.life += 5
				if tar.life > tar.lifemx tar.life = tar.lifemx
				tar.conselus = true
				}
			}),
			
Bull : new create_consum(
			"Bullets",
			"Munición para armas",
			Bull,
			BullInc,
			30,
			function(tar){
				if tar.wepn == wpn.SHOTGUN{
					if tar.In[tar.Inind][1] < tar.In[tar.Inind][0].maxbul{
						for (i = tar.incons[tar.consel][1]; i>0;i--){
							if (tar.In[tar.Inind][1] + i <= tar.In[tar.Inind][0].maxbul){
							tar.In[tar.Inind][1] += i; 
							tar.incons[tar.consel][1] -= i
							if tar.incons[tar.consel][1] <=0 tar.incons[tar.consel][0] = -1 
							}
						}
					}
				}
			})

}