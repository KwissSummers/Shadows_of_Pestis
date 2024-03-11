// if the boss still exists and its dashing
if (instance_exists(obj_boss) && obj_boss.startedDashing)
{
	// go very transparent and match the bosses direction
	image_alpha = 0.075;
	image_xscale = obj_boss.image_xscale;
	
	// spawn another in 5 frames
	alarm[0] = 5;
}
else
	instance_destroy();