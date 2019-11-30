original_blast_cooldown = 60;
blast_cooldown -= 1;

if blast_cooldown <= 0
{
	blast_cooldown = original_blast_cooldown;
	instance_create_layer(x, y, "Rockets", obj_rocket);
}

if hp <= 0
instance_destroy();