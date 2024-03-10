/// @description
shader_set(shdrHit);
shader_set_uniform_f_array(_uniColor,_color);
shader_set_uniform_f(_uniMix, _mix);
draw_self();
shader_reset();