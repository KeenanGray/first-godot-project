shader_type canvas_item;

uniform sampler2D Texture2;

uniform float tween : hint_range(0.0, 1.0, 0.001);

void fragment() {
	// Place fragment code here.
	vec4 option1 = texture(TEXTURE,UV);
	vec4 option2 = texture(Texture2,UV);
	COLOR = mix(option1,option2,tween);
}
