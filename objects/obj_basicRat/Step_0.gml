// inherit the parent event
event_inherited();

// enemy faces the direction its moving in
if (hspeed != 0)
	image_xscale = sign(hspeed);

// warning! spaghetti code ahead
// if the player is within agro range
if (instance_exists(obj_player) && distance_to_object(obj_player) < agroDistance)
{
	// if the player is in line of sight of the enemy
	var lineOfSightObject = collision_line(x, y, obj_player.x, obj_player.y, obj_solidBlock, true, true);
	if (!instance_exists(lineOfSightObject))
	{
		// if the player is within melee distance or we are already attacking
		// basically when it starts attacking, it will fully attack before resetting aim
		if (distance_to_object(obj_player) < slashDistance || framesSinceStartAttack > 0)
		{
			// on the first time running this block of code, we set the current x so we can use it in end step
			if (!startedAttacking)
				startingX = x;
				
			startedAttacking = true;
				
			// stop moving and start attacking
			hspeed = 0;
			framesSinceStartAttack++;
			
			// if we have fully winded up
			if (framesSinceStartAttack == windUpFrames)
			{
				// create slash object and place it accordingly
				slashObject = instance_create_layer(x, y, "Instances", obj_enemySlash);
				slashObject.image_xscale = image_xscale;
				slashObject.enemyInstance = instance_id;
				
				var offset = image_xscale * (abs(sprite_width) / 2 + abs(slashObject.sprite_width) / 2);
				slashObject.x = x + offset;
			}
			// if we are at the end of the endlag of the attack
			else if (framesSinceStartAttack == windUpFrames + endlagFrames)
			{
				// stop attacking
				framesSinceStartAttack = 0;
				startedAttacking = false;
				
				// look towards the player again
				// used whenever the player switches sides after the first swing
				image_xscale = sign(obj_player.x - x);
			}
		}
		// if not within melee distance, move towards player
		else
		{
			hspeed = sign(obj_player.x - x) * roamSpeed;
			
			framesSinceStartAttack = 0;
		}
	}
}
// if roaming
else
{
	// if the enemy has gone past its bounds, reverse
	if (bbox_left < bounds[0])
		hspeed = roamSpeed;
	else if (bbox_right > bounds[1])
		hspeed = -roamSpeed;
	else
	{
		// go in the direction we are facing
		hspeed = image_xscale * roamSpeed;
		
		// stop attacking
		startedAttacking = false;
		framesSinceStartAttack = 0;
	}
}