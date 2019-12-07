/// @description make rocket drones


if place_empty(x, y, obj_block)
instance_create_layer(random_range(250, 7300), random_range(500, 3100), "Instances", obj_rocket_drone);
