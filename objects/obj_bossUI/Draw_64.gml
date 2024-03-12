// get the players hp
if (instance_exists(obj_boss))
{
	hp = obj_boss.hp;
}


// draw the background
draw_sprite(spr_bossBackgroundUI, -1, room_width - xOffset - backgroundWidth, yOffset);

// draw the healthbar, but only part of it (depending on if the player's hp)
var left = healthbarStart + healthbarWidth * (1 - hp / maxHP);
draw_sprite_part(spr_bossHPUI, -1, left, 0, healthbarWidth * (hp / maxHP), healthbarHeight, room_width - xOffset - healthbarWidth - healthbarStart, yOffset);