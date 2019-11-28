/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if hp <= 0 
{
	repeat(10)
	{
		instance_create_layer(x+irandom_range(-300, 300), y+irandom_range(-300, 300), "Effects", obj_explosion)
	}
	//instance_create_layer(x, y, "explosions", obj_life);
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
