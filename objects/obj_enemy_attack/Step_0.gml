image_xscale += 0.05;
image_yscale += 0.05;
if place_meeting(x, y, obj_CyberLynx)
{
	obj_controller.life += -10;
	instance_destroy();

}
