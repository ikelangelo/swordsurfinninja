if place_meeting(x, y, obj_cursor) && mouse_check_button_released(mb_left)
{
	repeat(40)
	{
		instance_create_layer(x+irandom_range(1, 5000), y+irandom_range(1, 500), "Effects", obj_explosion);
	}
	instance_destroy();
}
