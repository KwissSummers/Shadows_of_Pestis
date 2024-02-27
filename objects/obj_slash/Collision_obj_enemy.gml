// if the enemy hit hasnt been hit before and its not in iframes
if (!array_contains(hitEnemies, other) && !other.invincible)
{
	array_push(hitEnemies, other);
	
	// damage enemy
	other.hp -= damage;
	
	// kill the enemy if it falls below 0hp, else put it in iframes
	if (other.hp <= 0)
		instance_destroy(other);
	else
		other.alarm[0] = other.iframeDurationFrames;
	
	// add a charge to the player per enemy hit
	if (instance_exists(obj_player) && obj_player.numCharges < 3)
		obj_player.numCharges++;
}