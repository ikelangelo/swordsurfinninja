time--;

if hp > MaxHp 
{
	hp = MaxHp;
}

if hp <= 0
{
	hp = MaxHp;
	robolives -=1;
	
	
}