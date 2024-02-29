// debug message for the enemys hp since there isnt any UI for it yet
// show_debug_message(string(object_get_name(object_index)) + " hp: " + string(hp));

// if the gravity is enabled on this enemy, calculate the gravity and move the enemy
// note: this works the exact same way as the player, just without horizontal and ceiling checks
if (gravityEnabled)
{
	verticalSpeed += defaultGravity;
	
	var colliderArray = move_and_collide(0, verticalSpeed, obj_solidBlock);
	if (array_length(colliderArray) > 0)
	{
		var collider = colliderArray[0];
		
		verticalSpeed = 0;
		
		y = floor(collider.bbox_top - sprite_height / 2) - 0.1;
	}
}