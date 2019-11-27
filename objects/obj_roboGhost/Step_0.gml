//////controls and such


//input for movement

jump = keyboard_check_pressed(vk_space); 
 
move_left = keyboard_check(ord("A"));

move_right = keyboard_check(ord("D"));

duck = keyboard_check(ord("S"));

key_attack = mouse_check_button_pressed(mb_left);

sword_surf = mouse_check_button(mb_right);

switch(state)
{
	case PLAYERSTATE.FREE: PlayerState_Free();
	break;
	
	case PLAYERSTATE.ATTACK_SLASH: PlayerState_Attack_Slash();
	break;
	
	case PLAYERSTATE.ATTACK_COMBO: PlayerState_Attack_Combo();
	break;
	
	case PLAYERSTATE.ATTACK_FINISHER: PlayerState_Attack_Finisher();
	break;
	
	case PLAYERSTATE.SWORD_SURF: PlayerState_SwordSurf();
	break;



}



 

















