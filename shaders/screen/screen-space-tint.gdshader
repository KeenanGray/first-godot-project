shader_type canvas_item;

uniform sampler2D SCREEN_TEXTURE : hint_screen_texture;
uniform vec4 color:source_color;

void fragment(){
	vec4 colour = texture(SCREEN_TEXTURE, SCREEN_UV);
	float avg = (colour.r+colour.g+colour.b)/3.0;
	
	COLOR = vec4(avg,avg,avg,1) * color;
}