time--;

if hp > MaxHp 
{
	hp = MaxHp;
}

if (chips >= 30) 
{
	if obj_roboGhost.sword_surf_ready == false
	{
		obj_roboGhost.sword_surf_ready = true;
		chips = 0;
	}
}

if hp <= 0
{
	hp = MaxHp;
	robolives -=1;
	obj_roboGhost.x = obj_roboGhost.xstart;
	obj_roboGhost.y = obj_roboGhost.ystart;
	obj_roboGhost.sword_surf_ready = true;
}