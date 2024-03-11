/// @description lob attack
// add one to the attack number
currentLobAttackNum++;

// create the projectile, all logic is done on that
instance_create_layer(x, y, "BossProjectiles", obj_bossBloodProjectile);

// if we can fire more projectiles
if (currentLobAttackNum < lobAttacks)
{
	alarm[2] = lobAttackWindupFrames;
}
// if we have run out, go into endlag and start going to goingtoidle state
else
{
	currentLobAttackNum = 0;
	alarm[1] = lobAttackEndlagFrames;
}