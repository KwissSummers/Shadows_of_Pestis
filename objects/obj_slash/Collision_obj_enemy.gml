// if the enemy hit hasnt been hit before and its not in iframes
if (!array_contains(hitEnemies, other) && !other.invincible)
{
	array_push(hitEnemies, other);
	
	// make the enemy take damage and put it in iframes
	other.hp -= damage;
	other.alarm[0] = other.iframeDurationFrames;
	
	// add a charge to the player per enemy hit
	if (instance_exists(obj_player) && obj_player.numCharges < 3)
		obj_player.numCharges++;
}