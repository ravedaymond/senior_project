//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

// Added Variables
uniform float pixelW;
uniform float pixelH;

void main()
{
	// Added Code
	vec2 offsetX;
	offsetX.x = pixelW;
	vec2 offsetY;
	offsetY.y = pixelH;
	
	float alpha = texture2D(gm_BaseTexture, v_vTexcoord).a;
	alpha += ceil(texture2D(gm_BaseTexture, v_vTexcoord + offsetX).a); // Check 1px Right
	alpha += ceil(texture2D(gm_BaseTexture, v_vTexcoord - offsetX).a); // Check 1px Left
	alpha += ceil(texture2D(gm_BaseTexture, v_vTexcoord + offsetY).a); // Check 1px Below
	alpha += ceil(texture2D(gm_BaseTexture, v_vTexcoord - offsetY).a); // Check 1px Above
	
	// Default Code
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	// Added Code
	gl_FragColor.a = alpha;
}
// Code based off of tutorial by: Shaun Spaulding, https://www.youtube.com/watch?v=zWrpHbc6fmc