// Inherit the parent event
event_inherited();

// if there isnt a player, destroy the projectile
if (instance_exists(obj_player))
{
	// go in the direction of the player
	direction = point_direction(x, y, obj_player.x, obj_player.y);
	
	// make the projectile move
	speed = fireSpeed;
}
else
	instance_destroy();
	
image_xscale = 2;
image_yscale = 2;