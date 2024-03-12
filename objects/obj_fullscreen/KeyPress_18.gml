if (keyboard_check_pressed(vk_enter))
{
	if (window_get_fullscreen())
	{
		window_set_fullscreen(false);
		show_debug_message("Full screen disabled");
		
	}
	else
	{
		window_set_fullscreen(true);
		show_debug_message("Full screen enabled");
	}
}