if alarm[0] < 0
{
	alarm[0] = 100;
}

if alarm[1] < 0
{
	alarm[1] = 1100;
}

if !audio_is_playing(snd_bgm_lvl2)
audio_play_sound(snd_bgm_lvl2, 25, 0);