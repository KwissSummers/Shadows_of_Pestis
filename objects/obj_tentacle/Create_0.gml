// Inherit the parent event
event_inherited();

initialY = y;
desiredY = y - sprite_height + 2;

startRise = false;

alarm[1] = spawnNextTentacleFrames;
alarm[2] = riseWindupFrames;