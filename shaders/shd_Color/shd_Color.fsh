//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform int _red;
uniform int _green;
uniform int _blue;
uniform float _alpha;

void main()
{
    //gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	vec4 sprite_color = texture2D( gm_BaseTexture, v_vTexcoord );
	if(sprite_color.a != 0.0){
		gl_FragColor = vec4(_red, _green, _blue, _alpha);
	}
}
