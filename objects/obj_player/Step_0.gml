#region jumping and gravity

// rudimentary gravity
// for some reason gravity was being very odd so i implemented it myself
verticalSpeed += defaultGravity;

// if grounded, then dont move down, and jump if wanted
if (place_meeting(x, y + 3, obj_solidBlock))
{
	// setting it to a low value so we actually touch the ground
	verticalSpeed = 0.1;
	
	if (keyboard_check(vk_space) || keyboard_check(ord("W")))
		verticalSpeed -= jumpSpeed;
}

#endregion

#region horizontal movement

// keyboard checks
// using an acceleration version of movement instead of position changing so it feels nicer
if (keyboard_check(ord("A")))
{
	horizontalSpeed -= hAccelSpeed;
}
else if (keyboard_check(ord("D")))
{
	horizontalSpeed += hAccelSpeed;
}
// if the player isnt pressing A or D, decelerate the speed
else
	horizontalSpeed -= sign(horizontalSpeed) * hDecelSpeed;

// if the speed is low enough, just set it to 0, else it can bounce around never getting to 0 speed
if (abs(horizontalSpeed) <= 0.2)
	horizontalSpeed = 0;

#endregion

// clamp the speeds to their max speeds
// especially needed for horizontal speed since its acceleration based
horizontalSpeed = clamp(horizontalSpeed, -maxSpeed, maxSpeed);
verticalSpeed = min(verticalSpeed, maxFallingSpeed);

// using 2 move and collide functions so the player can move left and right while on the ground
// also this is an extremely useful function that was not even mentioned in the workshops
move_and_collide(horizontalSpeed, 0, obj_solidBlock);
move_and_collide(0, verticalSpeed, obj_solidBlock);