// initial x and y for everything
xOffset = 5;
yOffset = 5;

// player hp
hp = 0;
maxHP = obj_boss.hp;

// healthbar offset values
// they mark the first pixel where the healthbar appears and the last pixel
healthbarStart = 20;
healthbarEnd = 269;
healthbarWidth = healthbarEnd - healthbarStart;
healthbarHeight = sprite_get_height(spr_bossHPUI);

backgroundWidth = sprite_get_width(spr_bossBackgroundUI);