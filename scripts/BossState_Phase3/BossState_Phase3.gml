moveSp = 0;

normalCooldown = 35;


enemyCooldown += -1;
if enemyCooldown <= 0
{
	instance_create_layer(x+irandom_range(32, 64), y+irandom_range(-600, 0), "Instances", obj_watcher_drone)
	enemyCooldown = 240;
}


if hp <= 0
{
	repeat(50)
	{
		instance_create_layer(x+irandom_range(-128, 128), y+irandom_range(-128, 128), "explosions", obj_explosion)
	}
	
	state = BOSSSTATE.DEATH;
	
}