canGetHurt = false;

//play sound at image index
if !audio_is_playing(snd_sword_surf)
audio_play_sound(snd_sword_surf, 10, 1);

if !(instance_exists(obj_target)) && !(place_meeting(mouse_x, mouse_y, obj_block)) 

	instance_create_layer(mouse_x, mouse_y, "Instances", obj_target);
	path = path_add();

	if mp_linear_path_object(path, obj_target.x, obj_target.y, 10000, obj_block)
	{
		sprite_index = spr_roboGhostSwordSurf;
		path_start(path, 90, path_action_stop, false);
	}
	




if place_meeting(x, y, obj_target)
{
	audio_stop_sound(snd_sword_surf);
	sword_surf_ready = false;
	instance_destroy(obj_target);
	path_delete(path);
	sprite_index = spr_roboGhostIdle;
	canGetHurt = true;
	state = PLAYERSTATE.FREE;
}