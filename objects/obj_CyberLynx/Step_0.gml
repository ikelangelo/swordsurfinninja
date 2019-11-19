//////controls and such


//input for movement

jump = keyboard_check_pressed(vk_space); 
 
move_left = keyboard_check(ord("A"));

move_right = keyboard_check(ord("D"));

duck = keyboard_check(ord("S"));

key_attack = keyboard_check_pressed(ord("K"));

sword_surf = mouse_check_button_pressed(mb_right);

switch(state)
{
	case PLAYERSTATE.FREE: PlayerState_Free();
	break;
	
	case PLAYERSTATE.ATTACK_SLASH: PlayerState_Attack_Slash();
	break;
	
	case PLAYERSTATE.SWORD_SURF: PlayerState_SwordSurf();
	break;



}



 

















