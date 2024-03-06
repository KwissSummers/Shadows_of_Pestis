// iframes variable
invincible = false;

floorY = collision_line(x, y, x, y + 1000, obj_solidBlock, true, true).bbox_top;

// set the object on the floor if we want that
if (!disablePlaceOnFloor)
{
	y = floor(floorY - sprite_height / 2) - 0.1
}

// find the left and right bounds of movement if enabled
bounds = [-1, -1];
if (setStartingRoamAreas)
{
	// finding the objects to the left and right of the enemy
	var leftObject = noone;
	var rightObject = noone;

	// finding the object depending on if the enemy will be placed on the floor
	if (disablePlaceOnFloor)
	{
		leftObject = collision_line(x, y, x - 5000, y, obj_pathMarker, true, true);
		rightObject = collision_line(x, y, x + 5000, y, obj_pathMarker, true, true);
	}
	else
	{
		leftObject = collision_line(x, floorY - 16, x - 5000, floorY - 16, obj_pathMarker, true, true);
		rightObject = collision_line(x, floorY - 16, x + 5000, floorY - 16, obj_pathMarker, true, true);
	}

	// setting the bounds
	if (instance_exists(leftObject))
	{
		bounds[0] = leftObject.bbox_right;
			
		if (leftObject.object_index == obj_pathMarker)
			instance_destroy(leftObject);
	}
	if (instance_exists(rightObject))
	{
		bounds[1] = rightObject.bbox_left;
		
		if (rightObject.object_index == obj_pathMarker)
			instance_destroy(rightObject);
	}
}

// vertical speed just in case we want gravity on this enemy
verticalSpeed = 0;