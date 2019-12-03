////////calculate horizontal movement

var move = move_right - move_left;
	
///hsp = move * walksp;




if(move_left != 0 || move_right != 0)
{
	if(hsp != walksp * move)
	{
		hsp += (accel*move);
	}

}
else
{
	if(hsp < 0)
	{
		hsp += decel;	
	}
	
		else if (hsp > 0)
	{
		hsp -= decel;	
	}
	
}



if (hsp != 0) 
{
	
	image_xscale = sign(hsp);
	sprite_index = spr_roboGhostRun;
} 

else if hsp = 0
{
	
	sprite_index = spr_roboGhostIdle;

}



/////////calc vertical movement with gravity & creating terinal velocity
 
vsp += grv;

if vsp >= MAX_VSP vsp = MAX_VSP;

if !place_meeting(x, y+vsp, obj_block) sprite_index = spr_roboGhostJump;

////////horizontal collision using hsp in the collision check helps prevent the dash from clipping through obj_block

if (place_meeting(x+hsp, y, obj_block))
{
	while (!place_meeting(x+sign(hsp), y, obj_block))
	{
		x += sign(hsp);
	}
	hsp = 0;
}
x += hsp;

///////vertical collision

if (place_meeting(x, y+vsp, obj_block))
{
	while (!place_meeting(x, y+sign(vsp), obj_block))
	{
		y += sign(vsp);
	}
	vsp = 0;
}
y += vsp;


//jump and double jump (known as AIR_JUMP so we dont have to mess with the current jump mechanic)

if (jump) && (AIR_JUMP > 0)
{
	vsp = -jumpSpeed;
	AIR_JUMP -= 1;
}
//resets air jumps to one after making contact with ground and avoiding bug where horizontal collision causes more air jumps to be available

if (place_meeting(x, y+vsp, obj_block)) 
{
AIR_JUMP = 3;
}

///////move to sword surf state

if (key_attack) state = PLAYERSTATE.ATTACK_SLASH;

if ((sword_surf) && (sword_surf_ready = true) && !(instance_exists(obj_target)) && !(place_meeting(mouse_x, mouse_y, obj_block))) 
{
	state = PLAYERSTATE.SWORD_SURF;
}





if place_meeting(x, y, obj_enemy_attack) && canGetHurt 
{
	canGetHurt = false;
	alarm[0] = 60;
	obj_game.hp--;
	instance_destroy(obj_enemy_attack.id);
}

if place_meeting(x, y, obj_rocket) && canGetHurt 
{
	
	canGetHurt = false;
	alarm[0] = 60;
	obj_game.hp--;
	instance_create_layer(x, y, "Effects", obj_explosion);
	instance_destroy(obj_rocket.id);
	
	
}

//this statement was made separate so that the sprite index would work properly

if canGetHurt == false
{
	sprite_index = spr_roboGhostHurt;
}