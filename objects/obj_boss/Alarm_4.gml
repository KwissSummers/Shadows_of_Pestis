/// @description spawn attack

// pick a random monster to spawn
var creature = spawnableCreatures[irandom(array_length(spawnableCreatures) - 1)];

// create the monster instance and set it's bounds to the bosses bounds
var instance = instance_create_layer(x, y, "Instances", creature, {disablePlaceOnFloor: true});
instance.bounds = bounds;

// start endlag
alarm[1] = spawnAttackEndlagFrames;