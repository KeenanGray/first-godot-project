shader_type canvas_item;


void fragment(){
	vec4 colour = COLOR;
	float avg = ( colour.r+colour.g+colour.b ) / 3.0;
	
	COLOR = vec4(avg,avg,avg,1);
}