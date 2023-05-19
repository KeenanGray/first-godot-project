shader_type canvas_item;

uniform float lerp;

void fragment() {
	//use texture colors
	COLOR = texture(TEXTURE,UV);
	//invert texture colors
	//COLOR = vec4(1,1,1,2)-texture(TEXTURE,UV);
}
