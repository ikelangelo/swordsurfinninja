
ProcessAttack(spr_roboGhostSlash1, spr_roboGhostSlashHB1, 1, 2);

if key_attack && image_index > 3
{
	state = PLAYERSTATE.ATTACK_COMBO;
}


if image_index > 10
{
	sprite_index = spr_roboGhostIdle;
	state = PLAYERSTATE.FREE;
}