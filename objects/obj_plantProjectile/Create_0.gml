// Inherit the parent event
event_inherited();

// if there isnt a player, destroy the projectile
if (instance_exists(obj_player))
{
	// go in the direction of the player, but it cant fire directly up or down
	direction = point_direction(x, y, obj_player.x, obj_player.y);
	if (direction >= 90)
		direction = clamp(direction, 120, 240);
	else
		direction = clamp(direction, -60, 60);
	
	// make the projectile move
	speed = fireSpeed;
}
else
	instance_destroy();