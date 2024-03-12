/// @description tentacle attack
var spriteWidth = sprite_get_width(spr_bossTent);
var spriteHeight = sprite_get_height(spr_bossTent);

instance_create_layer(64 + spriteWidth, floorY - spriteHeight / 2 + spriteHeight, "Instances", obj_tentacle);

obj_warning.visible = false;

alarm[1] = tentacleEndlagFrames;