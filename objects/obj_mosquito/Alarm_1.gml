// if we are still in range after the wind up
if (attackingPlayer)
{
	// create the slash and set its properties
	var projectileObject = instance_create_layer(x, y, "Instances", obj_bloodProjectile);
	projectileObject.image_xscale = image_xscale;
	
	
	// set the cooldown
	onCooldown = true;
	startedAttack = false;
	alarm[2] = projectileCooldownFrames;
}
else
{
	// we should stop the attack if the player is outside the range
	startedAttack = false;
}