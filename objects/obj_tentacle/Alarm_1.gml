if (x <= room_width - 48 - sprite_width)
{
	instance_create_layer(x + sprite_width, initialY, "Instances", obj_tentacle);
}