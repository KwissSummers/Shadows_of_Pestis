/// @description Boss Room
instance_create_layer(x, y, "Effects", obj_genericTransition);

// so we cant do the transition multiple times
instance_destroy(other);