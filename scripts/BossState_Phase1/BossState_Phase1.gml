
moveSp = 0;

normalCooldown = 50;

if hp <= 0
{
	repeat(30)
	{
		instance_create_layer(x+irandom_range(-72, 72), y+irandom_range(-72, 72), "explosions", obj_explosion)
	}
	instance_create_layer(x, y, "explosions", obj_superlife);
	state = BOSSSTATE.RUNAWAY;
	
}