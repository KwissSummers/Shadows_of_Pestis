// iframes variable
invincible = false;

// set the object on the floor if we want that
if (!disablePlaceOnFloor)
{
	var floorObject = collision_line(x, y, x, y + 1000, obj_solidBlock, true, true);
	y = floor(floorObject.bbox_top - sprite_height / 2) - 0.1
}