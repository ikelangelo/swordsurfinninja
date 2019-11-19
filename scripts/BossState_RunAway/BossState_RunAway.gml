if moveSp < 16 moveSp = 16;

x += moveSp;

hp = 80;

if place_meeting(x, y, obj_boss_stopper1)
{
	state = BOSSSTATE.PHASE1;
}

if place_meeting(x, y, obj_boss_stopper2)
{
	state = BOSSSTATE.PHASE2;
}

if place_meeting(x, y, obj_boss_stopper3)
{
	state = BOSSSTATE.PHASE3;
}