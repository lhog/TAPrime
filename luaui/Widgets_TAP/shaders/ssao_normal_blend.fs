uniform sampler2D mapdepths;
uniform sampler2D modeldepths;
uniform sampler2D mapnormals;
uniform sampler2D modelnormals;

void main(void) {
	vec2 C0 = gl_TexCoord[0].st;
	// Take the best depth pixel
	float mapdepth = texture2D(mapdepths, C0).x;
	float modeldepth = texture2D(modeldepths, C0).x;
	gl_FragColor = mix(
		texture2D(modelnormals, C0),
		texture2D(mapnormals, C0),
		float(mapdepth < modeldepth)
	);
}