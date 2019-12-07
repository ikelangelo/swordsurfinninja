/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

if hp <= 0 
{
	repeat(6)
	{
		instance_create_layer(x+irandom_range(-240, 240), y+irandom_range(-240, 240), "Effects", obj_explosion)
	}
	repeat(irandom_range(14, 22))
	{
		instance_create_layer(x, y, "Instances", obj_chip);
	}
	obj_game.kills +=1;
	instance_destroy();
}



switch(state)
{
	case ROCKETSTATE.FREE: RocketState_Free();
	break;

	case ENEMYSTATE.HIT: RocketState_Hit();
	break;

	case ROCKETSTATE.ANGRY: RocketState_Angry();
	break;
}
