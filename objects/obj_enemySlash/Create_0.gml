// if this slash has hit the player, we shouldnt hit them anymore
hitPlayer = false;

// if the slash is meant to disappear after a certain amount of time
if (destroyAfterTime)
	alarm[0] = destroyFrames;