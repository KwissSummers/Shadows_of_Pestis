// Inherit the parent event
event_inherited();

randomize();

audio_stop_sound(snd_backgroundMusic);
audio_play_sound(snd_bossMusic, 1, true);

startingHP = hp;

nextAttackFrameCount = 0;
nextAttackFrames = irandom_range(nextAttackLowerFrames, nextAttackUpperFrames);

floorHeight = collision_line(x, y, x, y + 2000, obj_solidBlock, true, true).bbox_top;

boundsHorizontalCenter = (bounds[0] + bounds[1]) / 2;
boundsHorizontalDeviation = (bounds[1] - bounds[0]) / 2;

originalHeight = y;

beforeMoveLerpX = -1;
beforeMoveLerpY = -1;

returnToIdleFrameCount = 0;

startMovingSpawnAttack = false;
moveToSpawnAreaFrameCount = 0;

dashFromLeft = false;
chosenDashSide = -1;
startMovingDashAttack = false;
startedDashing = false;
dashMoveFrameCount = 0;
dashdx = (bounds[1] - bounds[0]) / framesPerDash;

startMovingSlashAttack = false;
sideOfPlayer = 0;
slashMoveXFrameCount = 0;
slashMoveYFrameCount = 0;

spawnableCreatures = [obj_basicRat, obj_dashRat, obj_fly, obj_mosquito];

enum AttackStates 
{
	Idle,
	GoingToIdle,
	Lob,
	Slash,
	Projectile,
	Spawn,
	Dash,
	Tentacle
}
attackState = AttackStates.Idle;

currentLobAttackNum = 0;
currentProjectileAttackNum = 0;

attacking = false;