
//written to handle getting stuck in walls when cyberlynx pushes them with sword motion add
//perhaps not the most elegant solution but still works mostly
var pdir = point_direction(x, y, obj_CyberLynx.x, obj_CyberLynx.y);
if place_meeting(x, y, obj_block) move_outside_solid(pdir, 16);


//start motion towards player
if collision_line(x, y, obj_CyberLynx.x, obj_CyberLynx.y, obj_block, false, false) = noone
{
	 state = ENEMYSTATE.FREE;
}