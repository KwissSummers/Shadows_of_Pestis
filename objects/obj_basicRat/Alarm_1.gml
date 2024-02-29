// if we are still in range after the wind up
if (attackingPlayer)
{
	// create the slash and set its properties
	var slashObject = instance_create_layer(x, y, "Instances", obj_enemySlash);
	slashObject.image_xscale = image_xscale;
	slashObject.enemyInstance = object_index;
	
	// set the cooldown
	onCooldown = true;
	startedAttack = false;
	alarm[2] = slashCooldownFrames;
}
else
{
	// we should stop the attack if the player is outside the range
	startedAttack = false;
}