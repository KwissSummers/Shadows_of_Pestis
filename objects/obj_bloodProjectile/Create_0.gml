// Inherit the parent event
event_inherited();

// y = a(x - h)^2 + k
a = 0;
h = x;
k = y;

// change in x every frame
dx = 0;

if (instance_exists(obj_player))
{
	var px = obj_player.x, py = obj_player.y;

	// we love math in computer science
	a = (py - k) / sqr(px - h);
	
	// calculate the change in x
	dx = (x - px) / projectileFramesTillHit;
}
else
	instance_destroy();