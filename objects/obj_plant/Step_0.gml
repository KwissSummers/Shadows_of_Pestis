// inherit the parent event
event_inherited();

// warning! spaghetti code ahead
// if the player is within agro range
if (instance_exists(obj_player) && distance_to_object(obj_player) < attackDistance)
{
	// if the player is in line of sight of the enemy
	var lineOfSightObject = collision_line(x, y, obj_player.x, obj_player.y, obj_solidBlock, true, true);
	if (!instance_exists(lineOfSightObject))
	{
		// shoot a projectile every (loopFrames) frames
		if (framesSinceAttack == 0)
		{
			var projectile = instance_create_layer(x, y, "Instances", obj_plantProjectile);
			projectile.image_xscale = sign(image_xscale);
		}
		
		// if we arent at the loop point, continue cooldown
		if (framesSinceAttack != loopFrames)
			framesSinceAttack++;
		// else start the loop over
		else
			framesSinceAttack = 0;
			
		// make the plant look in the direction as the player
		image_xscale = sign(obj_player.x - x);
	}
}
// stop attacking if out of range
else
{
	framesSinceAttack = 0;
}