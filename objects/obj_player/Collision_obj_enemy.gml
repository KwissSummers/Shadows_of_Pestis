if (other.hasContactDamage && !invincible)
{
	horizontalSpeed = other.knockbackSpeed * sign(x - other.x);
	verticalSpeed = -other.knockbackSpeed / 2;
	
	move_and_collide(horizontalSpeed, verticalSpeed, obj_solidBlock);
	
	// make the player take damage and go into iframes
	hp -= other.contactDamage;
	invincible = true;
	
	// kill the player or end its iframes after a duration
	if (hp <= 0)
		instance_destroy();
	else
		alarm[3] = iframeDurationFrames;
}