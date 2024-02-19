/// @description stop dashing
dashing = false;
horizontalSpeed = maxSpeed * currentDashDirection;
currentDashDirection = 0;

// set dash cooldown
onDashCooldown = true;
alarm[1] = dashCooldownFrames;