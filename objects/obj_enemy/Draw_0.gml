shader_set(shdrOverlay);
shader_set_uniform_f_array(_uniColor,_color);
shader_set_uniform_f(_uniMix, _mix);
shader_set_uniform_f(_uniTransparency, _transparency);
draw_self();
shader_reset();

if(invincible){
	_color = [0.7, 0.7, 0]
	_mix = 0.2
} else {
	_mix = 0.0
	_transparency = 1.0
}