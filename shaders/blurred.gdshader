shader_type canvas_item;

uniform sampler2D SCREEN_TEXTURE : hint_screen_texture;
uniform float res: hint_range(0.0,100.0,1.0) = 0.0;

void fragment(){
    //vec2 pixel_size = SCREEN_PIXEL_SIZE* res;
	vec2 pixel_size = TEXTURE_PIXEL_SIZE;
	vec3 col = texture(TEXTURE, UV).xyz * 0.16;
    col += texture(TEXTURE, UV + vec2(pixel_size.x, 0.0)).xyz * 0.075;
    col += texture(TEXTURE, UV + vec2(-pixel_size.x, 0.0)).xyz * 0.075;
    col += texture(TEXTURE, UV + vec2(2.0 * pixel_size.x, 0.0)).xyz * 0.075;
    col += texture(TEXTURE, UV + vec2(2.0 * -pixel_size.x, 0.0)).xyz * 0.075;
    col += texture(TEXTURE, UV + vec2(3.0 * pixel_size.x, 0.0)).xyz * 0.075;
    col += texture(TEXTURE, UV + vec2(3.0 * -pixel_size.x, 0.0)).xyz * 0.075;
    col += texture(TEXTURE, UV + vec2(4.0 * pixel_size.x, 0.0)).xyz * 0.075;
    col += texture(TEXTURE, UV + vec2(4.0 * -pixel_size.x, 0.0)).xyz * 0.075;
	col += texture(TEXTURE, UV + vec2(0.0, pixel_size.y)).xyz * 0.075;
    col += texture(TEXTURE, UV + vec2(0.0, -pixel_size.y)).xyz * 0.075;
    col += texture(TEXTURE, UV + vec2(0.0, 2.0 * pixel_size.y)).xyz * 0.075;
    col += texture(TEXTURE, UV + vec2(0.0, 2.0 * -pixel_size.y)).xyz * 0.075;
    col += texture(TEXTURE, UV + vec2(0.0, 3.0 * pixel_size.y)).xyz * 0.075;
    col += texture(TEXTURE, UV + vec2(0.0, 3.0 * -pixel_size.y)).xyz * 0.075;
    col += texture(TEXTURE, UV + vec2(0.0, 4.0 * pixel_size.y)).xyz * 0.075;
    col += texture(TEXTURE, UV + vec2(0.0, 4.0 * -pixel_size.y)).xyz * 0.075;
    COLOR.xyz = col;
}