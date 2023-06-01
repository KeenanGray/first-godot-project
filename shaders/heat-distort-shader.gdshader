shader_type canvas_item;

uniform float percentage:hint_range(0.0, 1.0, 0.001);
uniform vec4 color:source_color;
uniform sampler2D image_sample;

void fragment() {
	//use texture colors
	if(texture(image_sample, UV).x < percentage)
COLOR = color;
	else
				COLOR = texture(TEXTURE,UV);
	
	
	//invert texture colors
	//COLOR = vec4(1,1,1,2)-texture(TEXTURE,UV);
}
