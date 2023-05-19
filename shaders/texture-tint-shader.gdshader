shader_type canvas_item;

uniform vec4 tint : source_color;

void fragment() {
	// Place fragment code here.
	COLOR = texture(TEXTURE,UV) * tint;
}
