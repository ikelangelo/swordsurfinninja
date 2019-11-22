//motion towards player
mp_potential_step_object(obj_roboGhost.x, obj_roboGhost.y, move, obj_block);

//stops movement toward player if out of line of sight
if collision_line(x, y, obj_roboGhost.x, obj_roboGhost.y, obj_block, false, false) != noone
{
	state = ENEMYSTATE.IDLE
}

if collision_circle(x, y, 1.25*sprite_width, obj_roboGhost, false, true) != noone
{
	state = ENEMYSTATE.ATTACK

}