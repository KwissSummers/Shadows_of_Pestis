// credits for basic drawing code: https://www.youtube.com/watch?v=Us5GSddVedY
draw_self();

draw_set_font(fnt_menu);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(x, y, buttonText);

draw_set_halign(fa_left);
draw_set_valign(fa_top);