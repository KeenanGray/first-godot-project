shader_type canvas_item;

uniform sampler2D texture1: repeat_enable;
uniform float tiling : hint_range(0.0, 10.0, 0.01);

void fragment() {
	// Place fragment code here.
	vec4 option1 = texture(texture1,UV*tiling);
	COLOR = option1;
}
