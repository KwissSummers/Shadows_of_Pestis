// initial x and y for everything
xOffset = 5;
yOffset = 5;

// player hp
hp = 0;
maxHP = obj_player.startingHealth;

// player ranged attack charges
charges = 0;
maxCharges = 3;

// healthbar offset values
// they mark the first pixel where the healthbar appears and the last pixel
healthbarStart = 10;
healthbarEnd = 134;
healthbarWidth = healthbarEnd - healthbarStart;
healthbarHeight = sprite_get_height(spr_hpUI);

// charges ui offset values
chargesStart = 5;
chargesEnd = 34;
chargesWidth = chargesEnd - chargesStart;
chargesHeight = sprite_get_height(spr_chargesUI);