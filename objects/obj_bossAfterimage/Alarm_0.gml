if (instance_exists(obj_boss))
{
	// spawn another afterimage after 5 frames
	instance_create_layer(obj_boss.x, obj_boss.y, "BossProjectiles", obj_bossAfterimage);
	
	// destroy this afterimage in 5 frames
	alarm[1] = 5;
}
else
	instance_destroy();