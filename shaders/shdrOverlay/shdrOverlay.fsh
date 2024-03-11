//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform vec4 u_colour;	
uniform float u_mix;
uniform float u_transparency;

void main()
{
	vec4 texColor =	texture2D(gm_BaseTexture, v_vTexcoord);
	vec4 finalColor = mix(texColor, vec4(u_colour.rgb,texColor.a), u_mix);
	vec4 finalTransp = vec4(finalColor.rgb, finalColor.a * u_transparency); 
    gl_FragColor = v_vColour * finalTransp;
}