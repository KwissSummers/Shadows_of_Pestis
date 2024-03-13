// iframes variable
invincible = false;

floorY = 0;

// this is awful but without it, it goes through floating platforms
for (var i = 0; i <= 1000; i += 50)
{
	var floorObject = collision_line(x, y, x, y + i, obj_solidBlock, true, true);
	if (instance_exists(floorObject))
	{
		floorY = floorObject.bbox_top;
		break;
	}
}

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

// shader pointers
_uniColor = shader_get_uniform(shdrOverlay, "u_colour");
_uniMix = shader_get_uniform(shdrOverlay, "u_mix");
_uniTransparency = shader_get_uniform(shdrOverlay, "u_transparency");
_color = [1.0, 1.0, 1.0]; //RGB values for color overlay
_mix = 0.0; // Amount shader colors are mixed with model
_transparency = 1.0; //Amount of model transparency