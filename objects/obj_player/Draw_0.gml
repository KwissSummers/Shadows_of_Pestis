/// @description Draws shaders
shader_set(shdrOverlay);
shader_set_uniform_f_array(_uniColor,_color);
shader_set_uniform_f(_uniMix, _mix);
shader_set_uniform_f(_uniTransparency, _transparency);
draw_self();
shader_reset();

if(invincible){
	_color = [0.7, 0.7, 0]
	_mix = 0.2
} else if(dashing){
	_color = [1, 1, 1]
	_mix = 0.3
} else {
	_mix = 0.0
	_transparency = 1.0
}