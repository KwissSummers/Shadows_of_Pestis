#region player movement

// shouldnt be able to do any movement while dashing
if (!dashing)
{
	
	#region jumping and gravity

	// making sure we have gravity
	verticalSpeed += defaultGravity;

	// if the player is touching the ground
	var grounded = place_meeting(x, y + 1, obj_solidBlock);
	if (grounded)
	{
		// stop gravity from doing anything
		verticalSpeed = 0;
	
		// if we touch the ground we get all our jumps back and set frames since grounded back to 0
		jumpsRemaining = numJumps;
		framesSinceGrounded = 0;
		
		fellOffPlatform = false;
		
		// when we touch the ground, we arent jumping
		jumping = false;
	}
	// when the player falls off a surface, take away a jump
	// only ran when the player didnt jump off, is outside of coyote time, and will only
	// run once due to fellOffPlatform variable
	else if (!jumping && framesSinceGrounded > coyoteTimeFrames && !fellOffPlatform)
	{
		jumpsRemaining--;
		fellOffPlatform = true;
		
		show_debug_message("Out of coyote time");
	}
	
	// if the player isnt grounded, add one to the frames since grounded
	if (!grounded)
		framesSinceGrounded++;
	
	// if we have jumps remaining then we can jump
	if (jumpsRemaining > 0)
	{
		if (keyboard_check_pressed(vk_space) || keyboard_check_pressed(vk_up))
		{
			show_debug_message("Jump number: " + string(numJumps - jumpsRemaining + 1));
			
			// jumping variable used so we dont lose our double jump
			jumping = true;
			
			// jumping speed
			verticalSpeed = -jumpSpeed;
		
			// remove 1 from remaining jumps since we jumped
			jumpsRemaining--;
		}
	}

	#endregion

	#region horizontal movement and dashing

	var dashDir = 0;
	
	// keyboard checks
	// using an acceleration version of movement instead of position changing so it feels nicer
	if (keyboard_check(vk_left))
	{
		horizontalSpeed -= hAccelSpeed;
		dashDir = -1;
		
		image_xscale = (abs(image_xscale) * -1)
	}
	else if (keyboard_check(vk_right))
	{
		horizontalSpeed += hAccelSpeed;
		dashDir = 1;
		
		image_xscale = abs(image_xscale);
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
	if (keyboard_check_pressed(ord("Z")) && dashDir != 0 && !onDashCooldown)
	{
		dashing = true;
		
		// go dash speed in the direction the player was moving
		horizontalSpeed = dashDir * dashSpeed;
		
		alarm[0] = framesDashing; 
	}

	#endregion
}
else
{
	verticalSpeed = 0;
}

#region moving player and collision checks

// clamp vertical speed to the max falling speed
verticalSpeed = min(verticalSpeed, maxFallingSpeed);

// moving the player horizontally and checking for collisions
// also this is an extremely useful function that was not even mentioned in the workshops
var horizontalCollision = move_and_collide(horizontalSpeed, 0, obj_solidBlock);

// if we collided with a wall
if (array_length(horizontalCollision) > 0)
{
	// stop moving
	horizontalSpeed = 0;
	
	// ideally we should only ever have one collision ever, so we can just use the first
	// element in the array
	var collider = horizontalCollision[0];
	
	// checking which side we are on and setting us to be on the surface of that side
	// adding a tiny bit onto the final value so the player doesnt get stuck in the wall
	if (horizontalSpeed > 0)
		x = floor(collider.bbox_left - sprite_width / 2) - 0.1;
	else if (horizontalSpeed < 0)
		x = ceil(collider.bbox_right + sprite_height / 2) + 0.1;
}

// moving the player vertically and checking for collisions
var verticalCollision = move_and_collide(0, verticalSpeed, obj_solidBlock);

// if we collided with the floor or the ceiling
if (array_length(verticalCollision) > 0)
{
	var collider = verticalCollision[0];
	
	// if we collided with the floor
	if (verticalSpeed > 0)
	{
		verticalSpeed = 0;
	
		// move the player to right on the floor
		y = floor(collider.bbox_top - sprite_height / 2) - 0.1;
	}
	// if we collided with the ceiling
	else if (verticalSpeed < 0)
	{
		// if we collided with the ceiling going slow, we dont want to go faster after we bump it
		verticalSpeed = min(topBumpSpeed, -verticalSpeed);
		
		// move the player right on the ceiling
		y = ceil(collider.bbox_bottom + sprite_height / 2) + 0.1;
	}
}

#endregion

#endregion

#region combat

// basic slash attack
// if the button is pressed and we arent attacking already
if (keyboard_check_pressed(ord("X")) && !attacking)
{
	// create the slash and make it face the direction we are looking
	var slashObject = instance_create_layer(x, y, "Instances", obj_slash);
	slashObject.image_xscale = sign(image_xscale);
	
	// attack cooldown
	// for the cooldown, im using the time that the attack will be out plus some extra frames
	// so you can never attack while a slash is out (unless the offset is negative)
	attacking = true;
	alarm[2] = slashObject.durationFrames + slashCooldownOffsetFrames;
}

// ranged attack
// if the button is pressed, we arent attacking already, and we have 3 charges
if (keyboard_check_pressed(ord("C")) && numCharges == 3 && !attacking)
{
	// create the ranged attack in the direction we are facing
	var rangedAttackObject = instance_create_layer(x, y, "Instances", obj_rangedAttack);
	rangedAttackObject.image_xscale = sign(image_xscale);
	
	// make it so we have no charges after we attack
	numCharges = 0;
	
	// attack cooldown
	attacking = true;
	alarm[2] = rangedAttackCooldownFrames;
}

if (hp > startingHealth)
	hp = startingHealth;

#endregion