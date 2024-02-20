#region player movement

// shouldnt be able to do any movement while dashing
if (!dashing)
{
	
	#region jumping and gravity

	// making sure we have gravity
	gravity = defaultGravity;

	// if the player is touching the ground
	var grounded = place_meeting(x, y + 1, obj_solidBlock);
	if (grounded)
	{
		// stop gravity from doing anything
		gravity = 0;
	
		// if we touch the ground we get all our jumps back
		jumpsRemaining = numJumps;
		
		// when we touch the ground, we arent jumping
		jumping = false;
	}
	// if we arent grounded, we were grounded the frame before, and if we arent jumping
	// basically for when the player falls off a surface
	else if (prevGrounded && !jumping)
	{
		jumpsRemaining--;
	}
	
	// grounded variable for next frame
	prevGrounded = grounded;
	
	// if we have jumps remaining then we can jump
	if (jumpsRemaining > 0)
	{
		if (keyboard_check_pressed(vk_space) || keyboard_check_pressed(ord("W")))
		{
			// jumping variable used so we dont lose our double jump
			jumping = true;
			
			// jumping speed
			vspeed = -jumpSpeed;
		
			// remove 1 from remaining jumps since we jumped
			jumpsRemaining--;
		}
	}

	#endregion

	#region horizontal movement and dashing

	var dashDir = 0;
	
	// keyboard checks
	// using an acceleration version of movement instead of position changing so it feels nicer
	if (keyboard_check(ord("A")))
	{
		horizontalSpeed -= hAccelSpeed;
		dashDir = -1;
	}
	else if (keyboard_check(ord("D")))
	{
		horizontalSpeed += hAccelSpeed;
		dashDir = 1;
	}
	// if the player isnt pressing A or D, decelerate the speed
	else
		horizontalSpeed -= sign(horizontalSpeed) * hDecelSpeed;
	
	// if the speed is low enough, just set it to 0, else it can bounce around never getting to 0 speed
	if (abs(horizontalSpeed) <= 1)
		horizontalSpeed = 0;
	
	// clamp horizontal speed to its max speed
	horizontalSpeed = clamp(horizontalSpeed, -maxSpeed, maxSpeed);
	
	// if the player decides to dash, is moving towards a direction, and isnt on cooldown
	if (keyboard_check_pressed(ord("Q")) && dashDir != 0 && !onDashCooldown)
	{
		currentDashDirection = dashDir;
		dashing = true;
		
		// go dash speed in the direction the player was moving
		horizontalSpeed = currentDashDirection * dashSpeed;
		
		alarm[0] = framesDashing; 
	}

	#endregion
}
else
{
	// if we are dashing, we dont want to move vertically until its over
	gravity = 0;
	vspeed = 0;
}

// clamp vertical speed to the max falling speed
vspeed = min(vspeed, maxFallingSpeed);

// this is an extremely useful function that was not even mentioned in the workshops
move_and_collide(horizontalSpeed, 0, obj_solidBlock);

#endregion