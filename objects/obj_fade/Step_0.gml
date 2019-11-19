image_alpha += 0.0045;
if(image_alpha >= 1)
{
	room_goto_next();
	audio_stop_all();
}