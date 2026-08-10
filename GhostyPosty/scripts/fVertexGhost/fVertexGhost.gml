// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fVertexGhost(_buffer, _x, _y, _width, _height, _segments){
	var vbuff = argument0;
	var xx = argument1;
	var yy = argument2;
	var width = argument3;
	var height = argument4;
	var segments = argument5;
	
	var segHeight = height/segments;
	
	for(var i = 0; i < segments; i++;){
		var base_w = lerp(width, 0, i/segments);
		var top_w = lerp(width, 0, (i+1)/segments);
		
		var base_alpha = lerp(0.9, 0.4, i/segments);
		var base_hue = lerp(115, 40, i/segments);
		var base_value = lerp(100, 255, i/segments);
		var base_colour = make_colour_hsv(base_hue,245, base_value);
		
		var top_alpha = lerp(0.9, 0.4, (i+1)/segments);
		var top_hue = lerp(115,40, (i+1)/segments);
		var top_value = lerp(100, 255, (i+1)/ segments);
		var top_colour = make_colour_hsv(top_hue, 245, top_value);
		
		var x1 = xx + (width-base_w) / 2;
		var y1 = yy - (i * segHeight);
		var x2 = x1 + base_w;
		var y2 = y1;
		var x3 = xx + (width - top_w) / 2;
		var y3 = y1 - segHeight;
		var x4 = x3 + top_w;
		var y4 = y3;
		
		var base_weight = i/segments;
		var top_weight = (i+1)/segments;
		
		vertex_position(vbuff, x1, y1);
		vertex_colour(vbuff, base_colour, base_alpha);
		vertex_float1(vbuff, base_weight);
		vertex_position(vbuff, x2, y2);
		vertex_colour(vbuff, base_colour, base_alpha);
		vertex_float1(vbuff, base_weight);
		vertex_position(vbuff, x3, y3);
		vertex_colour(vbuff, top_colour, top_alpha);
		vertex_float1(vbuff, top_weight);
		
		vertex_position(vbuff, x2, y2);
		vertex_colour(vbuff, base_colour, base_alpha);
		vertex_float1(vbuff, base_weight);
		vertex_position(vbuff, x4, y4);
		vertex_colour(vbuff, top_colour, top_alpha);
		vertex_float1(vbuff, top_weight);
		vertex_position(vbuff, x3, y3);
		vertex_colour(vbuff, top_colour, top_alpha);
		vertex_float1(vbuff, top_weight);
		
		
	}
}