gravity_direction = 270;

// horizontal speed is an instance variable instead of using hspeed
// so we can use the move_and_collide function for horizontal movement
horizontalSpeed = 0;

jumpsRemaining = numJumps;

// dash instance variables
dashing = false;
currentDashDirection = 0;
onDashCooldown = false;