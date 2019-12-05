

var pdir = point_direction(x, y, obj_roboGhost.x, obj_roboGhost.y);
if place_meeting(x, y, obj_block) move_outside_solid(pdir, 16);


//start motion towards player
if collision_line(x, y, obj_roboGhost.x, obj_roboGhost.y, obj_block, false, false) = noone
{
	 state = ENEMYSTATE.FREE;
}