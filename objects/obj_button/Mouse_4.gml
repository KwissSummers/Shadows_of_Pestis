// shorten mouse pos variables
var mx = mouse_x;
var my = mouse_y;

// booleans checking if the mouse is inside the bounding box of the button
var insideButtonX = (mx <= bbox_right) && (mx >= bbox_left);
var insideButtonY = (my <= bbox_bottom) && (my >= bbox_top);

// if clicking the button
if (insideButtonX && insideButtonY && clickable)
{
	// activate the button event (just alarm 0 for now)
	event_perform(ev_alarm, 0);
}