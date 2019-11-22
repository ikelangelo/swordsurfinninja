



if hp <= 0 
{
	/*repeat(20)
	{
		instance_create_layer(x+irandom_range(-48, 48), y+irandom_range(-48, 48), "explosions", obj_explosion)
	}
	instance_create_layer(x, y, "explosions", obj_life);*/
	instance_destroy();
}
if move > 6 
move = 6;


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