/// @description projectile attack
// same logic as alarm 2
currentProjectileAttackNum++;

instance_create_layer(x, y, "BossProjectiles", obj_bossPlantProjectile);

if (currentProjectileAttackNum < projectileAttacks)
{
	alarm[3] = projectileAttackWindupFrames;
}
else
{
	currentProjectileAttackNum = 0;
	alarm[1] = projectileAttackEndlagFrames;
}