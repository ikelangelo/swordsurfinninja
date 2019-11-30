
blast_cooldown -=1;

if alarm[0] <= 0
alarm[0] = 60;

if blast_cooldown = 60 
instance_create_layer(x, y, "Rockets", obj_rocket);

if blast_cooldown = 45 
instance_create_layer(x, y, "Rockets", obj_rocket);

if blast_cooldown = 35 
instance_create_layer(x, y, "Rockets", obj_rocket);

if blast_cooldown = 20 
instance_create_layer(x, y, "Rockets", obj_rocket);

if blast_cooldown = 10 
instance_create_layer(x, y, "Rockets", obj_rocket);

