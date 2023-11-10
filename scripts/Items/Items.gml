// Los recursos de Script han cambiado para la v2.3.0 Consulta
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para más información

function create_item (_name, _description, _sprite, _icon) constructor {
	name = _name
	description = _description
	sprite = _sprite
	icon = _icon
}

function create_weapon (_name, _description, _sprite, _icon, _wpnst, _anim, _dam) : create_item(_name, _description, _sprite, _icon) constructor {
	wpnst = _wpnst
	anim = _anim
	dam = _dam
}

global.item_list = {

bBate : new create_weapon(
		"Bate", 
		"Un bate", 
		Bate28, 
		BateIc, 
		wpn.BATE, 
		[BtIdle, BtWalk, BtRun, BtMelee, BtHurt],
		2),

ShtGun : new create_weapon(
			"Escopeta",	
			"Una escopeta", 
			Shotgun, 
			ShotgunIc, 
			wpn.SHOTGUN, 
			[ShtIdle, ShtWalk, ShtRun, Shot, ShtHurt],
			4),

Crss : new create_weapon(
			"Cruz",
			"Una cruz",
			Cross,
			CrossIc,
			wpn.BATE,
			[CrossIdle, CrossWalk, CrossRun, CrossMelee, CrossHurt],
			4),
		
ShtGunB : new create_weapon(
			"Escopeta",	
			"Una escopeta", 
			ShotgunB, 
			ShotgunBIc, 
			wpn.SHOTGUN, 
			[ShtBIdle, ShtBWalk, ShtBRun, ShotB, ShtBHurt],
			6),

}