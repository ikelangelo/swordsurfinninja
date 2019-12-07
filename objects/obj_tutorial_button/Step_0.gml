if place_meeting(x, y, obj_cursor) && mouse_check_button_pressed(mb_left)
{
	repeat(20)
	{
		instance_create_layer(x+irandom_range(-240, 240), y+irandom_range(-240, 240), "Effects", obj_explosion);
	}
}


if place_meeting(x, y, obj_cursor) && mouse_check_button_released(mb_left)
{
	audio_stop_all();
	room_goto(rm_tutorial);
		
}