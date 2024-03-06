// if we havent hit the player yet and the player isnt invincible
if (!hitPlayer && !other.invincible)
{
	hitPlayer = true;
	
	// make the player take damage and go into iframes
	other.hp -= damage;
	other.invincible = true;
	
	// kill the player or end its iframes after a duration
	if (other.hp <= 0)
		instance_destroy(other);
	else
		other.alarm[3] = other.iframeDurationFrames;
}

if (destroyOnHit)
	instance_destroy();