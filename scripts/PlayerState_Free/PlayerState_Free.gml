////////calculate horizontal movement

var move = move_right - move_left;
	
hsp = move * walksp;


////////---------------------------------------------------movement animation NIKO LOOK HERE----------------------------------

if (hsp != 0) 
{
	// using the image xscale function along with sign (which returns pos or neg based on the variable it reads) you can reverse the image
	image_xscale = sign(hsp);
	sprite_index = spr_CyberLynx_Move;
} 

else if duck = true 
{
	hsp = 0;
	sprite_index = spr_CyberLynx_Duck;

}
else sprite_index = spr_CyberLynx_Idle;


/////////calc vertical movement with gravity & creating terinal velocity
 
vsp += grv;

if vsp >= MAX_VSP vsp = MAX_VSP;

if !place_meeting(x, y+vsp, obj_block) sprite_index = spr_CyberLynx_Jump;

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


//////running

if keyboard_check(vk_shift)
{
	walksp = 12;
	image_speed = 2;
}	

if keyboard_check_released(vk_shift) 
{
	walksp = 6;
	image_speed = 1;
}



///////dash mechanic (set up in this way so we cant clip thru blocks)

if keyboard_check_pressed(ord("L")) && (dashcooldown < 0) && (move_right ^^ move_left == true)
{
	alarm_set(0, 6);
	
	walksp = 35;
	
	dashcooldown = 180;
	
	vsp = 0;
	
	sprite_index = spr_CyberLynx_Dash;
	
}




if keyboard_check_released(ord("L")) 
{
	walksp = 6;

}

///dash cooldown is here because otherwise theres an exploit to keep slashing and dashing forward infinitely

dashcooldown += -1;


//jump and double jump (known as AIR_JUMP so we dont have to mess with the current jump mechanic)

if (jump) && (AIR_JUMP > 0)
{
	vsp = -jumpSpeed;
	AIR_JUMP -= 1;
}
//resets air jumps to one after making contact with ground and avoiding bug where horizontal collision causes more air jumps to be available

if (place_meeting(x, y+1, obj_block)) 
{
AIR_JUMP = 1;
}

///////

if (key_attack) state = PLAYERSTATE.ATTACK_SLASH;

if (sword_surf) state = PLAYERSTATE.SWORD_SURF;