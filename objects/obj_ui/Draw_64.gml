// get the players hp
if (instance_exists(obj_player))
{
	hp = obj_player.hp;
	charges = obj_player.numCharges;
}


// draw the background
draw_sprite(spr_backgroundUI, -1, xOffset, yOffset);

// draw the healthbar, but only part of it (depending on if the player's hp)
draw_sprite_part(spr_hpUI, -1, healthbarStart, 0, healthbarWidth * (hp / maxHP), healthbarHeight, xOffset + healthbarStart, yOffset);

// draw the healthbar, but only part of it (depending on if the player's hp)
draw_sprite_part(spr_chargesUI, -1, chargesStart, 0, chargesWidth * (charges / maxCharges), chargesHeight, xOffset + chargesStart, yOffset + healthbarHeight);