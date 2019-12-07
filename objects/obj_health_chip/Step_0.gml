if place_meeting(x, y, obj_roboGhost)
{
	audio_play_sound(snd_chip_health_collect, 5, 0);
	obj_game.hp++;
	instance_destroy();
}

HCvsp += grav;

//////horiz collision
if (place_meeting(x+HChsp, y, obj_block))
{
	while (!place_meeting(x+sign(HChsp), y, obj_block))
	{
		x += sign(HChsp);
	}
	HChsp = 0;
}
x += HChsp;

///////vertical collision

if (place_meeting(x, y+HCvsp, obj_block))
{
	while (!place_meeting(x, y+sign(HCvsp), obj_block))
	{
		y += sign(HCvsp);
	}
	HCvsp = 0;
	HChsp = 0;
}
y += HCvsp;