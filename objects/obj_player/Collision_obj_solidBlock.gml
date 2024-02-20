// collider bbox variables
otherTop = other.bbox_top;
otherBottom = other.bbox_bottom;

// if landing on a surface
if (vspeed > 0 && prevBottom <= otherTop)
{
	vspeed = 0;
	
	movePlayerToBBoxTop = true;
}
// if hitting the top of a surface
else if (vspeed < 0 && prevTop > otherBottom)
{
	// if you arent going very fast, you dont wanna start going faster if u bump ur head
	vspeed = min(topBumpSpeed, -vspeed);
	
	movePlayerToBBoxBottom = true;
}