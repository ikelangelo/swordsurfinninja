
rocketAim--;


//made this so rockets weren't op
if rocketAim <= 0
{
	direction = point_direction(x, y, obj_roboGhost.x, obj_roboGhost.y);
	image_angle = direction;
	speed = 20;
	rocketAim = 120;
}

if place_meeting(x,y, obj_block)
{
	instance_create_layer(x, y, "Effects", obj_explosion);
	instance_destroy();
}


