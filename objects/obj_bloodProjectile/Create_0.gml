// Inherit the parent event
event_inherited();

// y = ax^2 + bx + c
// gravity is positive since y is down
a = projectileGravity;
b = 0;
c = 0;

// change in x every frame
dx = 0;

if (instance_exists(obj_player))
{
	var px = obj_player.x, py = obj_player.y;

	// we love math in computer science
	b = ((y - py) - a * (x * x - px * px)) / (x - px);
	c = y - a * x * x - b * x;
	
	// calculate the change in x
	dx = (x - px) / projectileFramesTillHit;
}
else
	instance_destroy();