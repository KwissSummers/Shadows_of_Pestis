// if landing on a surface
if (movePlayerToBBoxTop)
{
	vspeed = 0;
	
	movePlayerToBBoxTop = false;
	
	// move the player to right on the surface
	y = otherTop - sprite_height / 2;
	
	// epsilon so you dont get stuck in the ground
	while (bbox_bottom > otherTop)
		y -= 0.1;
}
// if hitting the bottom of a surface
else if (movePlayerToBBoxBottom)
{
	movePlayerToBBoxBottom = false;
	
	// move the player to right on the surface
	y = otherBottom + sprite_height / 2;
	
	// epsilon so you dont get stuck in the ceiling
	while (bbox_top > otherBottom)
		y += 0.1;
}

// bounding box variables for the next frame
prevTop = bbox_top;
prevBottom = bbox_bottom;