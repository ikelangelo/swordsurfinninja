///movement and speed variables
hsp = 0;
vsp = 0; 
grv = 1.8;
walksp = 24;
accel = 1;
decel =  1;


///jumping variables
MAX_VSP = 35; 
jumpSpeed = 40;
AIR_JUMP = 3;
sword_surf_ready = true;


///misc state things
state = PLAYERSTATE.FREE;
hitByAttack = ds_list_create();
canGetHurt = true;

///hp and such
hp = 10;

enum PLAYERSTATE
{
FREE,
ATTACK_SLASH,
ATTACK_COMBO,
ATTACK_FINISHER,
SWORD_SURF,





}	