gravity_direction = 270;

// horizontal speed is an instance variable instead of using hspeed
// so we can use the move_and_collide function for horizontal movement
horizontalSpeed = 0;

jumpsRemaining = numJumps;

// dash instance variables
dashing = false;
currentDashDirection = 0;
onDashCooldown = false;

// used to see if the player fell off a platform rather than jumped off
prevGrounded = false;
jumping = false;

// used in end step, so the player moves after the collision is finished
movePlayerToBBoxTop = false;
movePlayerToBBoxBottom = false;

// previous frame bbox variables
prevTop = 0;
prevBottom = 0;

// collision bbox variables
otherTop = 0;
otherBottom = 0;