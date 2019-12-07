if alarm[0] < 0
{
	alarm[0] = 90;
}

if alarm[1] < 0
{
	alarm[1] = 1200;
}

if !audio_is_playing(snd_bgm_lvl3)
audio_play_sound(snd_bgm_lvl3, 25, 0);