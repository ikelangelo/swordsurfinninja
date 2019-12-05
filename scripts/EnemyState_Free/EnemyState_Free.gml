//motion towards player
mp_potential_step_object(obj_roboGhost.x, obj_roboGhost.y, move, obj_block);
mp_potential_step_object(obj_roboGhost.x, obj_roboGhost.y, 0, obj_enemy);
//stops movement toward player if out of line of sight
if collision_line(x, y, obj_roboGhost.x, obj_roboGhost.y, obj_block, false, false) != noone
{
	state = ENEMYSTATE.IDLE
}

blast_cooldown -= 1;
if blast_cooldown <= 0
{
	blast_cooldown = original_blast_cooldown;
	state = ENEMYSTATE.ATTACK;
}