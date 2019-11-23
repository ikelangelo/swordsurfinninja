/// @description ProcessAttack(sprite_index, hitbox mask_index, damage, knockback)
/// @param {real} <sprite_index> to be used for attack
/// @param {real} <mask_index> to be used for determining attack hitbox
/// @param {number} <damage> integers plz
/// @param {number} <knockback> again with only integers
//start of attack
if (sprite_index != argument0)
{
	sprite_index = argument0;
	image_index = 0;
	ds_list_clear(hitByAttack);
}

///use attack hitbox & check for hits
mask_index = argument1;
var hitByAttackNow = ds_list_create();
var hits = instance_place_list(x, y, obj_enemy, hitByAttackNow, false);
if (hits > 0)
{
	for (var i = 0; i < hits; i++)
	{
		/// if this instance has not been hit by this attack yet
		var hitID = ds_list_find_value(hitByAttackNow, i);
		if (ds_list_find_index(hitByAttack, hitID) == -1)
		{
			ds_list_add(hitByAttack, hitID);
			with (hitID)
			{
				///this is what happens to the enemy when they are hit 
				///arg2 is damage, arg 3 is knockback
				EnemyHit(argument2, argument3);
			}
		}
	}
}
ds_list_destroy(hitByAttackNow);
mask_index = spr_roboGhostIdle;