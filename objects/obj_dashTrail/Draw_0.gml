/// @description Insert description here
// You can write your code in this editor
shader_set(shdrOverlay);
shader_set_uniform_f_array(_uniColor,_color);
shader_set_uniform_f(_uniMix, _mix);
shader_set_uniform_f(_uniTransparency, _transparency);
draw_self();
shader_reset();