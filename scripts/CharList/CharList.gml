function create_char (_name, _description, _anims, _batsprites, _shtsprites, _life, _lifemx) constructor {
	nem = _name
	description = _description
	anims = _anims
	batsprites = _batsprites
	shtsprites = _shtsprites
	life = _life
	lifemx = _lifemx
}

global.charlist = {
	
Char1 : new create_char(
		"Char 1",
		"Char 1",
		[Idle1, Walk1, Run1, Hurt1, Dead1],
		[BtMelee1],
		[ShtIdle1, ShtWalk1, ShtRun1, Shot1, ShtHurt1, ShtDead1],
		50,
		50),
		
Char2 : new create_char(
		"Char 2",
		"Char 2",
		[Idle2, Walk2, Run2, Hurt2, Dead2],
		[BtMelee2],
		[ShtIdle2, ShtWalk2, ShtRun2, Shot2, ShtHurt2, ShtDead1],
		50,
		50),
		
Char3 : new create_char(
		"Char 3",
		"Char 3",
		[Idle3, Walk3, Run3, Hurt3, Dead3],
		[BtMelee3],
		[ShtIdle3, ShtWalk3, ShtRun3, Shot3, ShtHurt3, ShtDead1],
		50,
		50),
	
}

