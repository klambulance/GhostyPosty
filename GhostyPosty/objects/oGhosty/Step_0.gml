/// @description Insert description here
// You can write your code in this editor

switch (state)
{
case ghostyState.idle:
	//direction = point_direction(x,y,mouse_x,mouse_y);
		show_debug_message(string_concat("x",x, ", ", mouse_x));
		show_debug_message(string_concat("y",y, ", ",  mouse_y));
	
	if(point_distance(x,y,mouse_x,mouse_y) < 10){
		speed = 0;	
	}else{
		var xDiff = x - mouse_x;
		var yDiff = y - mouse_y;
		if(xDiff > 10 or xDiff < -10){
			if(x>mouse_x){
				xInput = -1;
			}else{
				xInput = 1;
			}
			move_and_collide(xInput*ghostySpeed, 0, parSolid);
		}
		if(yDiff > 10 or yDiff < -10){
			if(y>mouse_y){
				yInput = -1;
			}else{
				yInput = 1;
			}
			move_and_collide(0, yInput * ghostySpeed, parSolid);
		}
	}
	/*if(point_distance(x,y,mouse_x,mouse_y) < 10){
		speed = 0;	
	}else{
		speed = ghostySpeed;	
	}*/
    break;

case ghostyState.changing:
	sprite_index = outfit;
	state = ghostyState.idle;
	break;
}



depth = -y;