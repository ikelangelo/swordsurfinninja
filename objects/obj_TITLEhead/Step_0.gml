if !audio_is_playing(snd_bgm_title)
audio_play_sound(snd_bgm_title, 25, 0);

if keyboard_check_released(vk_enter) 
game_end();
