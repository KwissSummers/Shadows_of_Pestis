// inherit the parent event
event_inherited();

if (instance_exists(obj_player) && distance_to_object(obj_player) < agroDistance)
{
	var dir = sign(obj_player.x - x);
	
	hspeed = roamSpeed * dir;
	
	var distanceX;
	if (dir < 0)
		distanceX = bbox_left - obj_player.bbox_right;
	else
		distanceX = obj_player.bbox_left - bbox_right;
	
	if (distanceX < slashDistance)
		hspeed = 0;
}
else if (abs(origin - x) > distanceFromOrigin)
{
	var dir = sign(origin - x);
	
	hspeed = roamSpeed * dir;
}