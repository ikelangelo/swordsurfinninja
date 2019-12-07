




//time variable countdown and room change and slowdown at end of level
time--;
if time <= 0 
{
	room_speed -=1
	if room_speed <= 5
	{
		room_goto_next();
	}

}




//limiting health max
if hp > MaxHp 
{
	hp = MaxHp;
}
///exchange chips for swordsurf
if (chips >= 30) 
{
	if obj_roboGhost.sword_surf_ready == false
	{
		obj_roboGhost.sword_surf_ready = true;
		chips-=30;
	}
}

///upon death do this, reset to initial room position, all chips gone, lose life
if hp <= 0
{
	hp = MaxHp;
	robolives -=1;
	obj_roboGhost.x = obj_roboGhost.xstart;
	obj_roboGhost.y = obj_roboGhost.ystart;
	obj_roboGhost.sword_surf_ready = true;
	chips = 0;
}
///game over sequence
if robolives < 1
{
	repeat(10)
	instance_create_layer(obj_roboGhost.x+irandom_range(-240, 240), obj_roboGhost.y+irandom_range(-240, 240), "Effects", obj_explosion);
	room_goto(rm_game_over);
}