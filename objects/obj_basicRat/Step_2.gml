// for some reason hspeed still moves the enemy when its at 0 (prolly a bug somewhere i havent found)
// so if the enemy is attacking, it just keeps it in the same spot until its done
if (startedAttacking)
	x = startingX;