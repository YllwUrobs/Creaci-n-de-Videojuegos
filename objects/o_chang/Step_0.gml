sprite_index = chara.anims[0]
if place_meeting(x,y,Player){
	if keyboard_check_pressed(ord("E")){
		next = Player.charor
		Player.life = chara.life
		Player.lifemx = chara.lifemx
		Player.player_sprites = chara.anims
		Player.bate_sprites = chara.batsprites
		Player.sht_sprites = chara.shtsprites
		Player.charor = chara
		chara = next
	}
}