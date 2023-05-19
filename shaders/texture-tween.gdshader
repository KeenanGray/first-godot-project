shader_type canvas_item;

uniform sampler2D texture1;
uniform sampler2D texture2;
uniform float tween : hint_range(0.0, 1.0, 0.001);

void fragment() {
	// Place fragment code here.
	vec4 option1 = texture(texture1,UV);
	vec4 option2 = texture(texture2,UV);
	COLOR = mix(option1,option2,tween);
}
