if image_xscale < 2
image_xscale += 0.02;

if image_yscale < 2
image_yscale += 0.02;

if place_meeting(x,y, obj_block)
instance_destroy();

