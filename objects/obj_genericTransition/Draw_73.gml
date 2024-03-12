var newAlpha = frameCount / framesToTransition;

// fading in
if (newAlpha < 1)
	draw_set_alpha(newAlpha);
// room transition while everything is obscured
else if (newAlpha == 1)
{
	draw_set_alpha(1);
	room_goto(roomToTransitionTo);
}
// fade out
else if (newAlpha < 2)
	draw_set_alpha(2 - newAlpha);
// finish transition
else
{
	draw_set_alpha(0);
	instance_destroy();
}

// draw a rectangle over the whole room
draw_set_color(colorOfTransition);
draw_rectangle(0, 0, room_width, room_height, false);

// for anything else being rendered
draw_set_alpha(1);

frameCount++;