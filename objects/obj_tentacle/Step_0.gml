if (y > desiredY)
{
	y -= (initialY - desiredY) / riseFrames;
}

if (y <= desiredY)
{
	y = desiredY;
}