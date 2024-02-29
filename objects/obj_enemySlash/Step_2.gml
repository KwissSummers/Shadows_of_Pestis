// code is exactly the same as the end step in obj_slash, except in respect to the enemy instead of the player
if (instance_exists(enemyInstance))
{
	var offset = image_xscale * (abs(sprite_width) / 2 + abs(enemyInstance.sprite_width) / 2);
	
	x = enemyInstance.x + offset;
	y = enemyInstance.y;
}