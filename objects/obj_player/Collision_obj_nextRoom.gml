/// @description Boss Room
instance_create_layer(x, y, "Instances", obj_genericTransition);

// so we cant do the transition multiple times
instance_destroy(other);

audio_stop_sound(snd_backgroundMusic);