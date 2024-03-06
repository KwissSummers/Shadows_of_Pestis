// Inherit the parent event
event_inherited();

// enemy faces the direction its moving in
if (hspeed != 0)
	image_xscale = sign(hspeed);

// if the player is within agro range
if (instance_exists(obj_player) && distance_to_object(obj_player) < agroDistance)
{
	// if the player is in line of sight of the enemy
	var lineOfSightObject = collision_line(x, y, obj_player.x, obj_player.y, obj_solidBlock, true, true);
	if (!instance_exists(lineOfSightObject))
	{
		// go towards the player
		direction = point_direction(x, y, obj_player.x, obj_player.y);
		speed = roamSpeed;
	}
}
// else stop moving
else
{
	speed = 0;
}