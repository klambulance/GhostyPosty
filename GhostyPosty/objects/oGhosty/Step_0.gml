/// @description Insert description here
// You can write your code in this editor

switch (state)
{
case ghostyState.idle:
	
	fGhostyMove();
	/*if(point_distance(x,y,mouse_x,mouse_y) < 10){
		speed = 0;	
	}else{
		speed = ghostySpeed;	
	}*/
    break;

case ghostyState.changing:
	//sprite_index = outfit;
	state = ghostyState.idle;
	break;
}



depth = -y;