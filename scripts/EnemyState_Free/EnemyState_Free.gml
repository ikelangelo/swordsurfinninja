//motion towards player
mp_potential_step_object(obj_CyberLynx.x, obj_CyberLynx.y, move, obj_block);

//stops movement toward player if out of line of sight
if collision_line(x, y, obj_CyberLynx.x, obj_CyberLynx.y, obj_block, false, false) != noone
{
	state = ENEMYSTATE.IDLE
}

if collision_circle(x, y, 1.25*sprite_width, obj_CyberLynx, false, true) != noone
{
	state = ENEMYSTATE.ATTACK

}