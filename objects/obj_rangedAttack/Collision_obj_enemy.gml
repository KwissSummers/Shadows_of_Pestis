// if the enemy hit hasnt been hit before and its not in iframes
if (!other.invincible)
{
	// damage enemy
	other.hp -= damage;
	other.invincible = true;
	
	// kill the enemy if it falls below 0hp, else put it in iframes
	if (other.hp <= 0)
		instance_destroy(other);
	else
		other.alarm[0] = other.iframeDurationFrames;
}

instance_destroy();