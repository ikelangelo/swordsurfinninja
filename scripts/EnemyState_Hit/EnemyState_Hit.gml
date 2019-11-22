///prevents enemy attack after enemy is hit

alarm[0] = -1;
alarm[1] = -1;

///knockback
motion_set(0, knockback*obj_roboGhost.image_xscale);

///slows knockback so that it will end eventually
knockback = lerp(knockback, 0, 0.1);

//prevents horizontal collision into blocks
if (place_meeting(x+knockback, y, obj_block))
{
	knockback = 0
}


sprite_index = spr_watcher_shocked;

if knockback = 0 
{
	sprite_index = spr_watcher_drone;
	state = ENEMYSTATE.IDLE;
}