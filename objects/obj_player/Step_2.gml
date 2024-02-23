if (instance_exists(slashObject))
{
	var offset = image_xscale * slashDirection * (sprite_width / 2 + slashObject.sprite_width / 2);
	
	slashObject.x = x + offset;
	slashObject.y = y;
}