/*Chsp=lerp(Chsp, 0, .4);

if !place_meeting(x, y, obj_block)
{
	motion_set(direction, Chsp);
	
}
if Chsp = 0 && !place_meeting(x, y, obj_block)
y+=32;*/

Cvsp += grav;

//////horiz collision
if (place_meeting(x+Chsp, y, obj_block))
{
	while (!place_meeting(x+sign(Chsp), y, obj_block))
	{
		x += sign(Chsp);
	}
	Chsp = 0;
}
x += Chsp;

///////vertical collision

if (place_meeting(x, y+Cvsp, obj_block))
{
	while (!place_meeting(x, y+sign(Cvsp), obj_block))
	{
		y += sign(Cvsp);
	}
	Cvsp = 0;
	Chsp = 0;
}
y += Cvsp;





if place_meeting(x, y, obj_zapper_tile) || place_meeting(x, y, obj_plasma_tile)
{
	instance_destroy();
}



if place_meeting(x, y, obj_roboGhost)
{
	audio_play_sound(snd_chip_collect, 5, 0);
	obj_game.chips++;
	instance_destroy();
}