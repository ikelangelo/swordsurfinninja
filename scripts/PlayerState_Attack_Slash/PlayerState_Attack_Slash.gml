
ProcessAttack(spr_roboGhostSlash1, spr_roboGhostSlashHB1, 1, 2);
 
///combo possibility
if key_attack && image_index > 3
{
	state = PLAYERSTATE.ATTACK_COMBO;
}

//send back to free state
if image_index > 10
{
	sprite_index = spr_roboGhostIdle;
	state = PLAYERSTATE.FREE;
}

//play sound at image index
if image_index =2
audio_play_sound(snd_slash1, 10, false);