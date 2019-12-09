if keyboard_check_released(vk_enter)
{
	audio_stop_all();
	room_goto(rm_title);
}


if !audio_is_playing(snd_bgm_victory)
audio_play_sound(snd_bgm_victory, 25, 0);