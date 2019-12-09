
if !audio_is_playing(snd_bgm_tutorial)
audio_play_sound(snd_bgm_tutorial, 25, 0);

if keyboard_check_released(ord("G"))
{
	audio_stop_all();
	room_goto_next();
}
