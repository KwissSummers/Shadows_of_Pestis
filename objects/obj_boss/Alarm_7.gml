/// @description slash attack

// create slash object and place it accordingly
var slashObject = instance_create_layer(x, y, "BossProjectiles", obj_enemySlash);
slashObject.image_xscale = image_xscale;
audio_play_sound(snd_enemyMelee, 1, false)
				
var offset = image_xscale * (abs(sprite_width) / 2 + abs(slashObject.sprite_width) / 2);
slashObject.x = x + offset;

// start endlag
alarm[1] = slashEndlagFrames;