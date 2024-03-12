/// @description Insert description here
// You can write your code in this editor
//Shader pointers
image_xscale = 0.5
image_yscale = 0.5
_uniColor = shader_get_uniform(shdrOverlay, "u_colour");
_uniMix = shader_get_uniform(shdrOverlay, "u_mix");
_uniTransparency = shader_get_uniform(shdrOverlay, "u_transparency");
_color = [1.0, 1.0, 1.0]; //RGB values for color overlay
_mix = 0.5; // Amount shader colors are mixed with model
_transparency = 0.5; //Amount of model transparency