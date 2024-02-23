// instead of using hspeed, vspeed, and gamemakers subpar collision event system,
// im manually setting the speed and moving the character using move_and_collide
horizontalSpeed = 0;
verticalSpeed = 0;
moveDirection = 0;

// start the player off with the max amount of jumps (will probably change later)
jumpsRemaining = numJumps;

// dash instance variables
dashing = false;
currentDashDirection = 0;
onDashCooldown = false;

// used to see if the player fell off a platform rather than jumped off
fellOffPlatform = false;
jumping = false;

// coyote time is used so the player can still jump a few frames after falling off a ledge
// just used so it doesnt feel unfair when the player tries to jump and it doesnt work
framesSinceGrounded = 0;

slashObject = noone;
slashDirection = 0;