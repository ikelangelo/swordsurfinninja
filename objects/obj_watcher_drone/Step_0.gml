/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if hp <= 0 
{
	repeat(4)
	{
		instance_create_layer(x+irandom_range(-240, 240), y+irandom_range(-240, 240), "Effects", obj_explosion)
	}
	
	repeat(irandom_range(4, 10))
	{
		instance_create_layer(x, y, "Instances", obj_chip);
	}
	
	var healthRNG = irandom_range(1, 100);
		if healthRNG >= 80
		{
			instance_create_layer(x, y, "Instances", obj_health_chip)
		}
	
	instance_destroy();
}

if move > 16 
move = 16;


switch(state)
{
	case ENEMYSTATE.FREE: EnemyState_Free();
	break;
	
	case ENEMYSTATE.ATTACK: EnemyState_Attack();
	break;
	
	case ENEMYSTATE.HIT: EnemyState_Hit();
	break;

	case ENEMYSTATE.IDLE: EnemyState_Idle();
	break;

}
