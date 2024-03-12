/// @description stop dashing
dashing = false;
horizontalSpeed = maxSpeed * image_xscale;

// set dash cooldown
onDashCooldown = true;
alarm[1] = dashCooldownFrames;

instance_destroy(obj_dashTrail);