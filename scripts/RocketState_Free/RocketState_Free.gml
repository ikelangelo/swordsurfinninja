blast_cooldown -= 1;

if blast_cooldown <= 0
{
	audio_play_sound(snd_rocket_launch, 9, 0);
	blast_cooldown = original_blast_cooldown;
	instance_create_layer(x, y, "Rockets", obj_rocket);
}

if hp <= 10
{
	blast_cooldown = original_blast_cooldown;
	state = ROCKETSTATE.HIT;
}