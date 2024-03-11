/// @description return to idle
// stop attacking and start going into idle phase
attackState = AttackStates.GoingToIdle;
attacking = false;

// reset attack booleans
startMovingSpawnAttack = false;
startMovingDashAttack = false;
startMovingSlashAttack = false;

// starting x and y position for the goingtoidle state
beforeMoveLerpX = x;
beforeMoveLerpY = y;