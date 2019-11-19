moveSp = 0;

normalCooldown = 40;




enemyCooldown += -1;
if enemyCooldown <= 0
{
	instance_create_layer(x+irandom_range(32, 64), y+irandom_range(-600, 0), "Instances", obj_watcher_drone)
	enemyCooldown = 300;
}


if hp <= 0
{
	repeat(30)
	{
		instance_create_layer(x+irandom_range(-72, 72), y+irandom_range(-72, 72), "explosions", obj_explosion)
	}
	instance_create_layer(x, y, "explosions", obj_superlife);
	state = BOSSSTATE.RUNAWAY;
	
}