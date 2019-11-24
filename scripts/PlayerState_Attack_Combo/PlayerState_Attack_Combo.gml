
ProcessAttack(spr_roboGhostCombo, spr_roboGhostComboHB, 2, 2);

if key_attack && image_index > 6
{
	state = PLAYERSTATE.ATTACK_FINISHER;
}

if image_index > 11
{
	sprite_index = spr_roboGhostIdle;
	state = PLAYERSTATE.FREE;
}