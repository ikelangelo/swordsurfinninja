path = path_add();

if mp_linear_path(path, obj_target.x, obj_target.y, 30, false)
path_start(path, 30, path_action_stop, false);

if place_meeting(x, y, obj_target)
{
	path_delete(path);
	state = PLAYERSTATE.FREE;
}