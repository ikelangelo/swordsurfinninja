if !instance_exists(obj_target) && !place_meeting(mouse_x, mouse_y, obj_block)
{
	instance_create_layer(mouse_x, mouse_y, "Instances", obj_target);
	path = path_add();


	if mp_potential_path_object(path, obj_target.x, obj_target.y, 90, 3, obj_block)
	{
		sprite_index = spr_roboGhostSwordSurf;
		path_start(path, 90, path_action_stop, false);
	}
}

if place_meeting(x, y, obj_target)
{
	instance_destroy(obj_target);
	path_delete(path);
	sprite_index = spr_roboGhostIdle;
	state = PLAYERSTATE.FREE;
}