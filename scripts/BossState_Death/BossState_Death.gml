
enemyCooldown += 2;
bulletCooldown +=2

y += 5;

	repeat(50)
	{
		instance_create_layer(x+irandom_range(-128, 128), y+irandom_range(-128, 128), "explosions", obj_explosion)
	}
