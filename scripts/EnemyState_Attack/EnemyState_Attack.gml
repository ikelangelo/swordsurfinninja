sprite_index = spr_watcher_drone_charge_atk;
image_speed = 1;
if image_index > 10
{
	audio_play_sound(snd_enemy_shoot, 9, 0);
	instance_create_layer(x, y, "Effects", obj_enemy_attack)
	sprite_index = spr_watcher_drone;
	state = ENEMYSTATE.FREE;
}