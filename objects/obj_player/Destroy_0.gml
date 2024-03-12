/// @description when the player is destroyed, game over
instance_create_layer(x, y, "Instances", obj_genericTransition, {roomToTransitionTo: rm_gameOver, colorOfTransition: c_red});

instance_create_layer(x, y, "Instances", obj_deathAnim);

instance_destroy(obj_melee);