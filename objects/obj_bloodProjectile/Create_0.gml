/// @description Insert description here
// You can write your code in this editor

// moves towards the player
direction = point_direction(x, y, obj_player.x, obj_player.y)
speed = projectileSpeed

// if this projectile has hit the player, we shouldnt hit them anymore
hitPlayer = false;

