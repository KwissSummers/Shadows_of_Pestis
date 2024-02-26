if (instance_exists(obj_player))
{
	// offset is the exact distance that the attack should be from the player
	// absolute value is used for the sprite widths because they (for some reason)
	// go negative when the xscale is negative
	var offset = image_xscale * (abs(sprite_width) / 2 + abs(obj_player.sprite_width) / 2);
	
	// changing the location according to the offset
	x = obj_player.x + offset;
	y = obj_player.y;
}