// inherit the parent event
event_inherited();

// enemy faces the direction its moving in
if (hspeed != 0)
	image_xscale = sign(hspeed);
	
// if the player is within agro distance of the enemy
if (instance_exists(obj_player) && distance_to_object(obj_player) < agroDistance)
{
	// get the direction that the player is in
	var dir = sign(obj_player.x - x);

	// calculating how far the player is from the enemy
	// bounding boxes are used so its not from the origin of the enemy/player (makes more sense)
	var distanceX;
	if (dir < 0)
		distanceX = bbox_left - obj_player.bbox_right;
	else
		distanceX = obj_player.bbox_left - bbox_right;
	
	// if the player is within attack range of the enemy
	if (distanceX < projectileDistance ) 
	{
		// stop moving
		speed = 0
		
		// to make sure the enemy doesnt attack if you move out of the way, this boolean is used
		// can be disabled if we decide we want the enemy to miss slashes (still possible, just takes timing)
		attackingPlayer = true;
		
		// if the enemy hasnt started its attack yet and the slash isnt on cooldown
		if (!startedAttack && !onCooldown)
		{
			// start attacking
			alarm[1] = windUpFrames;
			startedAttack = true;
		}
	}
	// stop attacking if player moves out the way
	else
	{
		direction = point_direction(x, y, obj_player.x, obj_player.y)
		attackingPlayer = false
		speed = roamSpeed
	}
}

// pathing
else if (abs(origin - x) > distanceFromOrigin)
{
	var dir = sign(origin - x);
	speed = 0
	hspeed = roamSpeed * dir;
}


// forces mosquito to hover from the ground
var floorObject = collision_line(x, y, x, y + hoverHeight, obj_solidBlock, true, true);
if instance_exists(floorObject)
{
	// add code here
}

