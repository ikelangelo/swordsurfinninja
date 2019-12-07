
ProcessAttack(spr_roboGhostFinisher, spr_roboGhostFinisherHB, 3, 20);

//play sound at image index
if image_index = 6
audio_play_sound(snd_slash3, 12, false);

if image_index > 17
{
	sprite_index = spr_roboGhostIdle;
	state = PLAYERSTATE.FREE;
}